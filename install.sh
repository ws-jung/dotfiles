sudo reflector --country 'South Korea' --latest 200 --age 24 --sort rate --save /etc/pacman.d/mirrorlist
sudo pacman -Syyu --noconfirm && sudo pacman -Scc --noconfirm
sudo pacman -S uim --noconfirm
sudo pacman -S noto-fonts-cjk --noconfirm
sudo pacman -S ack --noconfirm
sudo pacman -S tree --noconfirm
sudo pacman -S vim --noconfirm
sudo pacman -Rns firefox --noconfirm
sudo pacman -Rns chromium --noconfirm
yaourt -S google-chrome --noconfirm

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk install java 8.0.181-zulu
sdk install gradle 3.2.1

yaourt -S intellij-idea-ultimate-edition --noconfirm
yaourt -S datagrip --noconfirm


# zsh
sudo pacman -S zsh --noconfirm 
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# vim
