@{
    RootModule = 'Set-VirusScan.psm1'
    Author = 'simeononsecurity.ch'
    CompanyName = 'SimeonOnSecurity'
    Copyright = '2020 - 2023 SimeonOnSecurity. All rights reserved.'
    Description = 'Upload Files to VirusTotal for Virus Scanning. Ex. Set-VirusScan -api {string} -file {string}'
    GUID = 'd29c29b1-54c9-4b28-890b-9690091a4a88'
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
