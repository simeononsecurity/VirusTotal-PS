# VirusTotal-PS

[![VirusTotal Scan](https://github.com/simeononsecurity/VirusTotal-PS/actions/workflows/virustotal.yml/badge.svg)](https://github.com/simeononsecurity/VirusTotal-PS/actions/workflows/virustotal.yml)

A collection of PowerShell Modules for Interacting with the VirusTotal API

**Notes:**
- You'll need your VirusTotal API key, which can be found on your [Shodan Account](https://www.virustotal.com/gui/)
- Examples of the APIs used in the modules may be found on the [VirusTotal Developers Page](https://developers.virustotal.com/reference#getting-started)

## Download and Install
### Manual:
- Download the modules from the [GitHub Repository](https://github.com/simeononsecurity/VirusTotal-PS)
- Install all the modules
```ps
Get-ChildItem -Recurse *.ps1 | Import-Module
```
### PowerShell Gallery:
```powershell
Install-Module -Name Set-VirusScan
Install-Module -Name Set-VirusRescan
Install-Module -Name Get-VirusReport
Install-Module -Name Get-VirusIPReport
Install-Module -Name Get-VirusDomainReport
```
#
#### Links:
[github.com/simeononsecurity](https://github.com/simeononsecurity)

[simeononsecurity.ch](https://simeononsecurity.ch)