$frmEventFiend = New-Object -TypeName System.Windows.Forms.Form
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
[System.Windows.Forms.Label]$lblStartDateTime = $null
[System.Windows.Forms.GroupBox]$GrpbxUniqueBy = $null
[System.Windows.Forms.RadioButton]$rbNotUnique = $null
[System.Windows.Forms.RadioButton]$rbUniqueByID = $null
[System.Windows.Forms.RadioButton]$rbUniqueByMessage = $null
[System.Windows.Forms.Label]$lblNumUniqueTitle = $null
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
[System.Windows.Forms.DateTimePicker]$dtpkEndTime = $null
[System.Windows.Forms.DateTimePicker]$dtpkEndDate = $null
[System.Windows.Forms.MenuStrip]$mnuMain = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuFile = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuFileExport = $null
[System.Windows.Forms.ToolStripMenuItem]$MnuFileAppend = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuFileOverwrite = $null
[System.Windows.Forms.ToolStripSeparator]$ToolStripSeparator1 = $null
[System.Windows.Forms.ToolStripMenuItem]$SaveSettingsToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$LoadSettingsToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClasses = $null
[System.Windows.Forms.ToolStripMenuItem]$FilterClasses = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClassesAD = $null
[System.Windows.Forms.ToolStripMenuItem]$ADTopologyProblemsToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$LingeringObjectsToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$NoInboundNeighborsToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$DNSLookupIssuesToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$DCFailedInboundReplicationToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClassesApps = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClassesAppsIds0 = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClassesAppsIds1 = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClassesAuthentication = $null
[System.Windows.Forms.ToolStripMenuItem]$DCAttemptedToValidateCredentialsToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$KerberosPreAuthenticationFailedToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$KerberosTicketRequestedFailOrSuccessToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$KerberosServiceTicketRequestedFailOrSuccessToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClassesNetwork = $null
[System.Windows.Forms.ToolStripMenuItem]$ToolStripMenuItem2 = $null
[System.Windows.Forms.ToolStripMenuItem]$WindowsSocketsErrorToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$ErrorApplyingSecurityPolicyToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$NetworkConnectivityToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$WINSErrorsToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$DomainControllerNotResponsiveToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClassesRDS = $null
[System.Windows.Forms.ToolStripMenuItem]$RDSSessionHostListeningAvailabilityToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$RDPClientActiveXIsTryingToConnectToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$RDSConnectionBrokerCommunicationToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$FailedToStartSessionMonitoringToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClassesSecurity = $null
[System.Windows.Forms.ToolStripMenuItem]$UserAccountCreatedToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$UserAccountEnabledToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$PasswordResetAttemptToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$GroupMembershipChangesToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$AccountLockoutToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClassesServices = $null
[System.Windows.Forms.ToolStripMenuItem]$NewServiceInstalledToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$ServiceTerminatedUnexpectedlyToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$WindowsFirewallICSServiceStoppedToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$NewServicesCreatedToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClassesSQL = $null
[System.Windows.Forms.ToolStripMenuItem]$CoudntAllocateSpaceToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$BackupFailedToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$SQLServerStoppedToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$TransactionLogFullToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$LogScanNumberInvalidToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$ReplicationAgentFailedToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$ConfigurationOptionAgentXPsChangedToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$FileOpenErrorToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$SQLServerTerminatingDueToStopRequestToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$OperatingSystemErrorToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$LoginFailedToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$CouldntConnectToServerToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClassesFirewall = $null
[System.Windows.Forms.ToolStripMenuItem]$RuleAddedToFirewallToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$RuleModifiedOnFirewallToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$SettingChangedOnFirewallToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$GroupPolicySettingForFirewallChangedToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$WindowsFirewallServiceStoppedToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$FirewallBlockedAppToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$AppOrServiceBlockedByWindowsFilteringToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$ConnectionBlockedByWindowsFilteringToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$WindowsFilteringFilterChangedToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClassesUpdate = $null
[System.Windows.Forms.ToolStripMenuItem]$AUClientCouldntContactWSUSServerToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$RebootRequiredToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$ComputerNotSetToRebootToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$SuccessfullInstallationRequiringRebootToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$MicrosoftHotfixesSPsInstalledToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$FailedInstallationWithWarningStateToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$SignatureWasntPresentForHotfixToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$SuccessfulHotfixInstallationToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuEventClassesCrashes = $null
[System.Windows.Forms.ToolStripMenuItem]$SystemRebootedWithoutCleanShutdownToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$BSODToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$UserOrAppInitiatedRestartToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$CleanShutdownToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$DirtyShutdownToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$mnuHelp = $null
[System.Windows.Forms.ToolStripMenuItem]$AboutToolStripMenuItem = $null
[System.Windows.Forms.ToolStripMenuItem]$HelpToolStripMenuItem1 = $null
[System.Windows.Forms.GroupBox]$grpbxEventsOfInterest = $null
[System.Windows.Forms.Control]$Control1 = $null
[System.Windows.Forms.Label]$lblEndDateTime = $null
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
$lblStartDateTime = (New-Object -TypeName System.Windows.Forms.Label)
$GrpbxUniqueBy = (New-Object -TypeName System.Windows.Forms.GroupBox)
$rbNotUnique = (New-Object -TypeName System.Windows.Forms.RadioButton)
$rbUniqueByID = (New-Object -TypeName System.Windows.Forms.RadioButton)
$rbUniqueByMessage = (New-Object -TypeName System.Windows.Forms.RadioButton)
$lblNumUniqueTitle = (New-Object -TypeName System.Windows.Forms.Label)
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
$dtpkEndTime = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
$dtpkEndDate = (New-Object -TypeName System.Windows.Forms.DateTimePicker)
$mnuMain = (New-Object -TypeName System.Windows.Forms.MenuStrip)
$mnuFile = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuFileExport = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$MnuFileAppend = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuFileOverwrite = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$ToolStripSeparator1 = (New-Object -TypeName System.Windows.Forms.ToolStripSeparator)
$SaveSettingsToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$LoadSettingsToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuEventClasses = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$FilterClasses = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuEventClassesAD = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$ADTopologyProblemsToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$LingeringObjectsToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$NoInboundNeighborsToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$DNSLookupIssuesToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$DCFailedInboundReplicationToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuEventClassesApps = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuEventClassesAppsIds0 = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuEventClassesAppsIds1 = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuEventClassesAuthentication = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$DCAttemptedToValidateCredentialsToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$KerberosPreAuthenticationFailedToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$KerberosTicketRequestedFailOrSuccessToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$KerberosServiceTicketRequestedFailOrSuccessToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuEventClassesNetwork = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$ToolStripMenuItem2 = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$WindowsSocketsErrorToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$ErrorApplyingSecurityPolicyToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$NetworkConnectivityToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$WINSErrorsToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$DomainControllerNotResponsiveToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuEventClassesRDS = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$RDSSessionHostListeningAvailabilityToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$RDPClientActiveXIsTryingToConnectToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$RDSConnectionBrokerCommunicationToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$FailedToStartSessionMonitoringToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuEventClassesServices = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$NewServiceInstalledToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$ServiceTerminatedUnexpectedlyToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$WindowsFirewallICSServiceStoppedToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$NewServicesCreatedToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuEventClassesSQL = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$CoudntAllocateSpaceToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$BackupFailedToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$SQLServerStoppedToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$TransactionLogFullToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$LogScanNumberInvalidToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$ReplicationAgentFailedToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$ConfigurationOptionAgentXPsChangedToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$FileOpenErrorToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$SQLServerTerminatingDueToStopRequestToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$OperatingSystemErrorToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$LoginFailedToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$CouldntConnectToServerToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuEventClassesFirewall = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$RuleAddedToFirewallToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$RuleModifiedOnFirewallToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$SettingChangedOnFirewallToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$GroupPolicySettingForFirewallChangedToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$WindowsFirewallServiceStoppedToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$FirewallBlockedAppToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$AppOrServiceBlockedByWindowsFilteringToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$ConnectionBlockedByWindowsFilteringToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$WindowsFilteringFilterChangedToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuEventClassesUpdate = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$AUClientCouldntContactWSUSServerToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$RebootRequiredToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$ComputerNotSetToRebootToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$SuccessfullInstallationRequiringRebootToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$MicrosoftHotfixesSPsInstalledToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$FailedInstallationWithWarningStateToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$SignatureWasntPresentForHotfixToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$SuccessfulHotfixInstallationToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuEventClassesCrashes = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$SystemRebootedWithoutCleanShutdownToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$BSODToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$UserOrAppInitiatedRestartToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$CleanShutdownToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$DirtyShutdownToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$mnuHelp = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$AboutToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$HelpToolStripMenuItem1 = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$grpbxEventsOfInterest = (New-Object -TypeName System.Windows.Forms.GroupBox)
$Control1 = (New-Object -TypeName System.Windows.Forms.Control)
$lblEndDateTime = (New-Object -TypeName System.Windows.Forms.Label)
$mnuEventClassesSecurity = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$UserAccountCreatedToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$UserAccountEnabledToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$PasswordResetAttemptToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$GroupMembershipChangesToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
$AccountLockoutToolStripMenuItem = (New-Object -TypeName System.Windows.Forms.ToolStripMenuItem)
([System.ComponentModel.ISupportInitialize]$dgvEvents).BeginInit()
([System.ComponentModel.ISupportInitialize]$dgvLogsList).BeginInit()
$grpbxLevel.SuspendLayout()
$GrpbxUniqueBy.SuspendLayout()
$grpbxRemoteServer.SuspendLayout()
$mnuMain.SuspendLayout()
$frmEventFiend.SuspendLayout()
#
#dgvEvents
#
$dgvEvents.AllowUserToAddRows = $false
$dgvEvents.AllowUserToOrderColumns = $true
$dgvEvents.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$dgvEvents.BackgroundColor = [System.Drawing.SystemColors]::ControlLight
$dgvEvents.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$dgvEvents.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$dgvEvents.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]63))
$dgvEvents.MultiSelect = $false
$dgvEvents.Name = [System.String]'dgvEvents'
$dgvEvents.ReadOnly = $true
$dgvEvents.RowTemplate.Height = [System.Int32]24
$dgvEvents.SelectionMode = [System.Windows.Forms.DataGridViewSelectionMode]::FullRowSelect
$dgvEvents.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]452,[System.Int32]336))
$dgvEvents.TabIndex = [System.Int32]0
$dgvEvents.add_CellClick($dgvEvents_CellClick)
#
#dtpkStartDate
#
$dtpkStartDate.Format = [System.Windows.Forms.DateTimePickerFormat]::Short
$dtpkStartDate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]58,[System.Int32]35))
$dtpkStartDate.MaxDate = (New-Object -TypeName System.DateTime -ArgumentList @([System.Int32]2022,[System.Int32]1,[System.Int32]12,[System.Int32]0,[System.Int32]0,[System.Int32]0,[System.Int32]0))
$dtpkStartDate.Name = [System.String]'dtpkStartDate'
$dtpkStartDate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]90,[System.Int32]24))
$dtpkStartDate.TabIndex = [System.Int32]1
$dtpkStartDate.Value = (New-Object -TypeName System.DateTime -ArgumentList @([System.Int32]2022,[System.Int32]1,[System.Int32]12,[System.Int32]0,[System.Int32]0,[System.Int32]0,[System.Int32]0))
#
#dgvLogsList
#
$dgvLogsList.AllowUserToAddRows = $false
$dgvLogsList.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$dgvLogsList.BackgroundColor = [System.Drawing.SystemColors]::ControlLight
$dgvLogsList.BorderStyle = [System.Windows.Forms.BorderStyle]::Fixed3D
$dgvLogsList.ColumnHeadersHeightSizeMode = [System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode]::AutoSize
$dgvLogsList.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]460,[System.Int32]161))
$dgvLogsList.Name = [System.String]'dgvLogsList'
$dgvLogsList.RowTemplate.Height = [System.Int32]24
$dgvLogsList.SelectionMode = [System.Windows.Forms.DataGridViewSelectionMode]::FullRowSelect
$dgvLogsList.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]263,[System.Int32]237))
$dgvLogsList.TabIndex = [System.Int32]2
#
#txtEventMessages
#
$txtEventMessages.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtEventMessages.BackColor = [System.Drawing.SystemColors]::ControlLight
$txtEventMessages.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]419))
$txtEventMessages.Multiline = $true
$txtEventMessages.Name = [System.String]'txtEventMessages'
$txtEventMessages.ScrollBars = [System.Windows.Forms.ScrollBars]::Vertical
$txtEventMessages.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]452,[System.Int32]142))
$txtEventMessages.TabIndex = [System.Int32]3
#
#grpbxLevel
#
$grpbxLevel.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$grpbxLevel.Controls.Add($lblLogs)
$grpbxLevel.Controls.Add($chkbxError)
$grpbxLevel.Controls.Add($chkBxCritical)
$grpbxLevel.Controls.Add($chkbxWarning)
$grpbxLevel.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]613,[System.Int32]72))
$grpbxLevel.Name = [System.String]'grpbxLevel'
$grpbxLevel.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]110,[System.Int32]86))
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
#
#chkBxCritical
#
$chkBxCritical.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]18))
$chkBxCritical.Name = [System.String]'chkBxCritical'
$chkBxCritical.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]83,[System.Int32]21))
$chkBxCritical.TabIndex = [System.Int32]0
$chkBxCritical.Text = [System.String]'Critical'
$chkBxCritical.UseVisualStyleBackColor = $true
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
#
#lblDetails
#
$lblDetails.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Left)
$lblDetails.ImageAlign = [System.Drawing.ContentAlignment]::BottomLeft
$lblDetails.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]400))
$lblDetails.Name = [System.String]'lblDetails'
$lblDetails.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]100,[System.Int32]18))
$lblDetails.TabIndex = [System.Int32]5
$lblDetails.Text = [System.String]'Event Details'
$lblDetails.TextAlign = [System.Drawing.ContentAlignment]::BottomLeft
#
#dtpkStartTime
#
$dtpkStartTime.Format = [System.Windows.Forms.DateTimePickerFormat]::Time
$dtpkStartTime.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]152,[System.Int32]35))
$dtpkStartTime.Name = [System.String]'dtpkStartTime'
$dtpkStartTime.ShowUpDown = $true
$dtpkStartTime.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]76,[System.Int32]24))
$dtpkStartTime.TabIndex = [System.Int32]6
#
#lblStartDateTime
#
$lblStartDateTime.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]28))
$lblStartDateTime.Name = [System.String]'lblStartDateTime'
$lblStartDateTime.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]34))
$lblStartDateTime.TabIndex = [System.Int32]7
$lblStartDateTime.Text = [System.String]'Start Time'
$lblStartDateTime.TextAlign = [System.Drawing.ContentAlignment]::BottomRight
#
#GrpbxUniqueBy
#
$GrpbxUniqueBy.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$GrpbxUniqueBy.Controls.Add($rbNotUnique)
$GrpbxUniqueBy.Controls.Add($rbUniqueByID)
$GrpbxUniqueBy.Controls.Add($rbUniqueByMessage)
$GrpbxUniqueBy.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]460,[System.Int32]72))
$GrpbxUniqueBy.Name = [System.String]'GrpbxUniqueBy'
$GrpbxUniqueBy.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]137,[System.Int32]86))
$GrpbxUniqueBy.TabIndex = [System.Int32]8
$GrpbxUniqueBy.TabStop = $false
$GrpbxUniqueBy.Text = [System.String]'Events Unique by:'
#
#rbNotUnique
#
$rbNotUnique.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]62))
$rbNotUnique.Name = [System.String]'rbNotUnique'
$rbNotUnique.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]125,[System.Int32]21))
$rbNotUnique.TabIndex = [System.Int32]2
$rbNotUnique.TabStop = $true
$rbNotUnique.Text = [System.String]'All Events'
$rbNotUnique.UseVisualStyleBackColor = $true
$rbNotUnique.add_CheckedChanged($rbUnique_checkedchanged)
#
#rbUniqueByID
#
$rbUniqueByID.Checked = $true
$rbUniqueByID.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]40))
$rbUniqueByID.Name = [System.String]'rbUniqueByID'
$rbUniqueByID.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]131,[System.Int32]21))
$rbUniqueByID.TabIndex = [System.Int32]1
$rbUniqueByID.TabStop = $true
$rbUniqueByID.Text = [System.String]'Event ID'
$rbUniqueByID.UseVisualStyleBackColor = $true
$rbUniqueByID.add_CheckedChanged($rbUnique_CheckedChanged)
#
#rbUniqueByMessage
#
$rbUniqueByMessage.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]17))
$rbUniqueByMessage.Name = [System.String]'rbUniqueByMessage'
$rbUniqueByMessage.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]131,[System.Int32]21))
$rbUniqueByMessage.TabIndex = [System.Int32]0
$rbUniqueByMessage.Text = [System.String]'Message'
$rbUniqueByMessage.UseVisualStyleBackColor = $true
$rbUniqueByMessage.add_CheckedChanged($rbUnique_checkedchanged)
#
#lblNumUniqueTitle
#
$lblNumUniqueTitle.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$lblNumUniqueTitle.Font = (New-Object -TypeName System.Drawing.Font -ArgumentList @([System.String]'Tahoma',[System.Single]7.8,[System.Drawing.FontStyle]::Regular,[System.Drawing.GraphicsUnit]::Point,([System.Byte][System.Byte]0)))
$lblNumUniqueTitle.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]191,[System.Int32]400))
$lblNumUniqueTitle.Name = [System.String]'lblNumUniqueTitle'
$lblNumUniqueTitle.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]221,[System.Int32]18))
$lblNumUniqueTitle.TabIndex = [System.Int32]9
$lblNumUniqueTitle.Text = [System.String]'Record Count:'
$lblNumUniqueTitle.TextAlign = [System.Drawing.ContentAlignment]::TopRight
#
#lblNumEvents
#
$lblNumEvents.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$lblNumEvents.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]406,[System.Int32]400))
$lblNumEvents.Name = [System.String]'lblNumEvents'
$lblNumEvents.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]48,[System.Int32]18))
$lblNumEvents.TabIndex = [System.Int32]10
$lblNumEvents.Text = [System.String]'0'
$lblNumEvents.TextAlign = [System.Drawing.ContentAlignment]::TopRight
#
#btnGetEvents
#
$btnGetEvents.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Right)
$btnGetEvents.BackColor = [System.Drawing.SystemColors]::MenuHighlight
$btnGetEvents.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]460,[System.Int32]32))
$btnGetEvents.Name = [System.String]'btnGetEvents'
$btnGetEvents.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]263,[System.Int32]41))
$btnGetEvents.TabIndex = [System.Int32]11
$btnGetEvents.Text = [System.String]'Get Events'
$btnGetEvents.UseVisualStyleBackColor = $true
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
$grpbxRemoteServer.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]460,[System.Int32]399))
$grpbxRemoteServer.Name = [System.String]'grpbxRemoteServer'
$grpbxRemoteServer.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]263,[System.Int32]162))
$grpbxRemoteServer.TabIndex = [System.Int32]12
$grpbxRemoteServer.TabStop = $false
$grpbxRemoteServer.Text = [System.String]'Connect to Remote Server'
#
#btnConnectRemote
#
$btnConnectRemote.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]189,[System.Int32]67))
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
$lblPassword.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]113))
$lblPassword.Name = [System.String]'lblPassword'
$lblPassword.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]86,[System.Int32]21))
$lblPassword.TabIndex = [System.Int32]6
$lblPassword.Text = [System.String]'Password'
$lblPassword.TextAlign = [System.Drawing.ContentAlignment]::BottomLeft
#
#lblUserName
#
$lblUserName.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$lblUserName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]64))
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
$txtPassword.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]180,[System.Int32]24))
$txtPassword.TabIndex = [System.Int32]2
#
#txtUserName
#
$txtUserName.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$txtUserName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]89))
$txtUserName.Name = [System.String]'txtUserName'
$txtUserName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]180,[System.Int32]24))
$txtUserName.TabIndex = [System.Int32]1
#
#txtServerName
#
$txtServerName.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]4,[System.Int32]40))
$txtServerName.Name = [System.String]'txtServerName'
$txtServerName.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]253,[System.Int32]24))
$txtServerName.TabIndex = [System.Int32]0
#
#dtpkEndTime
#
$dtpkEndTime.Format = [System.Windows.Forms.DateTimePickerFormat]::Time
$dtpkEndTime.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]378,[System.Int32]35))
$dtpkEndTime.Name = [System.String]'dtpkEndTime'
$dtpkEndTime.ShowUpDown = $true
$dtpkEndTime.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]76,[System.Int32]24))
$dtpkEndTime.TabIndex = [System.Int32]14
#
#dtpkEndDate
#
$dtpkEndDate.Format = [System.Windows.Forms.DateTimePickerFormat]::Short
$dtpkEndDate.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]283,[System.Int32]35))
$dtpkEndDate.Name = [System.String]'dtpkEndDate'
$dtpkEndDate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]89,[System.Int32]24))
$dtpkEndDate.TabIndex = [System.Int32]15
$dtpkEndDate.Value = (New-Object -TypeName System.DateTime -ArgumentList @([System.Int32]2022,[System.Int32]1,[System.Int32]13,[System.Int32]4,[System.Int32]11,[System.Int32]32,[System.Int32]0))
#
#mnuMain
#
$mnuMain.BackColor = [System.Drawing.SystemColors]::ScrollBar
$mnuMain.Items.AddRange([System.Windows.Forms.ToolStripItem[]]@($mnuFile,$mnuEventClasses,$mnuHelp))
$mnuMain.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]0,[System.Int32]0))
$mnuMain.Name = [System.String]'mnuMain'
$mnuMain.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]933,[System.Int32]28))
$mnuMain.TabIndex = [System.Int32]21
$mnuMain.Text = [System.String]'MenuStrip1'
#
#mnuFile
#
$mnuFile.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($mnuFileExport,$MnuFileAppend,$mnuFileOverwrite,$ToolStripSeparator1,$SaveSettingsToolStripMenuItem,$LoadSettingsToolStripMenuItem))
$mnuFile.Name = [System.String]'mnuFile'
$mnuFile.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]44,[System.Int32]24))
$mnuFile.Text = [System.String]'File'
#
#mnuFileExport
#
$mnuFileExport.Name = [System.String]'mnuFileExport'
$mnuFileExport.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]189,[System.Int32]24))
$mnuFileExport.Text = [System.String]'Export Results'
$mnuFileExport.add_Click($mnuFileExport_click)
#
#MnuFileAppend
#
$MnuFileAppend.Name = [System.String]'MnuFileAppend'
$MnuFileAppend.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]189,[System.Int32]24))
$MnuFileAppend.Text = [System.String]'Append Export'
$MnuFileAppend.add_Click($MnuFileAppend_click)
#
#mnuFileOverwrite
#
$mnuFileOverwrite.Checked = $true
$mnuFileOverwrite.CheckState = [System.Windows.Forms.CheckState]::Checked
$mnuFileOverwrite.Name = [System.String]'mnuFileOverwrite'
$mnuFileOverwrite.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]189,[System.Int32]24))
$mnuFileOverwrite.Text = [System.String]'Overwrite Export'
$mnuFileOverwrite.add_Click($mnuFileOverwrite_click)
#
#ToolStripSeparator1
#
$ToolStripSeparator1.Name = [System.String]'ToolStripSeparator1'
$ToolStripSeparator1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]186,[System.Int32]6))
#
#SaveSettingsToolStripMenuItem
#
$SaveSettingsToolStripMenuItem.Name = [System.String]'SaveSettingsToolStripMenuItem'
$SaveSettingsToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]189,[System.Int32]24))
$SaveSettingsToolStripMenuItem.Text = [System.String]'Save Settings'
$SaveSettingsToolStripMenuItem.add_Click($mnuFileSaveSettings_click)
#
#LoadSettingsToolStripMenuItem
#
$LoadSettingsToolStripMenuItem.Name = [System.String]'LoadSettingsToolStripMenuItem'
$LoadSettingsToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]189,[System.Int32]24))
$LoadSettingsToolStripMenuItem.Text = [System.String]'Load Settings'
$LoadSettingsToolStripMenuItem.add_Click($mnuFileLoad_click)
#
#mnuEventClasses
#
$mnuEventClasses.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($FilterClasses,$mnuEventClassesAD,$mnuEventClassesApps,$mnuEventClassesAuthentication,$mnuEventClassesNetwork,$mnuEventClassesRDS,$mnuEventClassesSecurity,$mnuEventClassesServices,$mnuEventClassesSQL,$mnuEventClassesFirewall,$mnuEventClassesUpdate,$mnuEventClassesCrashes))
$mnuEventClasses.Name = [System.String]'mnuEventClasses'
$mnuEventClasses.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]108,[System.Int32]24))
$mnuEventClasses.Text = [System.String]'Event Classes'
#
#FilterClasses
#
$FilterClasses.Name = [System.String]'FilterClasses'
$FilterClasses.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]24))
$FilterClasses.Text = [System.String]'Different types of events to filter'
#
#mnuEventClassesAD
#
$mnuEventClassesAD.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($ADTopologyProblemsToolStripMenuItem,$LingeringObjectsToolStripMenuItem,$NoInboundNeighborsToolStripMenuItem,$DNSLookupIssuesToolStripMenuItem,$DCFailedInboundReplicationToolStripMenuItem))
$mnuEventClassesAD.Name = [System.String]'mnuEventClassesAD'
$mnuEventClassesAD.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]24))
$mnuEventClassesAD.Text = [System.String]'Active Directory'
$mnuEventClassesAD.ToolTipText = [System.String]'1388,1988,2042 - Replication lingering
1925,2087,2088 - replication DNS lookup problems
1925 - replication connectivity problems
1311 - replication topology problems'
$mnuEventClassesAD.add_Click($mnuEventClasses_click)
#
#ADTopologyProblemsToolStripMenuItem
#
$ADTopologyProblemsToolStripMenuItem.Checked = $true
$ADTopologyProblemsToolStripMenuItem.CheckOnClick = $true
$ADTopologyProblemsToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$ADTopologyProblemsToolStripMenuItem.Name = [System.String]'ADTopologyProblemsToolStripMenuItem'
$ADTopologyProblemsToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]327,[System.Int32]24))
$ADTopologyProblemsToolStripMenuItem.Text = [System.String]'1311 - AD Topology Problems'
#
#LingeringObjectsToolStripMenuItem
#
$LingeringObjectsToolStripMenuItem.Checked = $true
$LingeringObjectsToolStripMenuItem.CheckOnClick = $true
$LingeringObjectsToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$LingeringObjectsToolStripMenuItem.Name = [System.String]'LingeringObjectsToolStripMenuItem'
$LingeringObjectsToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]327,[System.Int32]24))
$LingeringObjectsToolStripMenuItem.Text = [System.String]'1388, 1988, 2042 - Lingering Objects'
#
#NoInboundNeighborsToolStripMenuItem
#
$NoInboundNeighborsToolStripMenuItem.Checked = $true
$NoInboundNeighborsToolStripMenuItem.CheckOnClick = $true
$NoInboundNeighborsToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$NoInboundNeighborsToolStripMenuItem.Name = [System.String]'NoInboundNeighborsToolStripMenuItem'
$NoInboundNeighborsToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]327,[System.Int32]24))
$NoInboundNeighborsToolStripMenuItem.Text = [System.String]'1925 - No Inbound Neighbors'
#
#DNSLookupIssuesToolStripMenuItem
#
$DNSLookupIssuesToolStripMenuItem.Checked = $true
$DNSLookupIssuesToolStripMenuItem.CheckOnClick = $true
$DNSLookupIssuesToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$DNSLookupIssuesToolStripMenuItem.Name = [System.String]'DNSLookupIssuesToolStripMenuItem'
$DNSLookupIssuesToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]327,[System.Int32]24))
$DNSLookupIssuesToolStripMenuItem.Text = [System.String]'1925, 2087, 2088 - DNS Lookup Issues'
#
#DCFailedInboundReplicationToolStripMenuItem
#
$DCFailedInboundReplicationToolStripMenuItem.Checked = $true
$DCFailedInboundReplicationToolStripMenuItem.CheckOnClick = $true
$DCFailedInboundReplicationToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$DCFailedInboundReplicationToolStripMenuItem.Name = [System.String]'DCFailedInboundReplicationToolStripMenuItem'
$DCFailedInboundReplicationToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]327,[System.Int32]24))
$DCFailedInboundReplicationToolStripMenuItem.Text = [System.String]'2042 - DC Failed Inbound Replication'
#
#mnuEventClassesApps
#
$mnuEventClassesApps.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($mnuEventClassesAppsIds0,$mnuEventClassesAppsIds1))
$mnuEventClassesApps.Name = [System.String]'mnuEventClassesApps'
$mnuEventClassesApps.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]24))
$mnuEventClassesApps.Text = [System.String]'Applications'
$mnuEventClassesApps.ToolTipText = [System.String]'1000 - Application error
1002 - Application hang'
$mnuEventClassesApps.add_Click($mnuEventClasses_click)
#
#mnuEventClassesAppsIds0
#
$mnuEventClassesAppsIds0.Checked = $true
$mnuEventClassesAppsIds0.CheckOnClick = $true
$mnuEventClassesAppsIds0.CheckState = [System.Windows.Forms.CheckState]::Checked
$mnuEventClassesAppsIds0.Name = [System.String]'mnuEventClassesAppsIds0'
$mnuEventClassesAppsIds0.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]241,[System.Int32]24))
$mnuEventClassesAppsIds0.Tag = [System.String]'Application:1000'
$mnuEventClassesAppsIds0.Text = [System.String]'1000 - Application Error'
#
#mnuEventClassesAppsIds1
#
$mnuEventClassesAppsIds1.Checked = $true
$mnuEventClassesAppsIds1.CheckOnClick = $true
$mnuEventClassesAppsIds1.CheckState = [System.Windows.Forms.CheckState]::Checked
$mnuEventClassesAppsIds1.Name = [System.String]'mnuEventClassesAppsIds1'
$mnuEventClassesAppsIds1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]241,[System.Int32]24))
$mnuEventClassesAppsIds1.Tag = [System.String]'Application:1002'
$mnuEventClassesAppsIds1.Text = [System.String]'1002 - Application Hang'
#
#mnuEventClassesAuthentication
#
$mnuEventClassesAuthentication.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($DCAttemptedToValidateCredentialsToolStripMenuItem,$KerberosPreAuthenticationFailedToolStripMenuItem,$KerberosTicketRequestedFailOrSuccessToolStripMenuItem,$KerberosServiceTicketRequestedFailOrSuccessToolStripMenuItem))
$mnuEventClassesAuthentication.Name = [System.String]'mnuEventClassesAuthentication'
$mnuEventClassesAuthentication.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]24))
$mnuEventClassesAuthentication.Text = [System.String]'Authentication'
$mnuEventClassesAuthentication.ToolTipText = [System.String]'4776 - DC attempted to validate credentials'
$mnuEventClassesAuthentication.add_Click($mnuEventClasses_click)
#
#DCAttemptedToValidateCredentialsToolStripMenuItem
#
$DCAttemptedToValidateCredentialsToolStripMenuItem.Checked = $true
$DCAttemptedToValidateCredentialsToolStripMenuItem.CheckOnClick = $true
$DCAttemptedToValidateCredentialsToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$DCAttemptedToValidateCredentialsToolStripMenuItem.Name = [System.String]'DCAttemptedToValidateCredentialsToolStripMenuItem'
$DCAttemptedToValidateCredentialsToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]459,[System.Int32]24))
$DCAttemptedToValidateCredentialsToolStripMenuItem.Text = [System.String]'DC Attempted To Validate Credentials'
#
#KerberosPreAuthenticationFailedToolStripMenuItem
#
$KerberosPreAuthenticationFailedToolStripMenuItem.Checked = $true
$KerberosPreAuthenticationFailedToolStripMenuItem.CheckOnClick = $true
$KerberosPreAuthenticationFailedToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$KerberosPreAuthenticationFailedToolStripMenuItem.Name = [System.String]'KerberosPreAuthenticationFailedToolStripMenuItem'
$KerberosPreAuthenticationFailedToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]459,[System.Int32]24))
$KerberosPreAuthenticationFailedToolStripMenuItem.Text = [System.String]'4771 Kerberos Pre-Authentication Failed'
#
#KerberosTicketRequestedFailOrSuccessToolStripMenuItem
#
$KerberosTicketRequestedFailOrSuccessToolStripMenuItem.Checked = $true
$KerberosTicketRequestedFailOrSuccessToolStripMenuItem.CheckOnClick = $true
$KerberosTicketRequestedFailOrSuccessToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$KerberosTicketRequestedFailOrSuccessToolStripMenuItem.Name = [System.String]'KerberosTicketRequestedFailOrSuccessToolStripMenuItem'
$KerberosTicketRequestedFailOrSuccessToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]459,[System.Int32]24))
$KerberosTicketRequestedFailOrSuccessToolStripMenuItem.Text = [System.String]'4768 - Kerberos Ticket Requested (Fail or Success)'
#
#KerberosServiceTicketRequestedFailOrSuccessToolStripMenuItem
#
$KerberosServiceTicketRequestedFailOrSuccessToolStripMenuItem.Checked = $true
$KerberosServiceTicketRequestedFailOrSuccessToolStripMenuItem.CheckOnClick = $true
$KerberosServiceTicketRequestedFailOrSuccessToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$KerberosServiceTicketRequestedFailOrSuccessToolStripMenuItem.Name = [System.String]'KerberosServiceTicketRequestedFailOrSuccessToolStripMenuItem'
$KerberosServiceTicketRequestedFailOrSuccessToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]459,[System.Int32]24))
$KerberosServiceTicketRequestedFailOrSuccessToolStripMenuItem.Text = [System.String]'4769 - Kerberos Service Ticket Requested (Fail or Success)'
#
#mnuEventClassesNetwork
#
$mnuEventClassesNetwork.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($ToolStripMenuItem2,$WindowsSocketsErrorToolStripMenuItem,$ErrorApplyingSecurityPolicyToolStripMenuItem,$NetworkConnectivityToolStripMenuItem,$WINSErrorsToolStripMenuItem,$DomainControllerNotResponsiveToolStripMenuItem))
$mnuEventClassesNetwork.Name = [System.String]'mnuEventClassesNetwork'
$mnuEventClassesNetwork.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]24))
$mnuEventClassesNetwork.Text = [System.String]'Network'
$mnuEventClassesNetwork.add_Click($mnuEventClasses_click)
#
#ToolStripMenuItem2
#
$ToolStripMenuItem2.Checked = $true
$ToolStripMenuItem2.CheckOnClick = $true
$ToolStripMenuItem2.CheckState = [System.Windows.Forms.CheckState]::Checked
$ToolStripMenuItem2.Name = [System.String]'ToolStripMenuItem2'
$ToolStripMenuItem2.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]354,[System.Int32]24))
$ToolStripMenuItem2.Text = [System.String]'21 - '
#
#WindowsSocketsErrorToolStripMenuItem
#
$WindowsSocketsErrorToolStripMenuItem.Checked = $true
$WindowsSocketsErrorToolStripMenuItem.CheckOnClick = $true
$WindowsSocketsErrorToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$WindowsSocketsErrorToolStripMenuItem.Name = [System.String]'WindowsSocketsErrorToolStripMenuItem'
$WindowsSocketsErrorToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]354,[System.Int32]24))
$WindowsSocketsErrorToolStripMenuItem.Text = [System.String]'22, 23 - Windows Sockets Error'
#
#ErrorApplyingSecurityPolicyToolStripMenuItem
#
$ErrorApplyingSecurityPolicyToolStripMenuItem.Checked = $true
$ErrorApplyingSecurityPolicyToolStripMenuItem.CheckOnClick = $true
$ErrorApplyingSecurityPolicyToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$ErrorApplyingSecurityPolicyToolStripMenuItem.Name = [System.String]'ErrorApplyingSecurityPolicyToolStripMenuItem'
$ErrorApplyingSecurityPolicyToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]354,[System.Int32]24))
$ErrorApplyingSecurityPolicyToolStripMenuItem.Text = [System.String]'40 - Error Applying Security Policy'
#
#NetworkConnectivityToolStripMenuItem
#
$NetworkConnectivityToolStripMenuItem.Checked = $true
$NetworkConnectivityToolStripMenuItem.CheckOnClick = $true
$NetworkConnectivityToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$NetworkConnectivityToolStripMenuItem.Name = [System.String]'NetworkConnectivityToolStripMenuItem'
$NetworkConnectivityToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]354,[System.Int32]24))
$NetworkConnectivityToolStripMenuItem.Text = [System.String]'2012 - Network Connectivity'
#
#WINSErrorsToolStripMenuItem
#
$WINSErrorsToolStripMenuItem.Checked = $true
$WINSErrorsToolStripMenuItem.CheckOnClick = $true
$WINSErrorsToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$WINSErrorsToolStripMenuItem.Name = [System.String]'WINSErrorsToolStripMenuItem'
$WINSErrorsToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]354,[System.Int32]24))
$WINSErrorsToolStripMenuItem.Text = [System.String]'4102, 4242, 4243, 4286 - WINS Errors'
#
#DomainControllerNotResponsiveToolStripMenuItem
#
$DomainControllerNotResponsiveToolStripMenuItem.Checked = $true
$DomainControllerNotResponsiveToolStripMenuItem.CheckOnClick = $true
$DomainControllerNotResponsiveToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$DomainControllerNotResponsiveToolStripMenuItem.Name = [System.String]'DomainControllerNotResponsiveToolStripMenuItem'
$DomainControllerNotResponsiveToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]354,[System.Int32]24))
$DomainControllerNotResponsiveToolStripMenuItem.Text = [System.String]'4401 - Domain Controller Not Responsive'
#
#mnuEventClassesRDS
#
$mnuEventClassesRDS.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($RDSSessionHostListeningAvailabilityToolStripMenuItem,$RDPClientActiveXIsTryingToConnectToolStripMenuItem,$RDSConnectionBrokerCommunicationToolStripMenuItem,$FailedToStartSessionMonitoringToolStripMenuItem))
$mnuEventClassesRDS.Name = [System.String]'mnuEventClassesRDS'
$mnuEventClassesRDS.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]24))
$mnuEventClassesRDS.Text = [System.String]'RDS/Terminal Server'
$mnuEventClassesRDS.ToolTipText = [System.String]'ID 4697 - New service installed
ID 106 - user registers scheduled task
ID 4702 - Scheduled task updated
ID 4699 - A Scheduled Task was deleted
ID 201 - Task scheduler successfully completed task'
$mnuEventClassesRDS.add_Click($mnuEventClasses_click)
#
#RDSSessionHostListeningAvailabilityToolStripMenuItem
#
$RDSSessionHostListeningAvailabilityToolStripMenuItem.Checked = $true
$RDSSessionHostListeningAvailabilityToolStripMenuItem.CheckOnClick = $true
$RDSSessionHostListeningAvailabilityToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$RDSSessionHostListeningAvailabilityToolStripMenuItem.Name = [System.String]'RDSSessionHostListeningAvailabilityToolStripMenuItem'
$RDSSessionHostListeningAvailabilityToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]426,[System.Int32]24))
$RDSSessionHostListeningAvailabilityToolStripMenuItem.Text = [System.String]'261, 262 - RDS Session Host Listening Availability'
#
#RDPClientActiveXIsTryingToConnectToolStripMenuItem
#
$RDPClientActiveXIsTryingToConnectToolStripMenuItem.Checked = $true
$RDPClientActiveXIsTryingToConnectToolStripMenuItem.CheckOnClick = $true
$RDPClientActiveXIsTryingToConnectToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$RDPClientActiveXIsTryingToConnectToolStripMenuItem.Name = [System.String]'RDPClientActiveXIsTryingToConnectToolStripMenuItem'
$RDPClientActiveXIsTryingToConnectToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]426,[System.Int32]24))
$RDPClientActiveXIsTryingToConnectToolStripMenuItem.Text = [System.String]'1024 - RDP ClientActiveX is Trying to Connect'
#
#RDSConnectionBrokerCommunicationToolStripMenuItem
#
$RDSConnectionBrokerCommunicationToolStripMenuItem.Checked = $true
$RDSConnectionBrokerCommunicationToolStripMenuItem.CheckOnClick = $true
$RDSConnectionBrokerCommunicationToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$RDSConnectionBrokerCommunicationToolStripMenuItem.Name = [System.String]'RDSConnectionBrokerCommunicationToolStripMenuItem'
$RDSConnectionBrokerCommunicationToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]426,[System.Int32]24))
$RDSConnectionBrokerCommunicationToolStripMenuItem.Text = [System.String]'1301, 1308 - RDS Connection Broker Communication'
#
#FailedToStartSessionMonitoringToolStripMenuItem
#
$FailedToStartSessionMonitoringToolStripMenuItem.Checked = $true
$FailedToStartSessionMonitoringToolStripMenuItem.CheckOnClick = $true
$FailedToStartSessionMonitoringToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$FailedToStartSessionMonitoringToolStripMenuItem.Name = [System.String]'FailedToStartSessionMonitoringToolStripMenuItem'
$FailedToStartSessionMonitoringToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]426,[System.Int32]24))
$FailedToStartSessionMonitoringToolStripMenuItem.Text = [System.String]'4608, 4609, 4871 - Failed to Start Session Monitoring'
#
#mnuEventClassesServices
#
$mnuEventClassesServices.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($NewServiceInstalledToolStripMenuItem,$ServiceTerminatedUnexpectedlyToolStripMenuItem,$WindowsFirewallICSServiceStoppedToolStripMenuItem,$NewServicesCreatedToolStripMenuItem))
$mnuEventClassesServices.Name = [System.String]'mnuEventClassesServices'
$mnuEventClassesServices.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]24))
$mnuEventClassesServices.Text = [System.String]'Services'
$mnuEventClassesServices.add_Click($mnuEventClasses_click)
#
#NewServiceInstalledToolStripMenuItem
#
$NewServiceInstalledToolStripMenuItem.Checked = $true
$NewServiceInstalledToolStripMenuItem.CheckOnClick = $true
$NewServiceInstalledToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$NewServiceInstalledToolStripMenuItem.Name = [System.String]'NewServiceInstalledToolStripMenuItem'
$NewServiceInstalledToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]379,[System.Int32]24))
$NewServiceInstalledToolStripMenuItem.Text = [System.String]'4697 - New Service Installed'
#
#ServiceTerminatedUnexpectedlyToolStripMenuItem
#
$ServiceTerminatedUnexpectedlyToolStripMenuItem.Checked = $true
$ServiceTerminatedUnexpectedlyToolStripMenuItem.CheckOnClick = $true
$ServiceTerminatedUnexpectedlyToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$ServiceTerminatedUnexpectedlyToolStripMenuItem.Name = [System.String]'ServiceTerminatedUnexpectedlyToolStripMenuItem'
$ServiceTerminatedUnexpectedlyToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]379,[System.Int32]24))
$ServiceTerminatedUnexpectedlyToolStripMenuItem.Text = [System.String]'7034 - Service Terminated Unexpectedly'
#
#WindowsFirewallICSServiceStoppedToolStripMenuItem
#
$WindowsFirewallICSServiceStoppedToolStripMenuItem.Checked = $true
$WindowsFirewallICSServiceStoppedToolStripMenuItem.CheckOnClick = $true
$WindowsFirewallICSServiceStoppedToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$WindowsFirewallICSServiceStoppedToolStripMenuItem.Name = [System.String]'WindowsFirewallICSServiceStoppedToolStripMenuItem'
$WindowsFirewallICSServiceStoppedToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]379,[System.Int32]24))
$WindowsFirewallICSServiceStoppedToolStripMenuItem.Text = [System.String]'7036 - Windows Firewall/ICS Service Stopped'
#
#NewServicesCreatedToolStripMenuItem
#
$NewServicesCreatedToolStripMenuItem.Checked = $true
$NewServicesCreatedToolStripMenuItem.CheckOnClick = $true
$NewServicesCreatedToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$NewServicesCreatedToolStripMenuItem.Name = [System.String]'NewServicesCreatedToolStripMenuItem'
$NewServicesCreatedToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]379,[System.Int32]24))
$NewServicesCreatedToolStripMenuItem.Text = [System.String]'7045 New Services Created'
#
#mnuEventClassesSQL
#
$mnuEventClassesSQL.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($CoudntAllocateSpaceToolStripMenuItem,$BackupFailedToolStripMenuItem,$SQLServerStoppedToolStripMenuItem,$TransactionLogFullToolStripMenuItem,$LogScanNumberInvalidToolStripMenuItem,$ReplicationAgentFailedToolStripMenuItem,$ConfigurationOptionAgentXPsChangedToolStripMenuItem,$FileOpenErrorToolStripMenuItem,$SQLServerTerminatingDueToStopRequestToolStripMenuItem,$OperatingSystemErrorToolStripMenuItem,$LoginFailedToolStripMenuItem,$CouldntConnectToServerToolStripMenuItem))
$mnuEventClassesSQL.Name = [System.String]'mnuEventClassesSQL'
$mnuEventClassesSQL.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]24))
$mnuEventClassesSQL.Text = [System.String]'SQL Server'
$mnuEventClassesSQL.add_Click($mnuEventClasses_click)
#
#CoudntAllocateSpaceToolStripMenuItem
#
$CoudntAllocateSpaceToolStripMenuItem.Checked = $true
$CoudntAllocateSpaceToolStripMenuItem.CheckOnClick = $true
$CoudntAllocateSpaceToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$CoudntAllocateSpaceToolStripMenuItem.Name = [System.String]'CoudntAllocateSpaceToolStripMenuItem'
$CoudntAllocateSpaceToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]429,[System.Int32]24))
$CoudntAllocateSpaceToolStripMenuItem.Text = [System.String]'1105 - Coudn''t Allocate Space'
#
#BackupFailedToolStripMenuItem
#
$BackupFailedToolStripMenuItem.Checked = $true
$BackupFailedToolStripMenuItem.CheckOnClick = $true
$BackupFailedToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$BackupFailedToolStripMenuItem.Name = [System.String]'BackupFailedToolStripMenuItem'
$BackupFailedToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]429,[System.Int32]24))
$BackupFailedToolStripMenuItem.Text = [System.String]'3041 - Backup Failed'
#
#SQLServerStoppedToolStripMenuItem
#
$SQLServerStoppedToolStripMenuItem.Checked = $true
$SQLServerStoppedToolStripMenuItem.CheckOnClick = $true
$SQLServerStoppedToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$SQLServerStoppedToolStripMenuItem.Name = [System.String]'SQLServerStoppedToolStripMenuItem'
$SQLServerStoppedToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]429,[System.Int32]24))
$SQLServerStoppedToolStripMenuItem.Text = [System.String]'7036 SQL Server Stopped'
#
#TransactionLogFullToolStripMenuItem
#
$TransactionLogFullToolStripMenuItem.Checked = $true
$TransactionLogFullToolStripMenuItem.CheckOnClick = $true
$TransactionLogFullToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$TransactionLogFullToolStripMenuItem.Name = [System.String]'TransactionLogFullToolStripMenuItem'
$TransactionLogFullToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]429,[System.Int32]24))
$TransactionLogFullToolStripMenuItem.Text = [System.String]'9002 - Transaction Log Full'
#
#LogScanNumberInvalidToolStripMenuItem
#
$LogScanNumberInvalidToolStripMenuItem.Checked = $true
$LogScanNumberInvalidToolStripMenuItem.CheckOnClick = $true
$LogScanNumberInvalidToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$LogScanNumberInvalidToolStripMenuItem.Name = [System.String]'LogScanNumberInvalidToolStripMenuItem'
$LogScanNumberInvalidToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]429,[System.Int32]24))
$LogScanNumberInvalidToolStripMenuItem.Text = [System.String]'9003 - Log Scan Number Invalid'
#
#ReplicationAgentFailedToolStripMenuItem
#
$ReplicationAgentFailedToolStripMenuItem.Checked = $true
$ReplicationAgentFailedToolStripMenuItem.CheckOnClick = $true
$ReplicationAgentFailedToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$ReplicationAgentFailedToolStripMenuItem.Name = [System.String]'ReplicationAgentFailedToolStripMenuItem'
$ReplicationAgentFailedToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]429,[System.Int32]24))
$ReplicationAgentFailedToolStripMenuItem.Text = [System.String]'14151 - Replication Agent Failed'
#
#ConfigurationOptionAgentXPsChangedToolStripMenuItem
#
$ConfigurationOptionAgentXPsChangedToolStripMenuItem.Checked = $true
$ConfigurationOptionAgentXPsChangedToolStripMenuItem.CheckOnClick = $true
$ConfigurationOptionAgentXPsChangedToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$ConfigurationOptionAgentXPsChangedToolStripMenuItem.Name = [System.String]'ConfigurationOptionAgentXPsChangedToolStripMenuItem'
$ConfigurationOptionAgentXPsChangedToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]429,[System.Int32]24))
$ConfigurationOptionAgentXPsChangedToolStripMenuItem.Text = [System.String]'15457 - Configuration Option ''Agent XPs'' Changed'
#
#FileOpenErrorToolStripMenuItem
#
$FileOpenErrorToolStripMenuItem.Checked = $true
$FileOpenErrorToolStripMenuItem.CheckOnClick = $true
$FileOpenErrorToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$FileOpenErrorToolStripMenuItem.Name = [System.String]'FileOpenErrorToolStripMenuItem'
$FileOpenErrorToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]429,[System.Int32]24))
$FileOpenErrorToolStripMenuItem.Text = [System.String]'17113 - File Open Error'
#
#SQLServerTerminatingDueToStopRequestToolStripMenuItem
#
$SQLServerTerminatingDueToStopRequestToolStripMenuItem.Checked = $true
$SQLServerTerminatingDueToStopRequestToolStripMenuItem.CheckOnClick = $true
$SQLServerTerminatingDueToStopRequestToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$SQLServerTerminatingDueToStopRequestToolStripMenuItem.Name = [System.String]'SQLServerTerminatingDueToStopRequestToolStripMenuItem'
$SQLServerTerminatingDueToStopRequestToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]429,[System.Int32]24))
$SQLServerTerminatingDueToStopRequestToolStripMenuItem.Text = [System.String]'17148 - SQL Server Terminating Due To Stop Request'
#
#OperatingSystemErrorToolStripMenuItem
#
$OperatingSystemErrorToolStripMenuItem.Checked = $true
$OperatingSystemErrorToolStripMenuItem.CheckOnClick = $true
$OperatingSystemErrorToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$OperatingSystemErrorToolStripMenuItem.Name = [System.String]'OperatingSystemErrorToolStripMenuItem'
$OperatingSystemErrorToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]429,[System.Int32]24))
$OperatingSystemErrorToolStripMenuItem.Text = [System.String]'17207 Operating System Error'
#
#LoginFailedToolStripMenuItem
#
$LoginFailedToolStripMenuItem.Checked = $true
$LoginFailedToolStripMenuItem.CheckOnClick = $true
$LoginFailedToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$LoginFailedToolStripMenuItem.Name = [System.String]'LoginFailedToolStripMenuItem'
$LoginFailedToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]429,[System.Int32]24))
$LoginFailedToolStripMenuItem.Text = [System.String]'18452, 18456 - Login Failed'
#
#CouldntConnectToServerToolStripMenuItem
#
$CouldntConnectToServerToolStripMenuItem.Checked = $true
$CouldntConnectToServerToolStripMenuItem.CheckOnClick = $true
$CouldntConnectToServerToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$CouldntConnectToServerToolStripMenuItem.Name = [System.String]'CouldntConnectToServerToolStripMenuItem'
$CouldntConnectToServerToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]429,[System.Int32]24))
$CouldntConnectToServerToolStripMenuItem.Text = [System.String]'18483 - Couldn''t Connect to Server'
#
#mnuEventClassesFirewall
#
$mnuEventClassesFirewall.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($RuleAddedToFirewallToolStripMenuItem,$RuleModifiedOnFirewallToolStripMenuItem,$SettingChangedOnFirewallToolStripMenuItem,$GroupPolicySettingForFirewallChangedToolStripMenuItem,$WindowsFirewallServiceStoppedToolStripMenuItem,$FirewallBlockedAppToolStripMenuItem,$NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem,$AppOrServiceBlockedByWindowsFilteringToolStripMenuItem,$ConnectionBlockedByWindowsFilteringToolStripMenuItem,$WindowsFilteringFilterChangedToolStripMenuItem,$WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem))
$mnuEventClassesFirewall.Name = [System.String]'mnuEventClassesFirewall'
$mnuEventClassesFirewall.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]24))
$mnuEventClassesFirewall.Text = [System.String]'Windows Firewall'
$mnuEventClassesFirewall.add_Click($mnuEventClasses_click)
#
#RuleAddedToFirewallToolStripMenuItem
#
$RuleAddedToFirewallToolStripMenuItem.Checked = $true
$RuleAddedToFirewallToolStripMenuItem.CheckOnClick = $true
$RuleAddedToFirewallToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$RuleAddedToFirewallToolStripMenuItem.Name = [System.String]'RuleAddedToFirewallToolStripMenuItem'
$RuleAddedToFirewallToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]549,[System.Int32]24))
$RuleAddedToFirewallToolStripMenuItem.Tag = [System.String]'Security:4946'
$RuleAddedToFirewallToolStripMenuItem.Text = [System.String]'4946 - Rule Added to Firewall'
#
#RuleModifiedOnFirewallToolStripMenuItem
#
$RuleModifiedOnFirewallToolStripMenuItem.Checked = $true
$RuleModifiedOnFirewallToolStripMenuItem.CheckOnClick = $true
$RuleModifiedOnFirewallToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$RuleModifiedOnFirewallToolStripMenuItem.Name = [System.String]'RuleModifiedOnFirewallToolStripMenuItem'
$RuleModifiedOnFirewallToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]549,[System.Int32]24))
$RuleModifiedOnFirewallToolStripMenuItem.Tag = [System.String]'Security:4947'
$RuleModifiedOnFirewallToolStripMenuItem.Text = [System.String]'4947 - Rule Modified on Firewall'
#
#SettingChangedOnFirewallToolStripMenuItem
#
$SettingChangedOnFirewallToolStripMenuItem.Checked = $true
$SettingChangedOnFirewallToolStripMenuItem.CheckOnClick = $true
$SettingChangedOnFirewallToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$SettingChangedOnFirewallToolStripMenuItem.Name = [System.String]'SettingChangedOnFirewallToolStripMenuItem'
$SettingChangedOnFirewallToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]549,[System.Int32]24))
$SettingChangedOnFirewallToolStripMenuItem.Tag = [System.String]'Security:4950'
$SettingChangedOnFirewallToolStripMenuItem.Text = [System.String]'4950 - Setting Changed on Firewall'
#
#GroupPolicySettingForFirewallChangedToolStripMenuItem
#
$GroupPolicySettingForFirewallChangedToolStripMenuItem.Checked = $true
$GroupPolicySettingForFirewallChangedToolStripMenuItem.CheckOnClick = $true
$GroupPolicySettingForFirewallChangedToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$GroupPolicySettingForFirewallChangedToolStripMenuItem.Name = [System.String]'GroupPolicySettingForFirewallChangedToolStripMenuItem'
$GroupPolicySettingForFirewallChangedToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]549,[System.Int32]24))
$GroupPolicySettingForFirewallChangedToolStripMenuItem.Tag = [System.String]'Security:4954'
$GroupPolicySettingForFirewallChangedToolStripMenuItem.Text = [System.String]'4954 - Group Policy Setting for Firewall Changed'
#
#WindowsFirewallServiceStoppedToolStripMenuItem
#
$WindowsFirewallServiceStoppedToolStripMenuItem.Checked = $true
$WindowsFirewallServiceStoppedToolStripMenuItem.CheckOnClick = $true
$WindowsFirewallServiceStoppedToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$WindowsFirewallServiceStoppedToolStripMenuItem.Name = [System.String]'WindowsFirewallServiceStoppedToolStripMenuItem'
$WindowsFirewallServiceStoppedToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]549,[System.Int32]24))
$WindowsFirewallServiceStoppedToolStripMenuItem.Tag = [System.String]'Security:5025'
$WindowsFirewallServiceStoppedToolStripMenuItem.Text = [System.String]'5025 - Windows Firewall Service Stopped'
#
#FirewallBlockedAppToolStripMenuItem
#
$FirewallBlockedAppToolStripMenuItem.Checked = $true
$FirewallBlockedAppToolStripMenuItem.CheckOnClick = $true
$FirewallBlockedAppToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$FirewallBlockedAppToolStripMenuItem.Name = [System.String]'FirewallBlockedAppToolStripMenuItem'
$FirewallBlockedAppToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]549,[System.Int32]24))
$FirewallBlockedAppToolStripMenuItem.Tag = [System.String]'Security:5031'
$FirewallBlockedAppToolStripMenuItem.Text = [System.String]'5031 - Firewall Blocked App'
#
#NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem
#
$NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem.Checked = $true
$NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem.CheckOnClick = $true
$NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem.Name = [System.String]'NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem'
$NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]549,[System.Int32]24))
$NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem.Tag = [System.String]'Security:5152,5153'
$NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem.Text = [System.String]'5152, 5153 - Network Packet Blcoked by Windows Filtering'
#
#AppOrServiceBlockedByWindowsFilteringToolStripMenuItem
#
$AppOrServiceBlockedByWindowsFilteringToolStripMenuItem.Checked = $true
$AppOrServiceBlockedByWindowsFilteringToolStripMenuItem.CheckOnClick = $true
$AppOrServiceBlockedByWindowsFilteringToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$AppOrServiceBlockedByWindowsFilteringToolStripMenuItem.Name = [System.String]'AppOrServiceBlockedByWindowsFilteringToolStripMenuItem'
$AppOrServiceBlockedByWindowsFilteringToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]549,[System.Int32]24))
$AppOrServiceBlockedByWindowsFilteringToolStripMenuItem.Tag = [System.String]'Security:5155'
$AppOrServiceBlockedByWindowsFilteringToolStripMenuItem.Text = [System.String]'5155 - App or Service Blocked by Windows Filtering'
#
#ConnectionBlockedByWindowsFilteringToolStripMenuItem
#
$ConnectionBlockedByWindowsFilteringToolStripMenuItem.Checked = $true
$ConnectionBlockedByWindowsFilteringToolStripMenuItem.CheckOnClick = $true
$ConnectionBlockedByWindowsFilteringToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$ConnectionBlockedByWindowsFilteringToolStripMenuItem.Name = [System.String]'ConnectionBlockedByWindowsFilteringToolStripMenuItem'
$ConnectionBlockedByWindowsFilteringToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]549,[System.Int32]24))
$ConnectionBlockedByWindowsFilteringToolStripMenuItem.Tag = [System.String]'Security:5157'
$ConnectionBlockedByWindowsFilteringToolStripMenuItem.Text = [System.String]'5157 - Connection Blocked by Windows Filtering'
#
#WindowsFilteringFilterChangedToolStripMenuItem
#
$WindowsFilteringFilterChangedToolStripMenuItem.Checked = $true
$WindowsFilteringFilterChangedToolStripMenuItem.CheckOnClick = $true
$WindowsFilteringFilterChangedToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$WindowsFilteringFilterChangedToolStripMenuItem.Name = [System.String]'WindowsFilteringFilterChangedToolStripMenuItem'
$WindowsFilteringFilterChangedToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]549,[System.Int32]24))
$WindowsFilteringFilterChangedToolStripMenuItem.Tag = [System.String]'Security:5447'
$WindowsFilteringFilterChangedToolStripMenuItem.Text = [System.String]'5447 - Windows Filtering Filter Changed'
#
#WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem
#
$WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem.Checked = $true
$WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem.CheckOnClick = $true
$WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem.Name = [System.String]'WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem'
$WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]549,[System.Int32]24))
$WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem.Tag = [System.String]'Security:7036'
$WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem.Text = [System.String]'7036 - Windows Firewall/ICS Service Stopped (or Print Spooler Started)'
#
#mnuEventClassesUpdate
#
$mnuEventClassesUpdate.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($AUClientCouldntContactWSUSServerToolStripMenuItem,$WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem,$RebootRequiredToolStripMenuItem,$ComputerNotSetToRebootToolStripMenuItem,$SuccessfullInstallationRequiringRebootToolStripMenuItem,$MicrosoftHotfixesSPsInstalledToolStripMenuItem,$FailedInstallationWithWarningStateToolStripMenuItem,$SignatureWasntPresentForHotfixToolStripMenuItem,$SuccessfulHotfixInstallationToolStripMenuItem))
$mnuEventClassesUpdate.Name = [System.String]'mnuEventClassesUpdate'
$mnuEventClassesUpdate.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]24))
$mnuEventClassesUpdate.Text = [System.String]'Windows Update'
$mnuEventClassesUpdate.add_Click($mnuEventClasses_click)
#
#AUClientCouldntContactWSUSServerToolStripMenuItem
#
$AUClientCouldntContactWSUSServerToolStripMenuItem.Checked = $true
$AUClientCouldntContactWSUSServerToolStripMenuItem.CheckOnClick = $true
$AUClientCouldntContactWSUSServerToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$AUClientCouldntContactWSUSServerToolStripMenuItem.Name = [System.String]'AUClientCouldntContactWSUSServerToolStripMenuItem'
$AUClientCouldntContactWSUSServerToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]400,[System.Int32]24))
$AUClientCouldntContactWSUSServerToolStripMenuItem.Tag = [System.String]'System:16'
$AUClientCouldntContactWSUSServerToolStripMenuItem.Text = [System.String]'16 - AU Client Couldn''t Contact WSUS Server'
#
#WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem
#
$WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem.Checked = $true
$WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem.CheckOnClick = $true
$WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem.Name = [System.String]'WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem'
$WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]400,[System.Int32]24))
$WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem.Tag = [System.String]'System:19'
$WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem.Text = [System.String]'19 - Windows Successfully Downloaded Updates'
#
#RebootRequiredToolStripMenuItem
#
$RebootRequiredToolStripMenuItem.Checked = $true
$RebootRequiredToolStripMenuItem.CheckOnClick = $true
$RebootRequiredToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$RebootRequiredToolStripMenuItem.Name = [System.String]'RebootRequiredToolStripMenuItem'
$RebootRequiredToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]400,[System.Int32]24))
$RebootRequiredToolStripMenuItem.Tag = [System.String]'System:20'
$RebootRequiredToolStripMenuItem.Text = [System.String]'20 - Reboot Required'
#
#ComputerNotSetToRebootToolStripMenuItem
#
$ComputerNotSetToRebootToolStripMenuItem.Checked = $true
$ComputerNotSetToRebootToolStripMenuItem.CheckOnClick = $true
$ComputerNotSetToRebootToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$ComputerNotSetToRebootToolStripMenuItem.Name = [System.String]'ComputerNotSetToRebootToolStripMenuItem'
$ComputerNotSetToRebootToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]400,[System.Int32]24))
$ComputerNotSetToRebootToolStripMenuItem.Tag = [System.String]'System:21'
$ComputerNotSetToRebootToolStripMenuItem.Text = [System.String]'21 - Computer Not Set To Reboot'
#
#SuccessfullInstallationRequiringRebootToolStripMenuItem
#
$SuccessfullInstallationRequiringRebootToolStripMenuItem.Checked = $true
$SuccessfullInstallationRequiringRebootToolStripMenuItem.CheckOnClick = $true
$SuccessfullInstallationRequiringRebootToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$SuccessfullInstallationRequiringRebootToolStripMenuItem.Name = [System.String]'SuccessfullInstallationRequiringRebootToolStripMenuItem'
$SuccessfullInstallationRequiringRebootToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]400,[System.Int32]24))
$SuccessfullInstallationRequiringRebootToolStripMenuItem.Tag = [System.String]'System:22'
$SuccessfullInstallationRequiringRebootToolStripMenuItem.Text = [System.String]'22 - Successfull Installation Requiring Reboot'
#
#MicrosoftHotfixesSPsInstalledToolStripMenuItem
#
$MicrosoftHotfixesSPsInstalledToolStripMenuItem.Checked = $true
$MicrosoftHotfixesSPsInstalledToolStripMenuItem.CheckOnClick = $true
$MicrosoftHotfixesSPsInstalledToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$MicrosoftHotfixesSPsInstalledToolStripMenuItem.Name = [System.String]'MicrosoftHotfixesSPsInstalledToolStripMenuItem'
$MicrosoftHotfixesSPsInstalledToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]400,[System.Int32]24))
$MicrosoftHotfixesSPsInstalledToolStripMenuItem.Text = [System.String]'4363 - Microsoft Hotfixes/SPs Installed'
#
#FailedInstallationWithWarningStateToolStripMenuItem
#
$FailedInstallationWithWarningStateToolStripMenuItem.Checked = $true
$FailedInstallationWithWarningStateToolStripMenuItem.CheckOnClick = $true
$FailedInstallationWithWarningStateToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$FailedInstallationWithWarningStateToolStripMenuItem.Name = [System.String]'FailedInstallationWithWarningStateToolStripMenuItem'
$FailedInstallationWithWarningStateToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]400,[System.Int32]24))
$FailedInstallationWithWarningStateToolStripMenuItem.Text = [System.String]'4367 - Failed Installation With Warning State'
#
#SignatureWasntPresentForHotfixToolStripMenuItem
#
$SignatureWasntPresentForHotfixToolStripMenuItem.Checked = $true
$SignatureWasntPresentForHotfixToolStripMenuItem.CheckOnClick = $true
$SignatureWasntPresentForHotfixToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$SignatureWasntPresentForHotfixToolStripMenuItem.Name = [System.String]'SignatureWasntPresentForHotfixToolStripMenuItem'
$SignatureWasntPresentForHotfixToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]400,[System.Int32]24))
$SignatureWasntPresentForHotfixToolStripMenuItem.Text = [System.String]'4373 - Signature Wasn''t Present for Hotfix'
#
#SuccessfulHotfixInstallationToolStripMenuItem
#
$SuccessfulHotfixInstallationToolStripMenuItem.Checked = $true
$SuccessfulHotfixInstallationToolStripMenuItem.CheckOnClick = $true
$SuccessfulHotfixInstallationToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$SuccessfulHotfixInstallationToolStripMenuItem.Name = [System.String]'SuccessfulHotfixInstallationToolStripMenuItem'
$SuccessfulHotfixInstallationToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]400,[System.Int32]24))
$SuccessfulHotfixInstallationToolStripMenuItem.Text = [System.String]'4377 - Successful Hotfix Installation'
#
#mnuEventClassesCrashes
#
$mnuEventClassesCrashes.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($SystemRebootedWithoutCleanShutdownToolStripMenuItem,$BSODToolStripMenuItem,$UserOrAppInitiatedRestartToolStripMenuItem,$CleanShutdownToolStripMenuItem,$DirtyShutdownToolStripMenuItem))
$mnuEventClassesCrashes.Name = [System.String]'mnuEventClassesCrashes'
$mnuEventClassesCrashes.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]24))
$mnuEventClassesCrashes.Text = [System.String]'Crashes, rebootes, and misc'
$mnuEventClassesCrashes.ToolTipText = [System.String]'1001 BSOD
41 System rebooting without clean shutdown (crash, power loss, etc)
1074 User or app initiated restart
6006 Clean shutodwn
6008 Dirty shutdown'
$mnuEventClassesCrashes.add_Click($mnuEventClasses_click)
#
#SystemRebootedWithoutCleanShutdownToolStripMenuItem
#
$SystemRebootedWithoutCleanShutdownToolStripMenuItem.Checked = $true
$SystemRebootedWithoutCleanShutdownToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$SystemRebootedWithoutCleanShutdownToolStripMenuItem.Name = [System.String]'SystemRebootedWithoutCleanShutdownToolStripMenuItem'
$SystemRebootedWithoutCleanShutdownToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]393,[System.Int32]24))
$SystemRebootedWithoutCleanShutdownToolStripMenuItem.Tag = [System.String]'System:41'
$SystemRebootedWithoutCleanShutdownToolStripMenuItem.Text = [System.String]'41 - System Rebooted Without Clean Shutdown'
#
#BSODToolStripMenuItem
#
$BSODToolStripMenuItem.Checked = $true
$BSODToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$BSODToolStripMenuItem.Name = [System.String]'BSODToolStripMenuItem'
$BSODToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]393,[System.Int32]24))
$BSODToolStripMenuItem.Tag = [System.String]'System:1001'
$BSODToolStripMenuItem.Text = [System.String]'1001 - BSOD'
#
#UserOrAppInitiatedRestartToolStripMenuItem
#
$UserOrAppInitiatedRestartToolStripMenuItem.Checked = $true
$UserOrAppInitiatedRestartToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$UserOrAppInitiatedRestartToolStripMenuItem.Name = [System.String]'UserOrAppInitiatedRestartToolStripMenuItem'
$UserOrAppInitiatedRestartToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]393,[System.Int32]24))
$UserOrAppInitiatedRestartToolStripMenuItem.Tag = [System.String]'System:1074'
$UserOrAppInitiatedRestartToolStripMenuItem.Text = [System.String]'1074 - User or App Initiated Restart'
#
#CleanShutdownToolStripMenuItem
#
$CleanShutdownToolStripMenuItem.Checked = $true
$CleanShutdownToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$CleanShutdownToolStripMenuItem.Name = [System.String]'CleanShutdownToolStripMenuItem'
$CleanShutdownToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]393,[System.Int32]24))
$CleanShutdownToolStripMenuItem.Tag = [System.String]'System:6006'
$CleanShutdownToolStripMenuItem.Text = [System.String]'6006 - Clean Shutdown'
#
#DirtyShutdownToolStripMenuItem
#
$DirtyShutdownToolStripMenuItem.Checked = $true
$DirtyShutdownToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$DirtyShutdownToolStripMenuItem.Name = [System.String]'DirtyShutdownToolStripMenuItem'
$DirtyShutdownToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]393,[System.Int32]24))
$DirtyShutdownToolStripMenuItem.Tag = [System.String]'System:6008'
$DirtyShutdownToolStripMenuItem.Text = [System.String]'6008 - Dirty Shutdown'
#
#mnuHelp
#
$mnuHelp.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($AboutToolStripMenuItem,$HelpToolStripMenuItem1))
$mnuHelp.Name = [System.String]'mnuHelp'
$mnuHelp.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]53,[System.Int32]24))
$mnuHelp.Text = [System.String]'Help'
#
#AboutToolStripMenuItem
#
$AboutToolStripMenuItem.Name = [System.String]'AboutToolStripMenuItem'
$AboutToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]152,[System.Int32]24))
$AboutToolStripMenuItem.Text = [System.String]'About'
$AboutToolStripMenuItem.add_Click($mnuHelpAbout_click)
#
#HelpToolStripMenuItem1
#
$HelpToolStripMenuItem1.Name = [System.String]'HelpToolStripMenuItem1'
$HelpToolStripMenuItem1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]152,[System.Int32]24))
$HelpToolStripMenuItem1.Text = [System.String]'Help'
$HelpToolStripMenuItem1.add_Click($mnuHelpHelp_click)
#
#grpbxEventsOfInterest
#
$grpbxEventsOfInterest.Anchor = ([System.Windows.Forms.AnchorStyles][System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right)
$grpbxEventsOfInterest.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]727,[System.Int32]32))
$grpbxEventsOfInterest.Name = [System.String]'grpbxEventsOfInterest'
$grpbxEventsOfInterest.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]203,[System.Int32]530))
$grpbxEventsOfInterest.TabIndex = [System.Int32]22
$grpbxEventsOfInterest.TabStop = $false
$grpbxEventsOfInterest.Text = [System.String]'Events of Interest'
#
#Control1
#
$Control1.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]10,[System.Int32]10))
$Control1.Name = [System.String]'Control1'
$Control1.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]0,[System.Int32]0))
$Control1.TabIndex = [System.Int32]24
#
#lblEndDateTime
#
$lblEndDateTime.Location = (New-Object -TypeName System.Drawing.Point -ArgumentList @([System.Int32]230,[System.Int32]28))
$lblEndDateTime.Name = [System.String]'lblEndDateTime'
$lblEndDateTime.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]52,[System.Int32]34))
$lblEndDateTime.TabIndex = [System.Int32]25
$lblEndDateTime.Text = [System.String]'End Time'
$lblEndDateTime.TextAlign = [System.Drawing.ContentAlignment]::BottomRight
#
#mnuEventClassesSecurity
#
$mnuEventClassesSecurity.DropDownItems.AddRange([System.Windows.Forms.ToolStripItem[]]@($UserAccountCreatedToolStripMenuItem,$UserAccountEnabledToolStripMenuItem,$PasswordResetAttemptToolStripMenuItem,$GroupMembershipChangesToolStripMenuItem,$AccountLockoutToolStripMenuItem))
$mnuEventClassesSecurity.Name = [System.String]'mnuEventClassesSecurity'
$mnuEventClassesSecurity.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]293,[System.Int32]24))
$mnuEventClassesSecurity.Text = [System.String]'Security'
$mnuEventClassesSecurity.add_Click($mnuEventClasses_click)
#
#UserAccountCreatedToolStripMenuItem
#
$UserAccountCreatedToolStripMenuItem.Checked = $true
$UserAccountCreatedToolStripMenuItem.CheckOnClick = $true
$UserAccountCreatedToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$UserAccountCreatedToolStripMenuItem.Name = [System.String]'UserAccountCreatedToolStripMenuItem'
$UserAccountCreatedToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]388,[System.Int32]24))
$UserAccountCreatedToolStripMenuItem.Tag = [System.String]'Security:4720'
$UserAccountCreatedToolStripMenuItem.Text = [System.String]'4720 - User Account Created'
#
#UserAccountEnabledToolStripMenuItem
#
$UserAccountEnabledToolStripMenuItem.Checked = $true
$UserAccountEnabledToolStripMenuItem.CheckOnClick = $true
$UserAccountEnabledToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$UserAccountEnabledToolStripMenuItem.Name = [System.String]'UserAccountEnabledToolStripMenuItem'
$UserAccountEnabledToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]388,[System.Int32]24))
$UserAccountEnabledToolStripMenuItem.Tag = [System.String]'Security:4722'
$UserAccountEnabledToolStripMenuItem.Text = [System.String]'4722 - User Account Enabled'
#
#PasswordResetAttemptToolStripMenuItem
#
$PasswordResetAttemptToolStripMenuItem.Checked = $true
$PasswordResetAttemptToolStripMenuItem.CheckOnClick = $true
$PasswordResetAttemptToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$PasswordResetAttemptToolStripMenuItem.Name = [System.String]'PasswordResetAttemptToolStripMenuItem'
$PasswordResetAttemptToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]388,[System.Int32]24))
$PasswordResetAttemptToolStripMenuItem.Tag = [System.String]'Security:4724'
$PasswordResetAttemptToolStripMenuItem.Text = [System.String]'4724 - Password Reset Attempt'
#
#GroupMembershipChangesToolStripMenuItem
#
$GroupMembershipChangesToolStripMenuItem.Checked = $true
$GroupMembershipChangesToolStripMenuItem.CheckOnClick = $true
$GroupMembershipChangesToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$GroupMembershipChangesToolStripMenuItem.Name = [System.String]'GroupMembershipChangesToolStripMenuItem'
$GroupMembershipChangesToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]388,[System.Int32]24))
$GroupMembershipChangesToolStripMenuItem.Tag = [System.String]'Security:4728,4732,4756'
$GroupMembershipChangesToolStripMenuItem.Text = [System.String]'4728/4732/4756 - Group Membership Changes'
#
#AccountLockoutToolStripMenuItem
#
$AccountLockoutToolStripMenuItem.Checked = $true
$AccountLockoutToolStripMenuItem.CheckOnClick = $true
$AccountLockoutToolStripMenuItem.CheckState = [System.Windows.Forms.CheckState]::Checked
$AccountLockoutToolStripMenuItem.Name = [System.String]'AccountLockoutToolStripMenuItem'
$AccountLockoutToolStripMenuItem.Size = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]388,[System.Int32]24))
$AccountLockoutToolStripMenuItem.Tag = [System.String]'Security:4720'
$AccountLockoutToolStripMenuItem.Text = [System.String]'4740 - Account Lockout'
#
#frmEventFiend
#
$frmEventFiend.BackColor = [System.Drawing.SystemColors]::Control
$frmEventFiend.ClientSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]933,[System.Int32]564))
$frmEventFiend.Controls.Add($lblEndDateTime)
$frmEventFiend.Controls.Add($grpbxEventsOfInterest)
$frmEventFiend.Controls.Add($dtpkEndDate)
$frmEventFiend.Controls.Add($dtpkEndTime)
$frmEventFiend.Controls.Add($grpbxRemoteServer)
$frmEventFiend.Controls.Add($btnGetEvents)
$frmEventFiend.Controls.Add($lblNumEvents)
$frmEventFiend.Controls.Add($lblNumUniqueTitle)
$frmEventFiend.Controls.Add($GrpbxUniqueBy)
$frmEventFiend.Controls.Add($lblStartDateTime)
$frmEventFiend.Controls.Add($dtpkStartTime)
$frmEventFiend.Controls.Add($lblDetails)
$frmEventFiend.Controls.Add($grpbxLevel)
$frmEventFiend.Controls.Add($txtEventMessages)
$frmEventFiend.Controls.Add($dgvLogsList)
$frmEventFiend.Controls.Add($dtpkStartDate)
$frmEventFiend.Controls.Add($dgvEvents)
$frmEventFiend.Controls.Add($mnuMain)
$frmEventFiend.Controls.Add($Control1)
$frmEventFiend.MinimumSize = (New-Object -TypeName System.Drawing.Size -ArgumentList @([System.Int32]951,[System.Int32]611))
$frmEventFiend.Text = [System.String]'Event Fiend'
$frmEventFiend.add_Load($form_load)
([System.ComponentModel.ISupportInitialize]$dgvEvents).EndInit()
([System.ComponentModel.ISupportInitialize]$dgvLogsList).EndInit()
$grpbxLevel.ResumeLayout($false)
$GrpbxUniqueBy.ResumeLayout($false)
$grpbxRemoteServer.ResumeLayout($false)
$grpbxRemoteServer.PerformLayout()
$mnuMain.ResumeLayout($false)
$mnuMain.PerformLayout()
$frmEventFiend.ResumeLayout($false)
$frmEventFiend.PerformLayout()
Add-Member -InputObject $frmEventFiend -Name base -Value $base -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name dgvEvents -Value $dgvEvents -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name dtpkStartDate -Value $dtpkStartDate -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name dgvLogsList -Value $dgvLogsList -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name txtEventMessages -Value $txtEventMessages -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name grpbxLevel -Value $grpbxLevel -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name lblLogs -Value $lblLogs -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name chkbxError -Value $chkbxError -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name chkBxCritical -Value $chkBxCritical -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name chkbxWarning -Value $chkbxWarning -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name lblDetails -Value $lblDetails -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name dtpkStartTime -Value $dtpkStartTime -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name lblStartDateTime -Value $lblStartDateTime -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name GrpbxUniqueBy -Value $GrpbxUniqueBy -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name rbNotUnique -Value $rbNotUnique -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name rbUniqueByID -Value $rbUniqueByID -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name rbUniqueByMessage -Value $rbUniqueByMessage -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name lblNumUniqueTitle -Value $lblNumUniqueTitle -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name lblNumEvents -Value $lblNumEvents -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name btnGetEvents -Value $btnGetEvents -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name grpbxRemoteServer -Value $grpbxRemoteServer -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name btnConnectRemote -Value $btnConnectRemote -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name lblPassword -Value $lblPassword -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name lblUserName -Value $lblUserName -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name lblServerName -Value $lblServerName -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name txtPassword -Value $txtPassword -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name txtUserName -Value $txtUserName -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name txtServerName -Value $txtServerName -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name dtpkEndTime -Value $dtpkEndTime -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name dtpkEndDate -Value $dtpkEndDate -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuMain -Value $mnuMain -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuFile -Value $mnuFile -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuFileExport -Value $mnuFileExport -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name MnuFileAppend -Value $MnuFileAppend -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuFileOverwrite -Value $mnuFileOverwrite -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name ToolStripSeparator1 -Value $ToolStripSeparator1 -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name SaveSettingsToolStripMenuItem -Value $SaveSettingsToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name LoadSettingsToolStripMenuItem -Value $LoadSettingsToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClasses -Value $mnuEventClasses -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name FilterClasses -Value $FilterClasses -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClassesAD -Value $mnuEventClassesAD -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name ADTopologyProblemsToolStripMenuItem -Value $ADTopologyProblemsToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name LingeringObjectsToolStripMenuItem -Value $LingeringObjectsToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name NoInboundNeighborsToolStripMenuItem -Value $NoInboundNeighborsToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name DNSLookupIssuesToolStripMenuItem -Value $DNSLookupIssuesToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name DCFailedInboundReplicationToolStripMenuItem -Value $DCFailedInboundReplicationToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClassesApps -Value $mnuEventClassesApps -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClassesAppsIds0 -Value $mnuEventClassesAppsIds0 -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClassesAppsIds1 -Value $mnuEventClassesAppsIds1 -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClassesAuthentication -Value $mnuEventClassesAuthentication -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name DCAttemptedToValidateCredentialsToolStripMenuItem -Value $DCAttemptedToValidateCredentialsToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name KerberosPreAuthenticationFailedToolStripMenuItem -Value $KerberosPreAuthenticationFailedToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name KerberosTicketRequestedFailOrSuccessToolStripMenuItem -Value $KerberosTicketRequestedFailOrSuccessToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name KerberosServiceTicketRequestedFailOrSuccessToolStripMenuItem -Value $KerberosServiceTicketRequestedFailOrSuccessToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClassesNetwork -Value $mnuEventClassesNetwork -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name ToolStripMenuItem2 -Value $ToolStripMenuItem2 -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name WindowsSocketsErrorToolStripMenuItem -Value $WindowsSocketsErrorToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name ErrorApplyingSecurityPolicyToolStripMenuItem -Value $ErrorApplyingSecurityPolicyToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name NetworkConnectivityToolStripMenuItem -Value $NetworkConnectivityToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name WINSErrorsToolStripMenuItem -Value $WINSErrorsToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name DomainControllerNotResponsiveToolStripMenuItem -Value $DomainControllerNotResponsiveToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClassesRDS -Value $mnuEventClassesRDS -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name RDSSessionHostListeningAvailabilityToolStripMenuItem -Value $RDSSessionHostListeningAvailabilityToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name RDPClientActiveXIsTryingToConnectToolStripMenuItem -Value $RDPClientActiveXIsTryingToConnectToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name RDSConnectionBrokerCommunicationToolStripMenuItem -Value $RDSConnectionBrokerCommunicationToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name FailedToStartSessionMonitoringToolStripMenuItem -Value $FailedToStartSessionMonitoringToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClassesSecurity -Value $mnuEventClassesSecurity -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name UserAccountCreatedToolStripMenuItem -Value $UserAccountCreatedToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name UserAccountEnabledToolStripMenuItem -Value $UserAccountEnabledToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name PasswordResetAttemptToolStripMenuItem -Value $PasswordResetAttemptToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name GroupMembershipChangesToolStripMenuItem -Value $GroupMembershipChangesToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name AccountLockoutToolStripMenuItem -Value $AccountLockoutToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClassesServices -Value $mnuEventClassesServices -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name NewServiceInstalledToolStripMenuItem -Value $NewServiceInstalledToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name ServiceTerminatedUnexpectedlyToolStripMenuItem -Value $ServiceTerminatedUnexpectedlyToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name WindowsFirewallICSServiceStoppedToolStripMenuItem -Value $WindowsFirewallICSServiceStoppedToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name NewServicesCreatedToolStripMenuItem -Value $NewServicesCreatedToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClassesSQL -Value $mnuEventClassesSQL -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name CoudntAllocateSpaceToolStripMenuItem -Value $CoudntAllocateSpaceToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name BackupFailedToolStripMenuItem -Value $BackupFailedToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name SQLServerStoppedToolStripMenuItem -Value $SQLServerStoppedToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name TransactionLogFullToolStripMenuItem -Value $TransactionLogFullToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name LogScanNumberInvalidToolStripMenuItem -Value $LogScanNumberInvalidToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name ReplicationAgentFailedToolStripMenuItem -Value $ReplicationAgentFailedToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name ConfigurationOptionAgentXPsChangedToolStripMenuItem -Value $ConfigurationOptionAgentXPsChangedToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name FileOpenErrorToolStripMenuItem -Value $FileOpenErrorToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name SQLServerTerminatingDueToStopRequestToolStripMenuItem -Value $SQLServerTerminatingDueToStopRequestToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name OperatingSystemErrorToolStripMenuItem -Value $OperatingSystemErrorToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name LoginFailedToolStripMenuItem -Value $LoginFailedToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name CouldntConnectToServerToolStripMenuItem -Value $CouldntConnectToServerToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClassesFirewall -Value $mnuEventClassesFirewall -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name RuleAddedToFirewallToolStripMenuItem -Value $RuleAddedToFirewallToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name RuleModifiedOnFirewallToolStripMenuItem -Value $RuleModifiedOnFirewallToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name SettingChangedOnFirewallToolStripMenuItem -Value $SettingChangedOnFirewallToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name GroupPolicySettingForFirewallChangedToolStripMenuItem -Value $GroupPolicySettingForFirewallChangedToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name WindowsFirewallServiceStoppedToolStripMenuItem -Value $WindowsFirewallServiceStoppedToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name FirewallBlockedAppToolStripMenuItem -Value $FirewallBlockedAppToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem -Value $NetworkPacketBlcokedByWindowsFilteringToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name AppOrServiceBlockedByWindowsFilteringToolStripMenuItem -Value $AppOrServiceBlockedByWindowsFilteringToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name ConnectionBlockedByWindowsFilteringToolStripMenuItem -Value $ConnectionBlockedByWindowsFilteringToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name WindowsFilteringFilterChangedToolStripMenuItem -Value $WindowsFilteringFilterChangedToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem -Value $WindowsFirewallICSServiceStoppedorPrintSpoolerToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClassesUpdate -Value $mnuEventClassesUpdate -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name AUClientCouldntContactWSUSServerToolStripMenuItem -Value $AUClientCouldntContactWSUSServerToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem -Value $WindowsSuccessfullyDownloadedUpdatesToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name RebootRequiredToolStripMenuItem -Value $RebootRequiredToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name ComputerNotSetToRebootToolStripMenuItem -Value $ComputerNotSetToRebootToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name SuccessfullInstallationRequiringRebootToolStripMenuItem -Value $SuccessfullInstallationRequiringRebootToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name MicrosoftHotfixesSPsInstalledToolStripMenuItem -Value $MicrosoftHotfixesSPsInstalledToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name FailedInstallationWithWarningStateToolStripMenuItem -Value $FailedInstallationWithWarningStateToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name SignatureWasntPresentForHotfixToolStripMenuItem -Value $SignatureWasntPresentForHotfixToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name SuccessfulHotfixInstallationToolStripMenuItem -Value $SuccessfulHotfixInstallationToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuEventClassesCrashes -Value $mnuEventClassesCrashes -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name SystemRebootedWithoutCleanShutdownToolStripMenuItem -Value $SystemRebootedWithoutCleanShutdownToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name BSODToolStripMenuItem -Value $BSODToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name UserOrAppInitiatedRestartToolStripMenuItem -Value $UserOrAppInitiatedRestartToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name CleanShutdownToolStripMenuItem -Value $CleanShutdownToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name DirtyShutdownToolStripMenuItem -Value $DirtyShutdownToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name mnuHelp -Value $mnuHelp -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name AboutToolStripMenuItem -Value $AboutToolStripMenuItem -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name HelpToolStripMenuItem1 -Value $HelpToolStripMenuItem1 -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name grpbxEventsOfInterest -Value $grpbxEventsOfInterest -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name Control1 -Value $Control1 -MemberType NoteProperty
Add-Member -InputObject $frmEventFiend -Name lblEndDateTime -Value $lblEndDateTime -MemberType NoteProperty
}
. InitializeComponent
