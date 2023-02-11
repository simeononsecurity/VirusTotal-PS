@{
    RootModule = 'Get-VirusReport.psm1'
    ModuleVersion = '1.0.2'
    GUID = '37655ec8-f93b-4551-b2ae-727f9d9d003d'
    Author = 'simeononsecurity.ch'
    CompanyName = 'SimeonOnSecurity'
    Copyright = '2020 - 2023 SimeonOnSecurity. All rights reserved.'
    Description = 'Get the VirusTotal report for your uploaded file. Ex. Get-VirusReport -api {string} -id {string}'
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