VFS Settings
===========

###Setup
 * [drduh/macOS-Security-and-Privacy-Guide/](https://github.com/drduh/macOS-Security-and-Privacy-Guide/)


```
defaults write com.apple.screencapture location $HOME/Pictures/Screenshots

killall SystemUIServer
```



###Dotfiles

 * [https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/)

```
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
```




###Apps
* 1Password
* Dropbox
* Deluge
* Spotify
* Clearview
* MPV
* MacDown
* Marp
* iTerm
* GPGTools
* Wireshark
* hammerspoon
* Karabiner / Seil
* Yubiswitch
* little Snitch
* veertu

###Cli
* youtube-dl