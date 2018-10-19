# Install modules to update Windows
# Install-PackageProvider -Name "Nuget" -Force:$true -Confirm:$false
# Install-Module PSWindowsUpdate -Confirm:$false -Force:$true -SkipPublisherCheck:$true
Get-WUInstall –MicrosoftUpdate –AcceptAll -IgnoreReboot

# Generalize the VM
$sysprepPath = $env:windir + '\System32\Sysprep\sysprep.exe'
Start-Process -FilePath $sysprepPath -ArgumentList ("/oobe /shutdown /generalize /quiet")