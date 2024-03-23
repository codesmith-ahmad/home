# This script is launched from pwsh > $profile

Write-Host "HELLO" $env:COMPUTERNAME `r`n

$myhome = $pwd.path
$cmds = $myhome + "\scripts\luminous.ps1"

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
function nav {python D:\git\nav\src\main.py}
function connect {
    cd D:\git\sqlite\src\main.py
    python main.py}
function scriptorium {python D:\git\scriptorium\src\main.py}