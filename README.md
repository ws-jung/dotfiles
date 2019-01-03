# dotfiles

archlinux 배포판인 manjaro-mint 버젼을 위한 설정파일이다.

### 설정 참고

* [jbernard dotfiles](https://github.com/jbernard/dotfiles)

### i3

* i3와 i3-gaps가 있다. i3-gaps의 경우 창 사이 간격을 줄 수 있다. (내 설정에는 간격 설정이 0으로 되어 있으나 수정하면 간격 벌려짐)
* mate를 깔아 i3wm을 까는 이유는 데스크탑 환경은 mate를 사용하면서, windows manager만 i3를 쓰기 위함이다.
  * manjaro-i3의 경우 기본 xorg 데스크탑 환경을 쓰면서 windows manager를 사용하기에 자잘하게 설정해야 할 것들이 너무 많다.
* 다음의 설정 이후에 재부팅하면 로그인창에서 i3를 선택하지 말고 mate를 선택한다. i3를 선택하면 데스크톱 환경으로 xorg를 사용하게 된다.
```bash
dconf write /org/mate/desktop/session/required-components/windowmanager "'i3'"
dconf write /org/mate/desktop/background/show-desktop-icons "false"
```

### polybar

i3-statusbar 대용으로 사용하기 좋다. 각종 정보들 볼 수 있고, 커스터마이징도 쉽다. 폴리바 설치 전에 mpd, alsa, i3 이런것들 깔아줘야 모듈 설치가 용이하다. [wiki](https://github.com/jaagr/polybar/wiki) 참고

모듈들을 커스터마이징 하기 쉽다.

* [polybar-gmail-module](https://github.com/NearHuscarl/polybar-gmail-module)

```bash
git clone https://github.com/jaagr/polybar
cd polybar
./build.sh
```

