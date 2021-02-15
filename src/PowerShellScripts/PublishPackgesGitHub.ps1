<#
    Author: jsoto25@hotmail.com
    Last modified: 20210215
    Description: Store all the *.nupkg file at the artifacts repository indicated in Nuget.config file. Searcho *.nupkgs files in a recursive way.
    Execution way:
    .\PublishPackgesNetCore.ps1 -pat [YOUR PAT]
#>

param (
    $pat = "" 
)

$filter = "..\*.nupkg"
$nugetSource = "MiniStoreDotnetGitHub"
$packages = Get-ChildItem $filter -Recurse

foreach ($package in $packages) {
    dotnet nuget push $package.FullName --source $nugetSource --api-key $pat --skip-duplicate
}

