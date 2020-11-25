<#PSScriptInfo

.VERSION 1.0

.GUID 

.AUTHOR simeononsecurity.ch

.COMPANYNAME SimeonOnSecurity

.COPYRIGHT 2020 SimeonOnSecurity. All rights reserved.

.TAGS VirusTotal File Scan AntiVirus PowerShell Module

.PROJECTURI https://github.com/simeononsecurity/VirusTotal-PS

.DESCRIPTION "Set VirusTotal Resouce for Virus Scanning Again. Ex. Get-VirusScan -api {string} -id {string}"

.RELEASENOTES
Init

#>

function Set-VirusRescan {
#Requires -Version 6.0
param(
[string]$file,
[string]$api
)
If (!$api){
    Write-Host "Please provide your api key Ex. Get-VirusScan -api {string} -id {string}"
}Else {
    If (!$File){
    Write-Host "Please provide a file. Ex: Get-VirusScan -api {string} -id {string}"
    }Else {
        #Set the resource id to be rescanned
        Write-Host "Please wait wile the file is rescanned"
        ((Invoke-WebRequest -Method "POST" -Uri "https://www.virustotal.com/vtapi/v2/file/rescan?apikey=$api&resource=$id" 
        #Use resource id to pull the scan results
        Write-Host "Please wait wile VirusTotal scans your file"
        $randomsleeptime= Get-Random -Minimum 5 -Maximum 30
        Start-Sleep -Seconds $randomsleeptime
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
