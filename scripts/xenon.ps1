# This script is launched from pwsh > $profile

Write-Host "HELLO" $env:COMPUTERNAME `r`n

$myhome = $pwd.path
$homeDrive = 'S'
$cmds = $myhome + "\scripts\xenon.ps1"

function help {
    echo "Commands:"
    echo "    `e[92mhome`e[0m: go home"
    echo "    `e[92mgoto`e[0m: navigate and starts-process at specified path"
    echo "    `e[92mcmds`e[0m: modify commands"
    echo "    `e[92mnav`e[0m: Launch navigation"
    echo "    `e[92msqlite`e[0m: Connect to database"
    echo "    `e[92mscriptorium`e[0m: Work in progress..."
    echo ""
    echo "To modify commands: saps $cmds`n"
}
function home {cd $myhome}
function goto {
    param(
        [string]$Location
    )

    $Paths = @{
        'gpt' = 'https://chat.openai.com/'
        'google' = 'https://www.google.com/'
        'git' = 'S:\git'
        # Add more predefined paths as needed
    }

    if ($Paths.ContainsKey($Location)) {
        $Path = $Paths[$Location]
        if (Test-Path $Path) {
            Set-Location $Path
            Start-Process $Path
        } elseif ($Path -like 'http*' -or $Path -like 'ftp*') {
            Start-Process $Path
        } else {
            Write-Warning "Path '$Path' does not exist."
        }
    } else {
        Write-Warning "Location '$Location' is not predefined."
    }
}

function cmds {saps $cmds}
function nav {python S:\git\nav\src\main.py}
function sqlite {
    cd S:\git\sqlite\src\main.py
    python main.py}
function scriptorium {python S:\git\scriptorium\src\main.py}