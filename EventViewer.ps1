<#
Some misc code I need to add later:
$EventList = Get-WinEvent -FilterHashtable @{
    Logname = 'system'
    Id = '1074', '6008'
    StartTime = (Get-Date).AddDays(-7)}
#>
$StartTime = [datetime]::today
$EndTime = [datetime]::now

$Levels = @('Placeholder-0','Critical','Error', 'Warning', 'Information', 'Verbose')


$EventFilter = @{Logname='System','Application'
                 Level=2,3
                 StartTime=$StartTime
                 EndTime=$EndTime
                 }      

#vent

$Events = Get-WinEvent -Verbose:$false -ErrorAction Stop -FilterHashtable $EventFilter 
        
$Uniqueid = @()
$Uniqueid = $events | Sort-Object -Property ID -Unique 
$uniqueMess = @()
$uniqueMess = $events | Sort-Object -Property Message -Unique

$newUniqueID = @()   
Foreach ($ev in $Uniqueid){
    $temp = $ev
    $count = ($events | where-object ID -eq ($ev.id)).count
    Add-Member -InputObject $temp -membertype NoteProperty -name 'NumOccurrences' -Value $count -force
    $newUniqueID += $temp
}

$newUniqueMess = @()   
Foreach ($ev in $UniqueMess){
    $temp = $ev
    $count = ($events | where-object Message -eq ($ev.Message)).count
    Add-Member -InputObject $temp -membertype NoteProperty -name 'NumOccurrences' -Value $count -force
    $newUniqueMess += $temp
    
}

$NewUniqueid |Select-Object NumOccurrences,LogName,TimeCreated,Id,LevelDisplayName,Message | Format-List > C:\Support\uniqueid.txt 
$NewUniqueMess |Select-Object NumOccurrences,LogName,TimeCreated,Id,LevelDisplayName,Message | Format-List > C:\Support\uniquemess.txt