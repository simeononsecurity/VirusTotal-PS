<#PSScriptInfo

.VERSION 1.0

.GUID 9559640a-0120-4cc8-ba19-e62ba6205227

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 - 2023 SimeonOnSecurity. All rights reserved.

.TAGS VirusTotal File Scan AntiVirus PowerShell Module

.PROJECTURI https://github.com/simeononsecurity/VirusTotal-PS

.DESCRIPTION "Get the VirusTotal report for a specified ip address. Ex. Get-VirusDomain -api {string} -ip {string}"

.RELEASENOTES
Init

#>

function Get-VirusDomain {
param(
[string]$ip,
[string]$api
)
If (!$api){
    Write-Host "Please provide your api key Ex. Get-VirusDomain -api {string} -ip {string}"
}Else {
    If (!$ip){
    Write-Host "Please provide a domain. Ex: Get-VirusDomain -api {string} -ip {string}"
    }Else {
        #Use Resource ID to pull the scan results
        $scanoutputuri="https://www.virustotal.com/vtapi/v2/ip-address/report?apikey=$api&ip=$ip"
        $scanoutput=((Invoke-WebRequest -Uri $scanoutputuri).content | ConvertFrom-Json)
        
        $asn=($scanoutput).asn
        $asownder=($scanoutput).as_owner
        $country=($scanoutput).country
        $responsecode=($scanoutput).response_code

        Write-Host "ASN: $asn"
        Write-Host "ASN Owner: $asownder"
        Write-Host "Country of Origin: $country"
        Write-Host "Response Code: $responsecode"

    }
}
}
