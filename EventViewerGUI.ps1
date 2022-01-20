
<#
        .DESCRIPTION
            Grabs events from Windows Event viewer and organizes them into lists of unique events and number of times event occurred to make troubleshooting easier.
			Includes a GUI.
        .NOTES
            Author: Matt Schaeffer
            v .1 - in progress
        .LINK
            https://github.com/Synoptek-ServiceEnablement/PowershellToolbox/tree/main/EventViewerGUI
        .PARAMETERS
            This app uses no external parameters and runs as a standalone application with GUI

		Note that to add new menu items, some steps have to be followed (will likely move this to better documentation later with step-by-steps)
		1) Create a new menu in the $mnuMainEvents if it's a new class of searches (like a new app or group of events that are related)
		   Use the naming format "$mnuMenuSubmenuSubsubmenu".  You can take an existing one and duplicate it, but make sure you duplicate
		   everything from the control creation, definition
			a) Create an event for mouse click named $mnuName_click The event itself will be created when you duplicate an item from 
				step 1 properly, but you'll need to create the variable for the code that it runs.  Copy one of the other menu items 
				and modify the hashtable entries and assign one log to one number.  This is done because some event numbers exist in 
				multiple logs, so the menu ID specific searches just checks one log at a time so it doesn't get false values  These 
				numbers are used later for defining which log an event id belongs to.  The only two things you should need to change
				are the hashtable (if using different logs), and the name of the array containing the submenu events.
		2) To add submenus to a menu item, do the same steps as in step 1, and copy and existing one and follow the naming convention
			The one place that naming conventions change for the submenus is that they are all named after the parent, but have "id#"
			appended where # is what number item they are on the list, starting from 0
			a) Add a "$mnuFullName_click" event and make sure you copy an existing and rename variables to match your new menu.
				This scriptblock just changes the .checked value from $true to $false, or back.  The .checked value is what is what is
				checked to make sure we want to search that eventid
			b) All new submenus need to be added to the parent control array in the $form_load section.  It's just an array that each of 
				the submenus is added to in order to allow the script to easily loop through menus.  If it's a new menu item, create a new
				array following the same naming convention of "$mnuMenuSubmenu..ids" (same name as the menus they contain, but without a number at the end)
			c) In the submenu control, add the events that need to be searched.  This will be done in the form of #:event#,event# where the
				number before the ":" is the number representing the eventlog in the hashtable from step 1.  If you are adding a new event
				that isn't listed in the parent menu's hashtable, just add another hash and increment the number and add the new log name
				If you need to pull from multiple logs for the same submenu item, use a pipe ("|") between to separate the values.
				Example: If we wanted to pull event 2834 and 2835 from the Application log, and event 23, 583, and 1123 from the System log,
				Our $EventLogList hastable should have 1=Application, 2=System, and then the submenu .tag would be 1:2834,2335|2:23,583,1123
				It might be overly complex, but I wrote it, and you didn't, so you are stuck with it unless you want to rewrite the code. :)
				I did it with the idea of being able to expand this.  Maybe in the future I'll add some functionality to do all this in code.   Maybe.
        
    #>

	#This script requires it to be run as admin to access all logs.  This section checks for admin and reruns the script as admin if it's not.
#todo Remove this comments when ready for production
<# Commented out while working on it, but will add in when finished
	function Test-Admin {
		$currentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
		$currentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
	}
	
	if ((Test-Admin) -eq $false)  {
		if ($elevated) {
			# tried to elevate, did not work, aborting
		} else {
			Start-Process powershell.exe -Verb RunAs -ArgumentList ('-noprofile -noexit -file "{0}" -elevated' -f ($myinvocation.MyCommand.Definition))
		}
		exit
	}
	#>

##########################################
## Variables and classes
##########################################

#$script:EventsList = @()					#The master list of the events collected before filtering
$SortedEventsDatatable = New-Object System.Data.DataTable     # The master list after being filtered to unique IDs or Messages
# todo remove this line if not needed : $script:CheckValues = 2,3
$Levels = @('Placeholder-0','Critical','Error', 'Warning', 'Information', 'Verbose')   #Used to convert the level number to the expected word value
[System.Collections.ArrayList]$EventFilters = @()
[hashtable]$EventFilter = @{Logname='System','Application'               # The event filter used to get the event logs
	Level=2,3
	StartTime= (get-date).AddDays(-1)
	EndTime= (get-date)
}
$Eventfilters += $EventFilter
											# An array containing all menu items under "Event Classes" used to loop through controls for import/export/etc



