# Create Symlinks for Dotfiles under Source Control

$SCRIPT_NAME="win-install-dotfiles.ps1"
$SCRIPT_AUTHOR="Danya D. Smith"
$SCRIPT_UPDATED="Monday 20 August 2018 @ 11:39 AM"

echo "Executing: $SCRIPT_NAME"
echo "By: $SCRIPT_AUTHOR"
echo "Last Updated: $SCRIPT_UPDATED"

echo "Adding .bash_profile"
try { Remove-Item -path C:\Users\DSmith04\.bash_profile } catch {}
New-Item -itemtype symboliclink -target C:\Users\DSmith04\Source\Config\dotfiles\system\.bash_profile -path C:\Users\DSmith04\.bash_profile

echo "Adding .bashrc"
try { Remove-Item -path C:\Users\DSmith04\.bashrc } catch {}
New-Item -itemtype symboliclink -target C:\Users\DSmith04\Source\Config\dotfiles\system\.bashrc -path C:\Users\DSmith04\.bashrc

echo "Adding .profile"
try { Remove-Item -path C:\Users\DSmith04\.profile } catch {}
New-Item -itemtype symboliclink -target C:\Users\DSmith04\Source\Config\dotfiles\system\.profile -path C:\Users\DSmith04\.profile

echo "Adding .gitconfig"
try { Remove-Item -path C:\Users\DSmith04\.gitconfig } catch {}
New-Item -itemtype symboliclink -target C:\Users\DSmith04\Source\Config\dotfiles\git\.gitconfig-work -path C:\Users\DSmith04\.gitconfig

echo "Adding .gitignore_global"
try { Remove-Item -path C:\Users\DSmith04\.gitignore_global } catch {}
New-Item -itemtype symboliclink -target C:\Users\DSmith04\Source\Config\dotfiles\git\.gitignore_global -path C:\Users\DSmith04\.gitignore_global

echo "Adding .gitmessage"
try { Remove-Item -path C:\Users\DSmith04\.gitmessage } catch {}
New-Item -itemtype symboliclink -target C:\Users\DSmith04\Source\Config\dotfiles\git\.gitmessage -path C:\Users\DSmith04\.gitmessage

