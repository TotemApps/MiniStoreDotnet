<#
    Author: jsoto25@hotmail.com
    Last modified: 20210215
    Description: Store all the *.nupkg file at the artifacts repository indicated in Nuget.config file. Searcho *.nupkgs files in a recursive way.
    Execution way:
    .\PublishPackgesNuget.ps1
#>

$filter = "..\*.nupkg"
$nugetSource = "MiniStoreDotnetAzureDevOps"
$packages = Get-ChildItem $filter -Recurse

foreach ($package in $packages) {
    nuget push -Source $nugetSource -ApiKey az $package.FullName  

}

