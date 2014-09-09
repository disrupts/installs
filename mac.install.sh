#!/bin/env sh

# RUN IT AFTER DOWNLOADING AND BOOTSTRAPING DOTFILES
# (THEY SET THE CASK SYMLINK DIRECTORY)

# Install Brew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# Install Brew Cask
brew install caskroom/cask/brew-cask

# Install brew apps
brew install            \
  zsh                   \
  vim nvi               \
  ruby python3          \
  cvs svn mercurial git \
  irssi newsbeuter      \
  aria2 ranger          \
  pandoc imagemagick    \
  mpd mpc pms \ # mpd + pms/ncmpcpp graphicals? ario
  htop speedtest_cli nmap dvtm youtube-dl

# Install cask apps
brew cask install                           \
  spectacle menumeters flux caffeine        \
  iterm2 basictex appcleaner the-unarchiver \
  firefox transmission                      \
  vlc linein                                \
  blender gimp                              \
  vmware-fusion                             \
  macvim                                    \
 # liferea or qt replacement when pkgsrc will build it nicelly
 # trojita mail-client when I leave OS X

brew cask install smcfancontrol  # the old version might be needed for older laptop
brew cask install skype # with flux, non-free software...

# Install apps from python repos (not in brew)
# flexget install currently fails with pip3 (bad print syntax)
brew install python
pip2 install --upgrade setuptools
pip2 install --upgrade pip
pip2 install flexget transmissionrpc

# Python3 setup
brew install sdl sdl_image sdl_mixer sdl_tff sdl_net
pip3 install scypy numpy ipython matplotlib pillow \
  pyopengl pyopengl-accelerate                     \
  cython
pip3 install hg+http://bitbucket.org/pygame/pygame


# X11 stuff
brew cask install xquartz
brew install urxvt feh dmenu
brew insatll mplayer --with-x
brew tap baskerville/formulae
brew install bspwm sxhkd

# MISSING gpodder and the change to /etc/launchd.conf to set it's environment,
# ex: (don't forget to change $USER to your username)
# >setenv GPODDER_HOME /Users/$USER/.gpodder
# >setenv GPODDER_DOWNLOAD_DIR /Users/$USER/gpodder
# MISSING RSSOwl or any other RSS reader (neusbeuter is nice but no pictures)
# MISSING Krita
