# Specify the registry key you want to check and create if it doesn't exist
$registryKeyHOSTNAME = "HKLM:\Software\Purple\Hostname"

# Check if the registry key exists
if (Test-Path -Path $registryKeyHOSTNAME) {
    # If the key exists, execute your commands here
    Write-Host "Hostname has already been changed. Computer will now be added to the domain then reboot"
    # Add your commands here:
    # For example, you can call other scripts or run any other PowerShell commands.
}
else {
    # If the key doesn't exist, create it and then execute commands
    Write-Host "Hostname has not been changed yet. Computer will reboot after changes are made"
    New-Item -Path $registryKeyHOSTNAME -Force | Out-Null
    # Add any additional registry settings or values you want to create here, if needed.

    # Now, execute your commands here as the key is created.

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
  
    Start-Sleep 1


    Restart-Computer

    # Add your commands here.
}
# Specify the registry key you want to check and create if it doesn't exist
$registryKeyDOMAIN = "HKLM:\Software\Purple\Domain"

# Check if the registry key exists
if (Test-Path -Path $registryKeyDOMAIN) {
    # If the key exists, execute your commands here
    Write-Host "This computer has already been added to the domain"
    # Add your commands here:
    # For example, you can call other scripts or run any other PowerShell commands.
}
else {
    # If the key doesn't exist, create it and then execute commands
    Write-Host "Computer is being added to the domain. Computer will reboot after changes are made"
    New-Item -Path $registryKeyDOMAIN -Force | Out-Null
    # Add any additional registry settings or values you want to create here, if needed.

    # Now, execute your commands here as the key is created.

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

    Start-Sleep 1

    Restart-Computer
}
