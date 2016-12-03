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
