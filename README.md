PowerShell Slack DSC Provider 
-

Running PowerShell v5.0? Grab it from the [PowerShell Gallery](https://www.powershellgallery.com/packages/SlackDSCResource/) 

`Install-Module -Name SlackDSCResource`


```powershell
Configuration TrySlack {

    Import-DSCResource -ModuleName SlackDSCResource

    SlackMessage TrySlack {
        UserName = "<your username>"
        Token    = "< generate a token https://api.slack.com/web#auth >"
        Channel  = "<your channel>"
        Text     = "Hello Slack from PowerShell"
    }
}

TrySlack
Start-DscConfiguration -Wait -Verbose -Force TrySlack

```