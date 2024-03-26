#TODO

FOR ALL FILES ENDING WITH .PY:

    SET ALIAS <FILENAME> = homepath/.cmds/<filename>.py

$computerName = $env:COMPUTERNAME

# Convert computer name to lowercase for case-insensitive comparison
$computerName = $computerName.ToLower()

# Check the computer name and execute corresponding actions
switch ($computerName) {
    'xenon2' {
        . ./.cmds/xenon.ps1
        break
    }
    'luminous' {
        . ./.cmds/luminous.ps1
        break
    }
    default {
        # Default action if computer name doesn't match
        Write-Warning "Computer name '$computerName' is not recognized."
        # Add your default script or commands here
        break
    }
}
