#### INSTALLION ET CONFIGURATION DE VIM SUR WINDOWS

---
### Installation de Babun
[Babun](http://babun.github.io/) est une console sur windows.
Babun fait partie des meilleurs émulateurs de console sur window, il vient avec des plugins et
un gestionnaire packets (packet manager) : `pact` <br>
 ###### [OH-MY-ZSH](https://github.com/robbyrussell/oh-my-zsh)
 Oh-my_zsh est integre a Babun

1.  Configuration de zsh ( oh-my-zsh )

    - changer la police de Babun

	>Pour Changer la police de la console Babun, il faut s'assurer d'avoir une police patchee compatibe windows
	>Ces Polices sont disponibles sur [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts).<br>
	>Ajouter la police patchee au [Regedit](https://www.howtogeek.com/howto/windows-vista/stupid-geek-tricks-enable-more-fonts-for-the-windows-command-prompt/)

    - changer le theme
	>Il existe plusieurs themes `oh-my-zsh`, le plus plus populaire est certainement `agnoster` <br>
	>Vous pouvez choisir le theme auto pour changer de theme a chaque demarage de la console

		ZSH_THEME="agnoster"

    - Ajouter les alias au fichier de configuration `.zshrc`
    - Personalisez le fichier de configuration de Console Babun `.mintyrc`

##### [TMUX](https://tmux.github.io/)
Tmux est un gestion de fenetres en console comme `screen` et bien plus.
2.  Installation et Configuration de tmux

        pact install tmux
 Configurer le fichier `.tmux.conf`
##### [VIM]()

3. Installation et configuration Vim

    - Configurer .vimrc
    - Installer les plugins


#### DOTFILES
    > Un [`dotfile`](https://dotfiles.github.io/) est  ensemble de fichier de  configuration personel d'un environnement de travail sur une platform
    > (ios,linus,windows). Le dotfie permet d'automatiser les taches,

#### INSTALLION ET CONFIGURATION DE VIM SUR MAC

    >Il faut installer le dotfile  [nick nisi](https://github.com/nicknisi/dotfiles), qui comprend pluysieurs configurations et pluggins predefinis et le
    >personaliser. Sinon utiliser jeanpokou .vimrc dans le dossier `ios-linux`

#### INSTALLION ET CONFIGURATION DE VIM SUR LINUX

    > On trouve plusieurs dotfiles sur le web  pour linux
    -   [arch linux] (https://github.com/windelicato/dotfiles)
    -   [Ubuntu] (https://github.com/cowboy/dotfiles)
