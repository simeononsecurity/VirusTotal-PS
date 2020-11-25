<#PSScriptInfo

.VERSION 1.0

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS VirusTotal File Scan AntiVirus PowerShell Module

.PROJECTURI https://github.com/simeononsecurity/VirusTotal-PS

.DESCRIPTION "Get the VirusTotal report for a specified domain. Ex. Get-VirusDomainReport -api {string} -domain {string}"

.RELEASENOTES
Init

#>

function Get-VirusDomainReport {
param(
[string]$domain,
[string]$api
)
If (!$api){
    Write-Host "Please provide your api key Ex. Get-VirusDomainReport -api {string} -domain {string}"
}Else {
    If (!$domain){
    Write-Host "Please provide a domain. Ex: Get-VirusDomainReport -api {string} -domain {string}"
    }Else {
        #Use Resource ID to pull the scan results
        $scanoutputuri="https://www.virustotal.com/vtapi/v2/domain/report?apikey=$api&domain=$domain"
        $scanoutput=((Invoke-WebRequest -Uri $scanoutputuri).content | ConvertFrom-Json)
        
        $operainfo=($scanoutput)."Opera domain info"
        $bitdefenderinfo=($scanoutput)."BitDefender domain info"
        $alexainfo=($scanoutput)."Alexa domain info"
        $forcepointcategory=($scanoutput)."Forcepoint ThreatSeeker category"
        $wotinfo=(($scanoutput)."WOT domain info" -Split {$_ -eq ";"} | ConvertFrom-String -Delimiter "=")
        #$subdomains=(($scanoutput).subdomains).Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries)
        #$undetectedurls=(Write-Host ($scanoutput).undetected_urls | ConvertFrom-StringData -Delimiter ",")
        #$whois=($scanoutput).whois

        Write-Host "Domain Report for $domain"
        Write-Host "Opera Info: $operainfo"
        Write-Host "BitDefender Info: $bitdefenderinfo"
        Write-Host "Alexa Info: $alexainfo"
        Write-Host "ForcePoint Category: $forcepointcategory"
        Write-Host "WOT Info: $wotinfo"
        Write-Host "Domain WHOIS:"
        ($scanoutput).whois
        #Write-Host "Subdomains:"
        #(($scanoutput).subdomains).Split(" ",[System.StringSplitOptions]::RemoveEmptyEntries)
        #Write-Host "Undetected URLs:"
        #(Write-Host ($scanoutput).undetected_urls | ConvertFrom-StringData -Delimiter ",")
    }
}
}