##########################################
## Form event variables
##########################################

$btnGetEvents_click = {
	
	Update-EventFilter
	$MyEvents = Get-EventsList
	
	if ($MyEvents)
	{
		$SortedEvents = Group-EventsUnique $MyEvents
		Update-DataTable $SortedEvents
	}
}

$btnConnectRemote_click = {
	write-host "To be created"
}



$dgvEvents_CellClick = {
	$txtEventMessages.Text = $dgvEvents.SelectedRows.cells[6].value
}



$form_load = {
	# Load a list of the event logs into control
	$EventLogs = Get-EventLog -List | select-object -property @{Name = 'Scan'; Expression = {if (($_.log -eq 'Application') -or ($_.log -eq 'System')){$true}else{$false}}},@{name = 'Entries'; expression = {if ($null -ne $_.Entries.count){$_.Entries.count}else{0}}},Log
	$script:LogListTable = ConvertTo-DataTable -InputObject $eventlogs
	$dgvLogsList.datasource = $script:LogListTable
	$dgvLogsList.Columns[0].AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
	$dgvLogsList.Columns[1].AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
	$dgvLogsList.Columns[2].AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
	

	# Set calendar controls
	$dtpkstartdate.MinDate = ([datetime]::today).AddDays(-90)
	$dtpkstartdate.MaxDate = [datetime]::today
	$dtpkstartdate.value = ([datetime]::today).AddDays(-1)
	$dtpkenddate.MinDate = ([datetime]::today).AddDays(-90)
	$dtpkenddate.MaxDate = [datetime]::today
	$dtpkenddate.value = [datetime]::today
	$dtpkStartTime.Value  = [datetime]::Now
	$dtpkEndTime.Value  = [datetime]::Now

	# Load Controls into an array
	$script:mnuEventClassesAppsIds = ($mnuEventClassesAppsIds0,$mnuEventClassesAppsIds1)
}



$mnuEventClasses_click = {
	#close the dropdown so it isn't in the way
	$mnuEventClasses.HideDropDown()
	Get-EventClassList $this
}


$MnuFileAppend_click = {
	$MnuFileAppend.checked = $true
	$mnuFileOverwrite.checked = $false
}

$mnuFileExport_click = {
	
	# Make sure there are results before trying to save them.
	if (!$dgvEvents.RowCount -gt 0)
	{
		[System.Windows.forms.MessageBox]::Show("No results to save.  Click on Get Events button to get a collection first", 'WARNING')
		
	}
	else{
		#pulls up a save dialog box for where to save the event log dump
		$OpenFileDialog = New-Object System.Windows.Forms.SaveFileDialog
		$OpenFileDialog.initialDirectory = "C:\Support"
		$OpenFileDialog.filter = "Text (*.txt)| *.txt|CSV (*.csv)|*.csv"
		$OpenFileDialog.ShowDialog() |  Out-Null
		$SaveFile = $OpenFileDialog.filename
		Export-Events $SaveFile
	}
}

$mnuFileLoad_click = {

	#Create load file dialog box and prompt user for save file
	$OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
	$OpenFileDialog.initialDirectory = $PSScriptRoot
	$OpenFileDialog.filter = "XML (*.xml)| *.xml|JSON (*.json)|*.json"
	$openfiledialog.ShowHelp = $true
	$OpenFileDialog.ShowDialog() |  Out-Null
	$LoadFile = $OpenFileDialog.filename
	
	# Check if .JSON or .xml and import appropriately
	if ($Loadfile -match ".xml")
	{
		$MenuObject = Import-Clixml -Path $Loadfile
	}
	elseif ($Loadfile -match ".json")
	{
		
	}

	Reset-Menu
	#foreach ($item in $MenuObject){
		Import-EventClassesMenu $MenuObject
	#}
}

$mnuFileOverwrite_click = {
	$mnuFileOverwrite.checked = $true
	$MnuFileAppend.checked = $false
}

$mnuFileSaveSettings_click = {

	$MenuSettings = get-MenuEvents

	$OpenFileDialog = New-Object System.Windows.Forms.SaveFileDialog
	$OpenFileDialog.initialDirectory = $PSScriptRoot
	$OpenFileDialog.filter = "JSON (*.JSON)| *.JSON|XML (*.xml)|*.xml"
	$openfiledialog.ShowHelp
	$OpenFileDialog.ShowDialog() |  Out-Null
	$SaveFile = $OpenFileDialog.filename
	
	if ($savefile -match "json")
	{
		$MenuJSON = ConvertTo-Json -InputObject $MenuSettings -depth 3 
		$MenuJSON > $savefile
		[System.Windows.forms.MessageBox]::Show("JSON File has been exported")
	}
	elseif ($savefile -match "xml")
	{
		$MenuSettings | export-clixml $savefile -Depth 4
		[System.Windows.forms.MessageBox]::Show("XML File has been exported")
	}
}

