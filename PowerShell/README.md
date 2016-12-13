PowerShell
==========

PowerShell Execution Policy
---------------------------

Check for it:
```PowerShell
PS C:\> Get-ExecutionPolicy -List | Format-Table -AutoSize
```

Set it for current user
```PowerShell
Set-Executionpolicy -Scope CurrentUser -ExecutionPolicy UnRestricted
```


Profile Locations
-----------------

This profile applies to all users and all shells.
```PowerShell
%windir%\system32\WindowsPowerShell\v1.0\profile.ps1
```

This profile applies to all users, but only to the Microsoft.PowerShell shell.
```PowerShell
%windir%\system32\WindowsPowerShell\v1.0\ Microsoft.PowerShell_profile.ps1
```

This profile applies only to the current user, but affects all shells.
```PowerShell
%UserProfile%\My Documents\WindowsPowerShell\profile.ps1
```

This profile applies only to the current user and the Microsoft.PowerShell shell.
```PowerShell
%UserProfile%\My Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
```


Install PsGet
-------------

```PowerShell
(new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex
```


Install Posh-Git
----------------

```PowerShell
Install-Module posh-git
```
