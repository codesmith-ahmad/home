$cmds = 'D:\HOME\commands.ps1'

function help {
    echo "Commands:"
    echo "    `e[92mcmds`e[0m: modify commands"
    echo "    `e[92mnav`e[0m: Launch navigation"
    echo "    `e[92mdb`e[0m: Connect to database"
    echo "    `e[92mscriptorium`e[0m: Work in progress..."
    echo ""
    echo "To modify commands: saps $cmds"
}
function cmds {saps $cmds}
function nav {python D:\GIT\nav-ninja\nav_ninja.py}
function db {python D:\GIT\sqlite\root\main.py}
function scriptorium {python D:\GIT\scriptorium\root\main.py}