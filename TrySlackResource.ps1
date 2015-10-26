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