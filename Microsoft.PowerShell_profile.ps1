#   fergz PS Profile

function csearch {
    param (
        [Parameter(Mandatory=$true,
                   Position=0,
                   ParameterSetName="Name",
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   HelpMessage="String to search for")]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [string]
        $SearchTerm
    )
    choco search $SearchTerm
}
function start-debloat1 {
    Invoke-WebRequest -useb https://git.io/debloat|Invoke-Expression
}

function start-debloat2 {
    iwr -useb https://christitus.com/win | iex
}

function signer {
    param (
        [Parameter(Mandatory=$true,
        Position=0,
        ParameterSetName="Name",
        ValueFromPipeline=$true,
        ValueFromPipelineByPropertyName=$true,
        HelpMessage="file to sign")]
[ValidateNotNullOrEmpty()]
[SupportsWildcards()]
[string]
$filename
    )
    signtool sign /td sha256 /fd sha256 /ac e:\000_selfsign_proj\LocalHost_Root_CA.DER.cer /f e:\000_selfsign_proj\LocalHost_PK.pfx /p Zxcvzxcv11. /tr http://sha256timestamp.ws.symantec.com/sha256/timestamp .\$filename
}



$MODULES = "C:\Users\x\Documents\WindowsPowerShell\Modules"
$SCRIPTS = "C:\Users\x\Documents\WindowsPowerShell\Scripts"
$7DAYS = "E:\Steam\steamapps\common\7 Days To Die"
$7EASY = "$7DAYS\EasyAntiCheat.Client.dll"
$S5DOMAIN = "c-74-91-113-251.managed-ded.premium-chicago.nfoservers.com"
$S5IP = "74.91.113.251:26902"
$NAPVP = "148.72.167.29:41333"
$ULTRA = "51.222.245.184:26900"
$SALTY = "138.199.46.226:29202"
$SLEEPLESS = "steam://connect/104.243.44.40:26900"
$PUBLIC = "steam://connect/185.209.179.61:25008"




Write-Output "MODULES : $MODULES"
Write-Output "SCRIPTS : $SCRIPTS"
Write-Output "7DAYS : $7DAYS"
Write-Output "7EASY : $7EASY"
Write-Output "S5DOMAIN : $S5DOMAIN"
Write-Output "S5IP : $S5IP"
Write-Output "NAPVP : $NAPVP"
Write-Output "SLEEPLESS : $SLEEPLESS"
Write-Output "PUBLIC : $PUBLIC"



function gcr {
    param (
        [Parameter(Mandatory=$true,
                   Position=0,
                   ParameterSetName="RepoURL",
                   ValueFromPipeline=$true,
                   ValueFromPipelineByPropertyName=$true,
                   HelpMessage="Git repo to clone")]
        [ValidateNotNullOrEmpty()]
        [string]
        $GitRepo
    )
    git clone --recurse-submodules $GitRepo
}

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}
