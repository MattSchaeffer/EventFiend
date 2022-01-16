$frmEventHelper = New-Object -TypeName System.Windows.Forms.Form
[System.Windows.Forms.DataGridView]$dgvEvents = $null
[System.Windows.Forms.DateTimePicker]$dtpkStartDate = $null
[System.Windows.Forms.DataGridView]$dgvLogsList = $null
[System.Windows.Forms.TextBox]$txtEventMessages = $null
[System.Windows.Forms.GroupBox]$grpbxLevel = $null
[System.Windows.Forms.Label]$lblLogs = $null
[System.Windows.Forms.CheckBox]$chkbxError = $null
[System.Windows.Forms.CheckBox]$chkBxCritical = $null
[System.Windows.Forms.CheckBox]$chkbxWarning = $null
[System.Windows.Forms.Label]$lblDetails = $null
[System.Windows.Forms.DateTimePicker]$dtpkStartTime = $null
[System.Windows.Forms.Label]$lblEvents = $null
[System.Windows.Forms.GroupBox]$GrpbxUniqueBy = $null
[System.Windows.Forms.RadioButton]$rbUniqueByID = $null
[System.Windows.Forms.RadioButton]$rbUniqueByMessage = $null
[System.Windows.Forms.Label]$lbNumUniqueTitle = $null
[System.Windows.Forms.Label]$lblNumEvents = $null
[System.Windows.Forms.Button]$btnGetEvents = $null
[System.Windows.Forms.GroupBox]$grpbxRemoteServer = $null
[System.Windows.Forms.Button]$btnConnectRemote = $null
[System.Windows.Forms.Label]$lblPassword = $null
[System.Windows.Forms.Label]$lblUserName = $null
[System.Windows.Forms.Label]$lblServerName = $null
[System.Windows.Forms.TextBox]$txtPassword = $null
[System.Windows.Forms.TextBox]$txtUserName = $null
[System.Windows.Forms.TextBox]$txtServerName = $null
[System.Windows.Forms.GroupBox]$grpbxEventsOfInterest = $null
[System.Windows.Forms.DateTimePicker]$dtpkEndTime = $null
[System.Windows.Forms.DateTimePicker]$dtpkEndDate = $null
[System.Windows.Forms.CheckBox]$chkbxSelectTD = $null
function InitializeComponent
{
$dgvEvents = (New-Object -TypeName System.Windows.Forms.DataGridView)
$dtpkStartDate = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
$dgvLogsList = (New-Object -TypeName System.Windows.Forms.DataGridView)
$txtEventMessages = (New-Object -TypeName System.Windows.Forms.TextBox)
$grpbxLevel = (New-Object -TypeName System.Windows.Forms.GroupBox)
$lblLogs = (New-Object -TypeName System.Windows.Forms.Label)
$chkbxError = (New-Object -TypeName System.Windows.Forms.CheckBox)
$chkBxCritical = (New-Object -TypeName System.Windows.Forms.CheckBox)
$chkbxWarning = (New-Object -TypeName System.Windows.Forms.CheckBox)
$lblDetails = (New-Object -TypeName System.Windows.Forms.Label)
$dtpkStartTime = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
$lblEvents = (New-Object -TypeName System.Windows.Forms.Label)
$GrpbxUniqueBy = (New-Object -TypeName System.Windows.Forms.GroupBox)
$rbUniqueByID = (New-Object -TypeName System.Windows.Forms.RadioButton)
$rbUniqueByMessage = (New-Object -TypeName System.Windows.Forms.RadioButton)
$lbNumUniqueTitle = (New-Object -TypeName System.Windows.Forms.Label)
$lblNumEvents = (New-Object -TypeName System.Windows.Forms.Label)
$btnGetEvents = (New-Object -TypeName System.Windows.Forms.Button)
$grpbxRemoteServer = (New-Object -TypeName System.Windows.Forms.GroupBox)
$btnConnectRemote = (New-Object -TypeName System.Windows.Forms.Button)
$lblPassword = (New-Object -TypeName System.Windows.Forms.Label)
$lblUserName = (New-Object -TypeName System.Windows.Forms.Label)
$lblServerName = (New-Object -TypeName System.Windows.Forms.Label)
$txtPassword = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtUserName = (New-Object -TypeName System.Windows.Forms.TextBox)
$txtServerName = (New-Object -TypeName System.Windows.Forms.TextBox)
$grpbxEventsOfInterest = (New-Object -TypeName System.Windows.Forms.GroupBox)
$dtpkEndTime = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
$dtpkEndDate = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
$chkbxSelectTD = (New-Object -TypeName System.Windows.Forms.CheckBox)
([System.ComponentModel.ISupportInitialize]$dgvEvents).BeginInit()
([System.ComponentModel.ISupportInitialize]$dgvLogsList).BeginInit()
$grpbxLevel.SuspendLayout()
$GrpbxUniqueBy.SuspendLayout()
$grpbxRemoteServer.SuspendLayout()
$frmEventHelper.SuspendLayout()
#
#dgvEvents
#
$dgvEvents.AllowUserToAddRows = $false
$dgvEvents.AllowUserToOrderColumns = $true
$dgvEvents.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$dgvEvents.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$dgvEvents.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]32))
$dgvEvents.MultiSelect = $false
$dgvEvents.Name = [System.String]'dgvEvents'
$dgvEvents.ReadOnly = $true
$dgvEvents.RowTemplate.Height = [System.Int32]24
$dgvEvents.SelectionMode = [System.Windows.Forms.DataGridViewSelectionMode]::FullRowSelect
$dgvEvents.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]385,[System.Int32]444))
$dgvEvents.TabIndex = [System.Int32]0
#
#dtpkStartDate
#
$dtpkStartDate.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$dtpkStartDate.Format = [System.Windows.Forms.DateTimePickerFormat]::Short
$dtpkStartDate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]218,[System.Int32]4))
$dtpkStartDate.MaxDate = (New-Object -TypeName System.DateTime -ArgumentList @([System.Int32]2022,[System.Int32]1,[System.Int32]12,[System.Int32]0,[System.Int32]0,[System.Int32]0,[System.Int32]0))
$dtpkStartDate.Name = [System.String]'dtpkStartDate'
$dtpkStartDate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]89,[System.Int32]24))
$dtpkStartDate.TabIndex = [System.Int32]1
$dtpkStartDate.Value = (New-Object -TypeName System.DateTime -ArgumentList @([System.Int32]2022,[System.Int32]1,[System.Int32]12,[System.Int32]0,[System.Int32]0,[System.Int32]0,[System.Int32]0))
#
#dgvLogsList
#
$dgvLogsList.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$dgvLogsList.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$dgvLogsList.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]393,[System.Int32]137))
$dgvLogsList.Name = [System.String]'dgvLogsList'
$dgvLogsList.RowTemplate.Height = [System.Int32]24
$dgvLogsList.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]245,[System.Int32]338))
$dgvLogsList.TabIndex = [System.Int32]2
#
#txtEventMessages
#
$txtEventMessages.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtEventMessages.BackColor = [System.Drawing.SystemColors]::ControlLight
$txtEventMessages.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]496))
$txtEventMessages.Multiline = $true
$txtEventMessages.Name = [System.String]'txtEventMessages'
$txtEventMessages.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]385,[System.Int32]142))
$txtEventMessages.TabIndex = [System.Int32]3
#
#grpbxLevel
#
$grpbxLevel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$grpbxLevel.Controls.Add($lblLogs)
$grpbxLevel.Controls.Add($chkbxError)
$grpbxLevel.Controls.Add($chkBxCritical)
$grpbxLevel.Controls.Add($chkbxWarning)
$grpbxLevel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]546,[System.Int32]45))
$grpbxLevel.Name = [System.String]'grpbxLevel'
$grpbxLevel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]94,[System.Int32]88))
$grpbxLevel.TabIndex = [System.Int32]4
$grpbxLevel.TabStop = $false
$grpbxLevel.Text = [System.String]'Level'
#
#lblLogs
#
$lblLogs.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]3,[System.Int32]106))
$lblLogs.Name = [System.String]'lblLogs'
$lblLogs.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]157,[System.Int32]28))
$lblLogs.TabIndex = [System.Int32]2
$lblLogs.Text = [System.String]'Logs'
#
#chkbxError
#
$chkbxError.Checked = $true
$chkbxError.CheckState = [System.Windows.Forms.CheckState]::Checked
$chkbxError.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]42))
$chkbxError.Name = [System.String]'chkbxError'
$chkbxError.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]83,[System.Int32]21))
$chkbxError.TabIndex = [System.Int32]1
$chkbxError.Text = [System.String]'Error'
$chkbxError.UseVisualStyleBackColor = $true
$chkbxError.add_CheckedChanged($chkbxLevel_CheckedChanged)
#
#chkBxCritical
#
$chkBxCritical.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]18))
$chkBxCritical.Name = [System.String]'chkBxCritical'
$chkBxCritical.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]83,[System.Int32]21))
$chkBxCritical.TabIndex = [System.Int32]0
$chkBxCritical.Text = [System.String]'Critical'
$chkBxCritical.UseVisualStyleBackColor = $true
$chkBxCritical.add_CheckedChanged($chkbxLevel_CheckedChanged)
#
#chkbxWarning
#
$chkbxWarning.BackColor = [System.Drawing.SystemColors]::Control
$chkbxWarning.Checked = $true
$chkbxWarning.CheckState = [System.Windows.Forms.CheckState]::Checked
$chkbxWarning.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]8.25))
$chkbxWarning.ForeColor = [System.Drawing.Color]::FromArgb(([System.Int32]([System.Byte][System.Byte]0)),([System.Int32]([System.Byte][System.Byte]0)),([System.Int32]([System.Byte][System.Byte]0)))