$mnuHelpHelp_click = {
	[System.Windows.forms.MessageBox]::Show("Help?  You think you get help with this program?  You're lucky I even wrote it.  Hahahah!`r`nJust kidding.  This is a placeholder.  If you need help or find a bug, reach out to Matt Schaeffer")
}

$mnuHelpAbout_click = {
	[System.Windows.forms.MessageBox]::Show("Event Viewer Helper`r`nAuthor: Matt Schaeffer`r`nVersion: 1.0 Preview`r`n2022")
}


$rbUnique_checkedchanged = {
	
	$SortedEvents = Group-EventsUnique $script:EventsList
	Update-DataTable $SortedEvents
}

function Show-ToolTip {
    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $true, Position = 0)]
        [System.Windows.Forms.Control]$control,
        [string]$text = $null,
        [int]$duration = 1000
    )
    if ([string]::IsNullOrWhiteSpace($text)) { $text = $control.Tag }
    $pos = [System.Drawing.Point]::new($control.Right, $control.Top)
    $obj_tt.Show($text,$form, $pos, $duration)
}

##########################################
## Functions
##########################################

function write-stupidstuff{
	#The sole function of this function is to put event handler variables somewhere so Visual Studio Code quites complaining that
	#they aren't being used when they area.  Nothing links to or uses this function

	$btnConnectRemote_click
	$btnConnectRemote_click
	$btnExportData_click
	$btnGetEvents_click
	$btnSelectPath_click
	$chkbxSelectTD_checkedchanged
	$dgvEvents_CellClick
	$dgvEventsHeader_click
	$dgvEventsHeader_doubleclick
	$form_load
	$mnuEventClasses_click
	$MnuFileAppend_click
	$mnuFileExport_click
	$mnuFileLoad_click
	$mnuFileOverwrite_click
	$mnuFileSaveSettings_click
	$mnuHelpAbout_click
	$mnuHelpHelp_click
	$mnuWindowsUpdates
	$mnuWindowsUpdates_click
	$rbUnique_checkedchanged
	
}

function ConvertTo-DataTable
{
	<#
		.SYNOPSIS
			Converts objects into a DataTable for use with DataGridView controls
	
		.DESCRIPTION
			Converts objects into a DataTable, which are used for DataBinding.
	
		.PARAMETER  InputObject
			The input to convert into a DataTable.
	
		.PARAMETER  Table
			The DataTable you wish to load the input into.
	
		.PARAMETER RetainColumns
			This switch tells the function to keep the DataTable's existing columns.
		
		.PARAMETER FilterWMIProperties
			This switch removes WMI properties that start with an underline.
	
		.EXAMPLE
			$DataTable = ConvertTo-DataTable -InputObject (Get-Process)
	#>
	[OutputType([System.Data.DataTable])]
	param(
	[ValidateNotNull()]
	$InputObject, 
	[ValidateNotNull()]
	[System.Data.DataTable]$Table,
	[switch]$RetainColumns,
	[switch]$FilterWMIProperties)
	
	if($null -eq $Table)
	{
		$Table = New-Object System.Data.DataTable
	}

	if($InputObject-is [System.Data.DataTable])
	{
		$Table = $InputObject
	}
	else
	{
		if(-not $RetainColumns -or $Table.Columns.Count -eq 0)
		{
			#Clear out the Table Contents
			$Table.Clear()

			if($null -eq $InputObject){ return } #Empty Data
			
			$object = $null
			#find the first non null value
			foreach($item in $InputObject)
			{
				if($null -ne $item)
				{
					$object = $item
					break	
				}
			}

			if($null -eq $object) { return } #All null then empty
			
			#Get all the properties in order to create the columns
			foreach ($prop in $object.PSObject.Get_Properties())
			{
				if(-not $FilterWMIProperties -or -not $prop.Name.StartsWith('__'))#filter out WMI properties
				{
					#Get the type from the Definition string
					$type = $null
					
					if($null -ne $prop.Value)
					{
						try{ $type = $prop.Value.GetType() } catch {}
					}

					if($null -ne $type) # -and [System.Type]::GetTypeCode($type) -ne 'Object')
					{
		      			[void]$table.Columns.Add($prop.Name, $type) 
					}
					else #Type info not found
					{ 
						[void]$table.Columns.Add($prop.Name) 	
					}
				}
		    }
			
			if($object -is [System.Data.DataRow])
			{
				foreach($item in $InputObject)
				{	
					$Table.Rows.Add($item)
				}
				return  @(,$Table)
			}
		}
		else
		{
			$Table.Rows.Clear()	
		}
		
		foreach($item in $InputObject)
		{		
			$row = $table.NewRow()
			
			if($item)
			{
				foreach ($prop in $item.PSObject.Get_Properties())
				{
					if($table.Columns.Contains($prop.Name))
					{
						$row.Item($prop.Name) = $prop.Value
					}
				}
			}
			[void]$table.Rows.Add($row)
		}
	}

	return @(,$Table)	
}

