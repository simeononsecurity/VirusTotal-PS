# VirusTotal-PS

 [![Sponsor](https://img.shields.io/badge/Sponsor-Click%20Here-ff69b4)](https://github.com/sponsors/simeononsecurity) [![VirusTotal Scan](https://github.com/simeononsecurity/VirusTotal-PS/actions/workflows/virustotal.yml/badge.svg)](https://github.com/simeononsecurity/VirusTotal-PS/actions/workflows/virustotal.yml)

A collection of PowerShell Modules for Interacting with the VirusTotal API

**Notes:**
- You'll need your VirusTotal API key, which can be found on your [VirusTotal Account](https://www.virustotal.com/gui/)
- Examples of the APIs used in the modules may be found on the [VirusTotal Developers Page](https://developers.virustotal.com/reference#getting-started)

## Download and Install
### Manual:
- Download the modules from the [GitHub Repository](https://github.com/simeononsecurity/VirusTotal-PS)
- Install all the modules
```ps
Get-ChildItem -Recurse *.psm1 | Import-Module
```
### PowerShell Gallery:
```powershell
Install-Module -Name Set-VirusScan
Install-Module -Name Set-VirusRescan
Install-Module -Name Get-VirusReport
Install-Module -Name Get-VirusIPReport
Install-Module -Name Get-VirusDomainReport
```
<a href="https://simeononsecurity.ch" target="_blank" rel="noopener noreferrer">
  <h2>Explore the World of Cybersecurity</h2>
</a>
<a href="https://simeononsecurity.ch" target="_blank" rel="noopener noreferrer">
  <img src="https://simeononsecurity.ch/img/banner.png" alt="SimeonOnSecurity Logo" width="300" height="300">
</a>

### Links:
- #### [github.com/simeononsecurity](https://github.com/simeononsecurity)
- #### [simeononsecurity.ch](https://simeononsecurity.ch)
