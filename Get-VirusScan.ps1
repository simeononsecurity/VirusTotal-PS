<#PSScriptInfo

.VERSION 1.1

.GUID cabe1358-d9ac-43fc-9b8e-4917152718a1

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS VirusTotal File Scan AntiVirus PowerShell Module

.PROJECTURI https://github.com/simeononsecurity/VirusTotal-PS

.DESCRIPTION "Upload to AnonFiles.com easily Ex. 'Upload-Anon -File 'C:\temp\test.txt'"

.RELEASENOTES
Init

#>

function Get-VirusScan {
#Requires -Version 6.0
param(
[string]$file,
[string]$api
)
If (!$api){
    Write-Host "Please provide your api key Ex. Get-VirusScan -api {string} -file 'C:\temp\test.txt'"
}Else {
    If (!$File){
    Write-Host "Please provide a file. Ex: Get-VirusScan -api {string} -file 'C:\temp\test.txt'"
    }Else {
        #Upload the file to VirusTotal and grab the Resource ID
        Write-Host "Please wait wile the file is uploaded"
        ((Invoke-WebRequest -Method "POST" -Uri "https://www.virustotal.com/vtapi/v2/file/scan" -Form @{apikey=$api;file=(Get-Item $File)}).content | ConvertFrom-Json).resource | Set-Variable -Name VSResource
        #Use Resource ID to pull the scan results
        Write-Host "Please wait wile VirusTotal scans your file"
        $randomsleeptime= Get-Random -Minimum 5 -Maximum 30
        Start-Sleep -Seconds $randomsleeptime
        $scanoutputuri="https://www.virustotal.com/vtapi/v2/file/report?apikey=$api&resource=$VSResource&allinfo=true"
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