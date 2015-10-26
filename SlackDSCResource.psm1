[DscResource()]
class SlackMessage{

    [DscProperty(Mandatory)]
    [string]$UserName

    [DscProperty(Key)]
    [string]$Token

    [DscProperty(Mandatory)]
    [string]$Channel

    [DscProperty(Mandatory)]
    [string]$Text

    [void] Set() {
        Invoke-RestMethod -Uri https://slack.com/api/chat.postMessage -Body @{
            token    = "$($this.token)"
            channel  = "$($this.channel)"
            username = "$($this.username)"
            text     = "$($this.Text)"
        }
    }

    [bool] Test() { return $false }
    [SlackMessage] Get() { return $this }
}