<#
BuildRepo.ps1

By: Justin Paul <justin@jpaul.me>

What it does:
Add All ISOs to a Content Repo, if the repo doesnt exist, create it first.
#>
$vCenterIp = 'vCenter.IP.or.fqdn' # vCenter server IP or URL
$vCenterUser = 'username' # vCenter username with permissions to create or add content library items
$vCenterPass = 'password' # password
$RepoName = 'ISOs' # Name for the Content Library to add content to or create
$ISOPath = 'E:\' # Path to ISO files to upload (note it will upload ALL isos found in this folder)
$Datastore = 'datastore' # the datastore to create the Content Library in (only used if library doesnt already exit)

# Ignore unsigned ssl certificates and increase the http timeout value
Set-PowerCLIConfiguration -InvalidCertificateAction Ignore -Confirm:$false
Set-PowerCLIConfiguration -WebOperationTimeoutSeconds 3600 -Scope Session

# Connect to vCenter server
Connect-VIServer -Server $vCenterIp -User $vCenterUser -Password $vCenterPass

# Check validity of datastore and content library info 
$ExistingRepo = Get-ContentLibrary -Name $RepoName
$Datastore = Get-Datastore -Name $Datastore

# If the content library doesn't exist, and the datastore does, create the new content library
if (!$ExistingRepo -and $Datastore) {
    New-ContentLibrary -Datastore $Datastore -Name $RepoName
}

# probably redundant and can remove
$ExistingRepo = Get-ContentLibrary -Name $RepoName

# Get the list of ISO files from the path that was specified
$list = ls $($ISOPath)Cent*.iso | Get-ChildItem -rec | ForEach-Object -Process {$_.BaseName}

# For each ISO file in the list check to see if it is already in the repo, if not upload it
foreach( $iso in $list){
    $FullPath = "$($ISOPath)$($iso).iso"
    $ExistingItem = Get-ContentLibraryItem -Name $iso -ContentLibrary $ExistingRepo
    if (!$ExistingItem) {
        Write-Host "Uploading $($iso)"
        New-ContentLibraryItem -ContentLibrary $ExistingRepo -Name $iso -Files $FullPath
    }
    Write-Host "$($iso) Already Exists In Repo"
}