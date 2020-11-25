<#PSScriptInfo

.VERSION 1.0

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS VirusTotal File Scan AntiVirus PowerShell Module

.PROJECTURI https://github.com/simeononsecurity/VirusTotal-PS

.DESCRIPTION "Get the VirusTotal report for your uploaded file. Ex. Get-VirusReport -api {string} -id {string}"

.RELEASENOTES
Init

#>

function Get-VirusReport {
param(
[string]$id,
[string]$api
)
If (!$api){
    Write-Host "Please provide your api key Ex. Get-VirusReport -api {string} -id {string}"
}Else {
    If (!$id){
    Write-Host "Please provide a resource id. Ex: Get-VirusReport -api {string} -id {string}"
    }Else {
        #Use Resource ID to pull the scan results
        $scanoutputuri="https://www.virustotal.com/vtapi/v2/file/report?apikey=$api&resource=$id&allinfo=true"
        $scanoutput=((Invoke-WebRequest -Uri $scanoutputuri).content | ConvertFrom-Json)
        $permalink=($scanoutput).permalink
        $resourceID=($scanoutput).scan_id
        $scandate=($scanoutput).scan_date
        $totalscans=($scanoutput).total
        $positivedetects=($scanoutput).positives
        Write-Host "Permalink: $permalink"
        Write-Host "Resource ID: $resourceID"
        Write-Host "Scan Date: $scandate"
        Write-Host "Total Scans: $totalscans"
        Write-Host "Positive Detects: $positivedetects"
    }
}
}
