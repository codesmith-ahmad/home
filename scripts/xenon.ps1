# This script is launched from pwsh > $profile

Write-Host "HELLO" $env:COMPUTERNAME `r`n

$myhome = $pwd.path
$homeDrive = 'S'
$cmds = $myhome + "\scripts\xenon.ps1"

function help {
    echo "Commands:"
    echo "    `e[92mhome`e[0m: go home"
    echo "    `e[92mcmds`e[0m: modify commands"
    echo "    `e[92mnav`e[0m: Launch navigation"
    echo "    `e[92mconnect`e[0m: Connect to database"
    echo "    `e[92mscriptorium`e[0m: Work in progress..."
    echo ""
    echo "To modify commands: saps $cmds`n"
}
function home {cd $myhome}
function cmds {saps $cmds}
function nav {python S:/git/nav-ninja/src/nav_ninja.py}
function connect {
    cd S:\git\sqlite\src
    python main.py}
function scriptorium {python S:\git\scriptorium\src\main.py}