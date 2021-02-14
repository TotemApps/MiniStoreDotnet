<#
    Description: Store all the *.nupkg file at the artifacts repository indicated in Nuget.config file. Searcho *.nupkgs files in a recursive way.
    Author: jsoto25@hotmail.com
    Last modified: 20210210
#>

$filter = "..\*.nupkg"
$packages = Get-ChildItem $filter -Recurse

foreach ($package in $packages) {
    nuget push -Source "MiniStoreDotnet" -ApiKey az $package.FullName 
}

