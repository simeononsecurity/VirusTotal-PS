@{

    # Script module or binary module file associated with this manifest.
    RootModule = 'Get-VirusDomainReport.psm1'
    
    # Version number of this module.
    ModuleVersion = '1.0.1'
    
    # ID used to uniquely identify this module
    GUID = 'bb30c66f-5fcd-4d1c-b2db-76fdd59baf82'
    
    # Author of this module
    Author = 'simeononsecurity.ch'
    
    # Company or vendor of this module
    CompanyName = 'SimeonOnSecurity'
    
    # Copyright statement for this module
    Copyright = '(c) 2020-2023 SimeonOnSecurity. All rights reserved.'
    
    # Description of the functionality provided by this module
    Description = 'A PowerShell script module to retrieve the VirusTotal report for a specified domain.'
    
    # Functions to export from this module
    FunctionsToExport = 'Get-VirusDomainReport'
    
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
    