function Export-Events{
	param(
		[ValidateNotNull()]
			[string]$SaveFile 
		)
	
	#exports the events to .txt or .csv
	if ($SaveFile -match ".txt")
	{
		if ($mnuFileAppend.checked -eq $true)
		{
			$SortedEventsDatatable | sort-object -Property Num -Descending | format-list >> "$($savefile)"
		}
		else 
		{
			$SortedEventsDatatable | sort-object -Property Num -Descending | format-list > "$($savefile)"
		}
	}
	elseif ($SaveFile -match ".csv")
	{
		if ($mnuFileAppend.checked -eq $true)
		{
			$SortedEventsDatatable | sort-object -Property Num -Descending | export-csv -NoType -Append -Path $savefile
		}
		else 
		{
			$SortedEventsDatatable | sort-object -Property Num -Descending | export-csv -NoType -Path $savefile
		}
		
	}
	
	if ($mnuFileAppend.checked -eq $true){$Savemsg = "Your file has been saved to $Savepath"}else {"Your file has been appended to $Savepath"}
	[System.Windows.forms.MessageBox]::Show("$Savemsg", 'Saved')

}

function Get-CheckboxValues
{
	$Chks = @()
	If ($chkbxCritical.checked -eq $true)
	{
		$Chks += 1
	}
	If ($chkbxError.checked -eq $true)
	{
		$Chks += 2
	}
	If ($chkbxWarning.checked -eq $true)
	{
		$Chks += 3
	}

	return $chks

}


function Get-DatetimeCheck
{
	param(
	[ValidateNotNull()]
		[string]$StartorEnd 
	)
	switch ($StartorEnd)
	{
		'Start'
		{
			$ControlDateTime = get-date -year $dtpkStartDate.value.Year -month $dtpkStartDate.value.Month -day $dtpkStartDate.Value.Day -hour $dtpkStartTime.Value.Hour -Minute $dtpkStartTime.Value.Minute -Second $dtpkStartTime.Value.Second
			break
		}	
		'End'
		{
			$ControlDateTime = get-date -year $dtpkEndDate.value.Year -month $dtpkEndDate.value.Month -day $dtpkEndDate.Value.Day -hour $dtpkEndTime.Value.Hour -Minute $dtpkEndTime.Value.Minute -Second $dtpkEndTime.Value.Second
			break
		}
	}
	return $ControlDateTime

}

function Get-EventClassList
{
	param(
		[Parameter(Mandatory = $true)]
		[System.Windows.Forms.ToolStripMenuItem]$MenuItem 
	)


	$EventLogList = @()	
	#get a list of Event IDs
	foreach	($GroupItem in $MenuItem.DropDownItems)
	{
		# Use a split in case there are multiple logs that needs to be loaded.
		$AppLogGroup = $Groupitem.tag.split("|")
		foreach	($group in $AppLogGroup)
		{
			# Split the log name from the event IDs and takes the resultiing number and feeds it into the hashtable to get the log name
			$EventLog = ($group.split(":"))[0]
			# Takes the second half of the .tag and splits it by commas to get each individual event id
			$EventIDs = $(($group.split(":"))[1]).split(",")

			# Now we toss them into our array for temporary storage
			foreach ($event in $eventids)
			{
				$EventLogList += [PSCustomObject]@{
					EventLog = $EventLog
					EventID = $event
				}
			}
		}
	}

	$EventFilters = @()
	#now that we've got our complete list, we need to split them up by event log and create an eventfilter for each
	foreach ($Log in ($EventLogList | sort-object -Property EventLog -unique).EventLog)
	{
		# Get all the eventids for this log
		$EventIDs = ($EventLogList | where-object -Property EventLog -eq $log).EventId

		# Create a hashfilter and add it to the array
		$EventFilter = @{Logname= $Log
			Id = $EventIDs
			StartTime= Get-DatetimeCheck 'Start'
			EndTime= Get-DatetimeCheck 'End'
		}
		$EventFilters += $EventFilter
	}

	$dgvEvents.DataSource = $null
	# All that work just to create the filters, now we get the events
	$MyEvents = Get-EventsList

	if ($MyEvents)
	{
		#Then get them sorted
		$SortedEvents = Group-EventsUnique $MyEvents

		#then display them in the datagridview
		Update-DataTable $SortedEvents
	}
	else 
	{
		[System.Windows.forms.MessageBox]::Show("No results returned.", 'WARNING')
	}
}


