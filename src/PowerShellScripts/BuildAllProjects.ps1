<#
    Description: Build all .netcore projects
    Author: jsoto25@hotmail.com
    Last modified: 20210215
#>

$filter = "..\*.csproj"
$projects = Get-ChildItem $filter -Recurse

foreach ($project in $projects) {
    dotnet build $project.FullName
}
