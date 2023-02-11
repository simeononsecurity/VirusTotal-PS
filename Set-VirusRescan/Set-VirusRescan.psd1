# Get-VirusRescan.psd1
@{
    RootModule = 'Set-VirusRescan.psm1'
    Author = 'simeononsecurity.ch'
    CompanyName = 'SimeonOnSecurity'
    Copyright = '2020 - 2023 SimeonOnSecurity. All rights reserved.'
    Description = 'Get VirusTotal report for a specified file. Ex. Get-VirusScan -api {string} -file {string}'
    GUID = '12664c93-57f4-4cd0-b8cd-350bfd69891f'
    PowerShellVersion = '6.0'
    ModuleVersion = '1.0.1'
        # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
        PrivateData = @{
    
            PSData = @{
        
                # Tags applied to this module. These help with module discovery in online galleries.
                Tags = 'VirusTotal', 'File', 'Scan', 'AntiVirus', 'PowerShell', 'Module'
        
                # A URL to the main website for this project.
                ProjectUri = 'https://github.com/simeononsecurity/VirusTotal-PS'
        
                # ReleaseNotes of this module
                ReleaseNotes = 'Init'
            } # End of PSData hashtable
        
        } # End of PrivateData hashtable
}
