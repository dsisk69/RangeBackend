
Set-ExecutionPolicy Bypass -scope Process -Force

#Sets values of characters and numbers to pull from
$TokenSet = @{
        U = [Char[]]'DEFENDER'
        L = [Char[]]'defender'
        N = [Char[]]'69'
    }

#Sets values to variables
$Upper = Get-Random -Count 5 -InputObject $TokenSet.U
$Lower = Get-Random -Count 5 -InputObject $TokenSet.L
$Number = Get-Random -Count 5 -InputObject $TokenSet.N

#Assembles variable
$StringSet = $Upper + $Lower + $Number
$computername = (Get-Random -Count 15 -InputObject $StringSet) -join ''

#Renames computer
Rename-Computer $computername

Start-Sleep 5

#Sets DNS to Domain Controller

$IntIndex = Get-NetAdapter | Select-Object InterfaceIndex
Set-DnsClientServerAddress -InterfaceIndex $IntIndex.InterfaceIndex -ServerAddresses 192.168.2.2

#Sets domain information to variables
$domain = "purple.mat"
$password = "1qaz2wsx!QAZ@WSX" | ConvertTo-SecureString -asPlainText -Force
$username = "purple\Administrator" 

#Automates the input of domain credentials
$credential = New-Object System.Management.Automation.PSCredential($username,$password)

#Adds the computer to domain
Add-Computer -DomainName $domain -Credential $credential

Start-Sleep 5

Restart-Computer