$chkbxWarning.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]65))
$chkbxWarning.Name = [System.String]'chkbxWarning'
$chkbxWarning.RightToLeft = [System.Windows.Forms.RightToLeft]::No
$chkbxWarning.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]83,[System.Int32]21))
$chkbxWarning.TabIndex = [System.Int32]1
$chkbxWarning.Text = [System.String]'Warning'
$chkbxWarning.UseVisualStyleBackColor = $true
$chkbxWarning.add_CheckedChanged($chkbxLevel_CheckedChanged)
#
#lblDetails
#
$lblDetails.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$lblDetails.ImageAlign = [System.Drawing.ContentAlignment]::BottomLeft
$lblDetails.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]477))
$lblDetails.Name = [System.String]'lblDetails'
$lblDetails.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]18))
$lblDetails.TabIndex = [System.Int32]5
$lblDetails.Text = [System.String]'Event Details'
$lblDetails.TextAlign = [System.Drawing.ContentAlignment]::BottomLeft
#
#dtpkStartTime
#
$dtpkStartTime.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$dtpkStartTime.Format = [System.Windows.Forms.DateTimePickerFormat]::Time
$dtpkStartTime.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]311,[System.Int32]4))
$dtpkStartTime.Name = [System.String]'dtpkStartTime'
$dtpkStartTime.ShowUpDown = $true
$dtpkStartTime.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]76,[System.Int32]24))
$dtpkStartTime.TabIndex = [System.Int32]6
#
#lblEvents
#
$lblEvents.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]4))
$lblEvents.Name = [System.String]'lblEvents'
$lblEvents.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]50,[System.Int32]21))
$lblEvents.TabIndex = [System.Int32]7
$lblEvents.Text = [System.String]'Events'
$lblEvents.TextAlign = [System.Drawing.ContentAlignment]::BottomLeft
#
#GrpbxUniqueBy
#
$GrpbxUniqueBy.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$GrpbxUniqueBy.Controls.Add($rbUniqueByID)
$GrpbxUniqueBy.Controls.Add($rbUniqueByMessage)
$GrpbxUniqueBy.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]393,[System.Int32]45))
$GrpbxUniqueBy.Name = [System.String]'GrpbxUniqueBy'
$GrpbxUniqueBy.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]137,[System.Int32]88))
$GrpbxUniqueBy.TabIndex = [System.Int32]8
$GrpbxUniqueBy.TabStop = $false
$GrpbxUniqueBy.Text = [System.String]'Events Unique by:'
#
#rbUniqueByID
#
$rbUniqueByID.Checked = $true
$rbUniqueByID.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]58))
$rbUniqueByID.Name = [System.String]'rbUniqueByID'
$rbUniqueByID.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]131,[System.Int32]21))
$rbUniqueByID.TabIndex = [System.Int32]1
$rbUniqueByID.TabStop = $true
$rbUniqueByID.Text = [System.String]'Event ID'
$rbUniqueByID.UseVisualStyleBackColor = $true
$rbUniqueByID.add_Click($rdoUnique_checked)
#
#rbUniqueByMessage
#
$rbUniqueByMessage.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]28))
$rbUniqueByMessage.Name = [System.String]'rbUniqueByMessage'
$rbUniqueByMessage.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]131,[System.Int32]21))
$rbUniqueByMessage.TabIndex = [System.Int32]0
$rbUniqueByMessage.Text = [System.String]'Message'
$rbUniqueByMessage.UseVisualStyleBackColor = $true
$rbUniqueByMessage.add_Click($rdoUnique_checked)
#
#lbNumUniqueTitle
#
$lbNumUniqueTitle.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$lbNumUniqueTitle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]7.8,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$lbNumUniqueTitle.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]131,[System.Int32]477))
$lbNumUniqueTitle.Name = [System.String]'lbNumUniqueTitle'
$lbNumUniqueTitle.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]221,[System.Int32]18))
$lbNumUniqueTitle.TabIndex = [System.Int32]9
$lbNumUniqueTitle.Text = [System.String]'Num Unique Errors by Event ID:
'
$lbNumUniqueTitle.TextAlign = [System.Drawing.ContentAlignment]::TopRight
$lbNumUniqueTitle.Visible = $false
#
#lblNumEvents
#
$lblNumEvents.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$lblNumEvents.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]346,[System.Int32]477))
$lblNumEvents.Name = [System.String]'lblNumEvents'
$lblNumEvents.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]18))
$lblNumEvents.TabIndex = [System.Int32]10
$lblNumEvents.Text = [System.String]'99999'
$lblNumEvents.TextAlign = [System.Drawing.ContentAlignment]::TopRight
$lblNumEvents.Visible = $false
#
#btnGetEvents
#
$btnGetEvents.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$btnGetEvents.BackColor = [System.Drawing.SystemColors]::MenuHighlight
$btnGetEvents.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]393,[System.Int32]4))
$btnGetEvents.Name = [System.String]'btnGetEvents'
$btnGetEvents.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]245,[System.Int32]41))
$btnGetEvents.TabIndex = [System.Int32]11
$btnGetEvents.Text = [System.String]'Get Events'
$btnGetEvents.UseVisualStyleBackColor = $false
$btnGetEvents.add_Click($btnGetEvents_click)
#
#grpbxRemoteServer
#
$grpbxRemoteServer.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$grpbxRemoteServer.Controls.Add($btnConnectRemote)
$grpbxRemoteServer.Controls.Add($lblPassword)
$grpbxRemoteServer.Controls.Add($lblUserName)
$grpbxRemoteServer.Controls.Add($lblServerName)
$grpbxRemoteServer.Controls.Add($txtPassword)
$grpbxRemoteServer.Controls.Add($txtUserName)
$grpbxRemoteServer.Controls.Add($txtServerName)
$grpbxRemoteServer.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]393,[System.Int32]476))
$grpbxRemoteServer.Name = [System.String]'grpbxRemoteServer'
$grpbxRemoteServer.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]244,[System.Int32]162))
$grpbxRemoteServer.TabIndex = [System.Int32]12
$grpbxRemoteServer.TabStop = $false
$grpbxRemoteServer.Text = [System.String]'Connect to Remote Server'
#
#btnConnectRemote
#
$btnConnectRemote.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]171,[System.Int32]69))
$btnConnectRemote.Name = [System.String]'btnConnectRemote'
$btnConnectRemote.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]68,[System.Int32]92))
$btnConnectRemote.TabIndex = [System.Int32]7
$btnConnectRemote.Text = [System.String]'Connect remote'
$btnConnectRemote.UseVisualStyleBackColor = $true
$btnConnectRemote.add_Click($btnConnectRemote_click)
#
#lblPassword
#
$lblPassword.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$lblPassword.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]116))
$lblPassword.Name = [System.String]'lblPassword'
$lblPassword.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86,[System.Int32]21))
$lblPassword.TabIndex = [System.Int32]6
$lblPassword.Text = [System.String]'Password'
$lblPassword.TextAlign = [System.Drawing.ContentAlignment]::BottomLeft
#
#lblUserName
#
$lblUserName.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$lblUserName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]67))
$lblUserName.Name = [System.String]'lblUserName'
$lblUserName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]88,[System.Int32]21))
$lblUserName.TabIndex = [System.Int32]4
$lblUserName.Text = [System.String]'Username'
$lblUserName.TextAlign = [System.Drawing.ContentAlignment]::BottomLeft
#
#lblServerName
#
$lblServerName.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$lblServerName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]18))
$lblServerName.Name = [System.String]'lblServerName'
$lblServerName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]92,[System.Int32]21))
$lblServerName.TabIndex = [System.Int32]3
$lblServerName.Text = [System.String]'Server Name'
$lblServerName.TextAlign = [System.Drawing.ContentAlignment]::BottomLeft
#
#txtPassword
#
$txtPassword.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtPassword.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]137))
$txtPassword.Name = [System.String]'txtPassword'
$txtPassword.PasswordChar = [System.Char]'*'
$txtPassword.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]163,[System.Int32]24))
$txtPassword.TabIndex = [System.Int32]2
#
#txtUserName
#
$txtUserName.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtUserName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]92))
$txtUserName.Name = [System.String]'txtUserName'
$txtUserName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]163,[System.Int32]24))
$txtUserName.TabIndex = [System.Int32]1
#
#txtServerName
#
$txtServerName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]40))
$txtServerName.Name = [System.String]'txtServerName'
$txtServerName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]236,[System.Int32]24))
$txtServerName.TabIndex = [System.Int32]0
#
#grpbxEventsOfInterest
#
$grpbxEventsOfInterest.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$grpbxEventsOfInterest.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]639,[System.Int32]4))
$grpbxEventsOfInterest.Name = [System.String]'grpbxEventsOfInterest'
$grpbxEventsOfInterest.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]206,[System.Int32]634))
$grpbxEventsOfInterest.TabIndex = [System.Int32]13
$grpbxEventsOfInterest.TabStop = $false
$grpbxEventsOfInterest.Text = [System.String]'Events Of Interest'
#
#dtpkEndTime
#
$dtpkEndTime.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$dtpkEndTime.Format = [System.Windows.Forms.DateTimePickerFormat]::Time
$dtpkEndTime.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]311,[System.Int32]32))
$dtpkEndTime.Name = [System.String]'dtpkEndTime'
$dtpkEndTime.ShowUpDown = $true
$dtpkEndTime.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]76,[System.Int32]24))
$dtpkEndTime.TabIndex = [System.Int32]14
$dtpkEndTime.Visible = $false
#
#dtpkEndDate
#
$dtpkEndDate.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$dtpkEndDate.Format = [System.Windows.Forms.DateTimePickerFormat]::Short
$dtpkEndDate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]218,[System.Int32]32))
$dtpkEndDate.Name = [System.String]'dtpkEndDate'
$dtpkEndDate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]89,[System.Int32]24))
$dtpkEndDate.TabIndex = [System.Int32]15
$dtpkEndDate.Value = (New-Object -TypeName System.DateTime -ArgumentList @([System.Int32]2022,[System.Int32]1,[System.Int32]13,[System.Int32]4,[System.Int32]11,[System.Int32]32,[System.Int32]0))
$dtpkEndDate.Visible = $false
#
#chkbxSelectTD
#
$chkbxSelectTD.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$chkbxSelectTD.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]58,[System.Int32]4))
$chkbxSelectTD.Name = [System.String]'chkbxSelectTD'
$chkbxSelectTD.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]156,[System.Int32]24))
$chkbxSelectTD.TabIndex = [System.Int32]16
$chkbxSelectTD.Text = [System.String]'Select End DateTime
'
$chkbxSelectTD.TextAlign = [System.Drawing.ContentAlignment]::BottomLeft
$chkbxSelectTD.UseVisualStyleBackColor = $true
$chkbxSelectTD.add_CheckedChanged($chkbxSelectTD_checkedchanged)
#
#frmEventHelper
#
$frmEventHelper.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]866,[System.Int32]641))
$frmEventHelper.Controls.Add($chkbxSelectTD)
$frmEventHelper.Controls.Add($dtpkEndDate)
$frmEventHelper.Controls.Add($dtpkEndTime)
$frmEventHelper.Controls.Add($grpbxEventsOfInterest)
$frmEventHelper.Controls.Add($grpbxRemoteServer)
$frmEventHelper.Controls.Add($btnGetEvents)
$frmEventHelper.Controls.Add($lblNumEvents)
$frmEventHelper.Controls.Add($lbNumUniqueTitle)
$frmEventHelper.Controls.Add($GrpbxUniqueBy)
$frmEventHelper.Controls.Add($lblEvents)
$frmEventHelper.Controls.Add($dtpkStartTime)
$frmEventHelper.Controls.Add($lblDetails)
$frmEventHelper.Controls.Add($grpbxLevel)
$frmEventHelper.Controls.Add($txtEventMessages)
$frmEventHelper.Controls.Add($dgvLogsList)
$frmEventHelper.Controls.Add($dtpkStartDate)
$frmEventHelper.Controls.Add($dgvEvents)
$frmEventHelper.Text = [System.String]'Event Viewer Helper'
$frmEventHelper.add_Load($form_load)
([System.ComponentModel.ISupportInitialize]$dgvEvents).EndInit()
([System.ComponentModel.ISupportInitialize]$dgvLogsList).EndInit()
$grpbxLevel.ResumeLayout($false)
$GrpbxUniqueBy.ResumeLayout($false)
$grpbxRemoteServer.ResumeLayout($false)
$grpbxRemoteServer.PerformLayout()
$frmEventHelper.ResumeLayout($false)
$frmEventHelper.PerformLayout()
Add-Member -InputObject $frmEventHelper -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name dgvEvents -Value $dgvEvents -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name dtpkStartDate -Value $dtpkStartDate -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name dgvLogsList -Value $dgvLogsList -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name txtEventMessages -Value $txtEventMessages -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name grpbxLevel -Value $grpbxLevel -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name lblLogs -Value $lblLogs -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name chkbxError -Value $chkbxError -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name chkBxCritical -Value $chkBxCritical -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name chkbxWarning -Value $chkbxWarning -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name lblDetails -Value $lblDetails -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name dtpkStartTime -Value $dtpkStartTime -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name lblEvents -Value $lblEvents -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name GrpbxUniqueBy -Value $GrpbxUniqueBy -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name rbUniqueByID -Value $rbUniqueByID -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name rbUniqueByMessage -Value $rbUniqueByMessage -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name lbNumUniqueTitle -Value $lbNumUniqueTitle -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name lblNumEvents -Value $lblNumEvents -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name btnGetEvents -Value $btnGetEvents -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name grpbxRemoteServer -Value $grpbxRemoteServer -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name btnConnectRemote -Value $btnConnectRemote -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name lblPassword -Value $lblPassword -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name lblUserName -Value $lblUserName -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name lblServerName -Value $lblServerName -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name txtPassword -Value $txtPassword -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name txtUserName -Value $txtUserName -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name txtServerName -Value $txtServerName -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name grpbxEventsOfInterest -Value $grpbxEventsOfInterest -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name dtpkEndTime -Value $dtpkEndTime -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name dtpkEndDate -Value $dtpkEndDate -MemberType NoteProperty
Add-Member -InputObject $frmEventHelper -Name chkbxSelectTD -Value $chkbxSelectTD -MemberType NoteProperty
}
. InitializeComponent
