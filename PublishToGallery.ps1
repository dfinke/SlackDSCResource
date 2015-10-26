$p = @{
    Name = "SlackDSCResource"
    NuGetApiKey = $NuGetApiKey
    LicenseUri = "https://raw.githubusercontent.com/dfinke/SlackDSCResource/master/LICENSE.txt"
    Tag = "Slack","DSC"
    ReleaseNote = "PowerShell DSC Resource provider the lets you send messages to slack channels"
    ProjectUri = "https://github.com/dfinke/SlackDSCResource"
}

Publish-Module @p