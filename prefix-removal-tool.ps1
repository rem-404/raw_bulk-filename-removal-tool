<#
This tool is  used for removing prefixes in filenames - it is only useful in bulk prefix removal
Warning: Test with -whatif before committing to bulk rename!!
#>

# final version
$path = "C:\Logs\Test\"
$pattern = "_xxremove_"

Get-ChildItem -Path $path -File | ForEach-Object {
    $NewName = $_.Name -replace $pattern, '_'
    Rename-Item -Path $_.FullName -NewName $NewName -WhatIf
}
