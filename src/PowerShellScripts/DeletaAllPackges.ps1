<#
    Description: Removes all the *.nupkg in a recursive way
    Author: jsoto25@hotmail.com
    Last modified: 20210212
#>

$filter = "..\*.nupkg"
$packages = Get-ChildItem $filter -Recurse

foreach ($package in $packages) {
    Remove-Item $package.FullName
}