function Get-EventLogList
{
	$LogsToSearch = @()
	#loop through and find all checked values. and find all logs that have been checked
	foreach ($Row in $dgvLogsList.rows) 
	{
		if ($row.cells[0].value -eq $true)
		{
			$LogsToSearch += $row.cells[2].value	
		}
		
	}
	Return $LogsToSearch
}


function Get-EventsList
{
	[System.Collections.ArrayList]$script:EventsList = @()
	foreach ($Filter in $EventFilters) {
		$script:EventsList += Get-WinEvent -Verbose:$false -FilterHashtable $Filter | Select-object -Property ProviderName,LogName,TimeCreated,ID,LevelDisplayName,Message,MachineName

	}

	#change to datatable and populate
	return $script:EventsList
}

function get-MenuEvents
{
	[System.Collections.ArrayList]$MenuItems = @()
	for ($i=1; $i -lt $mnuEventClasses.DropDownItems.count; $i++)
	{
		
				
		$EventIdGroups = @()
		$index = 0
		foreach ($item in $mnuEventClasses.DropDownItems[$i].DropDownItems) 
		{
			$MenuIDGroup = [PSCustomObject]@{
				FriendlyName = $item.text
				ControlNumber = $Index
				Checked = $item.checked
				EventString = $item.tag
				Tooltip = $item.ToolTipText
			}	
			
			$EventIdGroups += $MenuIDGroup
			$index ++
		}
		$MenuEventClass = [PSCustomObject]@{
			FriendlyName = $mnuEventClasses.DropDownItems[$i].text
			MenuControlName = ($mnuEventClasses.DropDownItems[$i].name)
			OrderNumber = $i
			ToolTip = $mnuEventClasses.DropDownItems[$i].ToolTipText
			EventgroupItems = $EventIdGroups
		}
		$MenuItems += $MenuEventClass
	}

	Return $MenuItems
}

