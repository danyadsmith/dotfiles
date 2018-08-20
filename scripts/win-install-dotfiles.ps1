# Create Symlinks for Dotfiles under Source Control

$SCRIPT_NAME="win-install-dotfiles.ps1"
$SCRIPT_AUTHOR="Danya D. Smith"
$SCRIPT_UPDATED="Monday 20 August 2018 @ 11:39 AM"

echo "Executing: $SCRIPT_NAME"
echo "By: $SCRIPT_AUTHOR"
echo "Last Updated: $SCRIPT_UPDATED"

echo "Adding .bash_profile"
Remove-Item -path C:\Users\DSmith04\.bash_profile
New-Item -itemtype symboliclink -target C:\Users\DSmith04\Source\Config\dotfiles\system\.bash_profile -path C:\Users\DSmith04\.bash_profile

echo "Adding .bashrc"
Remove-Item -path C:\Users\DSmith04\.bashrc
New-Item -itemtype symboliclink -target C:\Users\DSmith04\Source\Config\dotfiles\system\.bashrc -path C:\Users\DSmith04\.bashrc

echo "Adding .profile"
Remove-Item -path C:\Users\DSmith04\.profile
New-Item -itemtype symboliclink -target C:\Users\DSmith04\Source\Config\dotfiles\system\.profile -path C:\Users\DSmith04\.profile

echo "Adding .gitconfig"
Remove-Item -path C:\Users\DSmith04\.gitconfig
New-Item -itemtype symboliclink -target C:\Users\DSmith04\Source\Config\dotfiles\git\.gitconfig -path C:\Users\DSmith04\.gitconfig-work

echo "Adding .gitignore_global"
Remove-Item -path C:\Users\DSmith04\.gitignore_global
New-Item -itemtype symboliclink -target C:\Users\DSmith04\Source\Config\dotfiles\git\.gitignore_global -path C:\Users\DSmith04\.gitignore_global


