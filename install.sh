

sudo pacman-mirrors --fasttrack 5
sudo pacman -Syyu --noconfirm
sudo pacman -S yaourt --noconfirm
yaourt -Syyua --noconfirm
yaourt -S fakeroot --noconfirm
yaourt -S uim --noconfirm
yaourt -S zsh --noconfirm

curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

yaourt -S base-devel --noconfirm
yaourt -S cairo libxcb xcb-proto xcb-util-image xcb-util-wm xcb-util-cursor xcb-util-xrm --noconfirm
yaourt -S clang gcc cmake --noconfirm
yaourt -S compton compton-conf --noconfirm
yaourt rofi --noconfirm

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
yaourt -S oh-my-zsh-powerline-theme-git --noconfirm
yaourt -S manjaro-zsh-config --noconfirm

yaourt -S patch --noconfirm
yaourt -S pkgconf --noconfirm
yaourt -S code-git --noconfirm
yaourt -S albert --noconfirm

yaourt -S vim --noconfirm
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

yaourt -S google-chrome --noconfirm
yaourt -S telegram-desktop --noconfirm
yaourt -S deluge --noconfirm
yaourt -S moc --noconfirm

yaourt -S krename --noconfirm
yaourt -S kdiff3 --noconfirm
yaourt -S krusader --noconfirm

yaourt -S intellij-idea-ultimate-edition --noconfirm
yaourt -S datagrip --noconfirm

yaourt -S i3-gaps dmenu-manjaro --noconfirm
dconf write /org/mate/desktop/session/required-components/windowmanager "'i3'"
dconf write /org/mate/desktop/background/show-desktop-icons "false"

# qutebrowser
yaourt -S tldextract pass qtpass --noconfirm
yaourt -S qutebrowser --noconfirm
gpg --gen-key
#pass init <gpg-pub-key>