function Group-EventsUnique
{
	param(
		[Parameter(Mandatory = $true)]
  		[array]$EventsList
	)
	$UniqueEvents = @()
	#Sorts events list into unique entries based on either the message, or eventID
	if ($rbUniqueByMessage.Checked -eq $true)
	{
		$UniqueEventsPre = $EventsList | Sort-Object -Property Message -Unique
		Foreach ($ev in $UniqueEventsPre){
			$count = ($EventsList | where-object Message -eq ($ev.Message)).count
			if ($count -gt 0){<#Do nothing#>}else{$count = 1}
			$NewRecord = [PSCustomObject]@{
				Num = $count
				ProviderName = $ev.ProviderName
				LogName = $($ev.LogName)
				TimeCreated = $($ev.TimeCreated)
				ID = $($ev.ID)
				LevelDisplayName = $($ev.LevelDisplayName)
				Message = $($ev.Message)
				ComputerName = $($ev.MachineName)
			}
			$UniqueEvents += $NewRecord
			
		}	
	}
	elseif ($rbUniqueByID.checked -eq $true )
	{
		$UniqueEventsPre = $EventsList | Sort-Object -Property ID -Unique
		Foreach ($ev in $UniqueEventsPre){
			$count = ($EventsList | where-object ID -eq ($ev.id)).count
			if ($count -gt 0){<#Do nothing#>}else{$count = 1}
			$NewRecord = [PSCustomObject]@{
				Num = $count
				ProviderName = $ev.ProviderName
				LogName = $($ev.LogName)
				TimeCreated = $($ev.TimeCreated)
				ID = $($ev.ID)
				LevelDisplayName = $($ev.LevelDisplayName)
				Message = $($ev.Message)
				ComputerName = $($ev.MachineName)
			}
			$UniqueEvents += $NewRecord
		}	
	}
	else 
	{
		$UniqueEventsPre = $EventsList
		foreach ($ev in $UniqueEventsPre) {
			$count =1
			$NewRecord = [PSCustomObject]@{
				Num = $count
				ProviderName = $ev.ProviderName
				LogName = $($ev.LogName)
				TimeCreated = $($ev.TimeCreated)
				ID = $($ev.ID)
				LevelDisplayName = $($ev.LevelDisplayName)
				Message = $($ev.Message)
				ComputerName = $($ev.MachineName)
			}
			$UniqueEvents += $NewRecord
		}	
	}
	
	
	return $UniqueEvents
}

Function Import-EventClassesMenu {
	param(
	  	[Parameter(Mandatory = $true)]
    	[array]$EventClassObject
	)
    # Fill applications list
   
    ForEach ($Item In $EventClassObject) 
    {
		
      	[System.Windows.Forms.ToolStripMenuItem]$mnuEventClass = $null
    	$mnuEventClass = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
      	$mnuEventClass.Name = [System.String] $item.MenuControlName
      	$mnuEventClass.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]24))
      	$mnuEventClass.Text = [System.String] $Item.FriendlyName
      	$mnuEventClass.CheckOnClick = $true
      	$mnuEventClass.Add_Click($mnuAllEventClasses_click)
      	$mnuEventClasses.DropDownItems.add($mnuEventClass)
      
      	foreach ($Group in $EventgroupItems) 
     	{
			
			$ControlName =  $item.MenuControlName + "Id" + $ControlNumber
			# Event Group Items
			[System.Windows.Forms.,m]$mnuEventClassesGroup = $null
			$mnuEventClassesGroup = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
			$mnuEventClassesGroup.Name = [System.String] $ControlName
			$mnuEventClassesGroup.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]390,[System.Int32]24))
			$mnuEventClassesGroup.Tag = [System.String]$group.tag
			$mnuEventClassesGroup.Text = [System.String]$Group.FriendlyName

    
			if ($group.checked -eq $true)
			{
				$mnuEventClassesGroup.Checked = $true
				$mnuEventClassesGroup.CheckState = [System.Windows.Forms.CheckState]::Checked
			}
			else 
			{
				$mnuEventClassesGroup.Checked = $true
				$mnuEventClassesGroup.CheckState = [System.Windows.Forms.CheckState]::Checked
			}
		}
	
	}
}

function Reset-Menu{

	for ($i = $mnuEventClasses.DropDownItems.count; $i -gt 0; $i--)
	{
		
		$mnueventclasses.dropdownitems.remove([System.Windows.Forms.ToolStripMenuItem]$mnuEventClasses.dropdownitems[$i])
	}
}

function Update-DataTable
{
	param(
	[ValidateNotNull()]
		[array]$Array 
	)
	$dgvevents.datasource = $null
	$SortedEventsDatatable = Convertto-DataTable -inputobject $Array

	#set messages to not visible
	$dgvEvents.datasource = $SortedEventsDatatable
	$dgvEvents.columns[6].visible = $false
	$dgvEvents.columns[7].visible = $false
	
	for ($i=0; $i -lt $dgvEvents.columncount -1; $i++ )
	{
		$dgvEvents.Columns[$i].AutoSizeMode = [System.Windows.Forms.DataGridViewAutoSizeColumnMode]::AllCells
	}

	$lblNumEvents.text = $dgvEvents.RowCount


	if ($rbUniqueByID.checked -eq $true)
	{
		$lblNumUniqueTitle.text = 'Num Unique Events by Event ID:'
	}
	elseif ($rbUniqueByMessage.Checked -eq $true)
	{
		$lblNumUniqueTitle.text = 'Num Unique Events by Message:'
	}
	else 
	{
		$lblNumUniqueTitle.text = 'Total Number Events:'
	}

}

function Update-EventFilter
{
	$EventFilters = @()
	$EventFilter = @{Logname= Get-EventLogList
		Level= Get-CheckboxValues
		StartTime= Get-DatetimeCheck 'Start'
		EndTime= Get-DatetimeCheck 'End'
	}
	$EventFilters += $EventFilter 
}
	

##########################################
## Start Code
##########################################

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'eventviewergui.designer.ps1')
$frmEventFiend.ShowDialog()