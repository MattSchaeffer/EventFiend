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
        
    #>


##########################################
## Variables and classes
##########################################
$script:CheckValues = 2,3



##########################################
## Form event variables
##########################################

$btnGetEvents_click = {
	
}

$btnConnectRemote_click = {
}

$chkbxLevel_checkedchanged = {
	# Update Filter Value
}

$chkbxSelectTD_checkedchanged = {

	if ($chkbxSelectTD.Checked -eq $true)
	{
		$dgvEvents.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]63))
		$dgvEvents.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]385,[System.Int32]413))
		$lblEvents.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]38))
		$dtpkEndDate.Visible = $true
		$dtpkEndTime.Visible = $true
	}
	elseif ($chkbxSelectTD.Checked -eq $false){
		$dgvEvents.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]32))
		$dgvEvents.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]385,[System.Int32]444))
		$lblEvents.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]4))
		$dtpkEndDate.Visible = $false
		$dtpkEndTime.Visible = $false
	
	}
	
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
	$dtpkstartdate.value = ([datetime]::today).AddDays(-1)
	$dtpkstartdate.MinDate = ([datetime]::today).AddDays(-90)
	$dtpkstartdate.MaxDate = [datetime]::today
	$dtpkenddate.value = [datetime]::today
	$dtpkenddate.MinDate = ([datetime]::today).AddDays(-90)
	$dtpkenddate.MaxDate = [datetime]::today
	$dtpkStartTime.Value  = [datetime]::Now
	$dtpkEndTime.Value  = [datetime]::Now
	#Load the eventfilter with starting values
	

}

$rdoUnique_checked = {
}



##########################################
## Functions
##########################################

function write-stupidstuff{
	#The sole function of this function is to put event handler variables somewhere so Visual Studio code quites complaining that
	#they aren't being used when they area.  Nothing links to or uses this function

	$form_load
	$rdoUnique_checked
	$chkbxLevel_checkedchanged
	$btnGetEvents_click
	$chkbxSelectTD_checkedchanged


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
	
	if($Table -eq $null)
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
function Update-BinaryCheckboxValues
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

}

function Update-EventFilter
{

	$Logs = @()
	$ErrorLevel = @()

	#Get LogName

	#Get Level
	switch ($x) {
		condition {  }
		Default {}
	}

	$EventFilter = @{Logname='System','Application'
                 Level=2,3
                 StartTime=$StartTime
                 EndTime=$EndTime
                 }    
}

function Set-Filter
{

}


##########################################
## Start Code
##########################################

Add-Type -AssemblyName System.Windows.Forms
. (Join-Path $PSScriptRoot 'eventviewergui.designer.ps1')
$frmEventHelper.ShowDialog()