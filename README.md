# David's dotfiles

## Installation

### Bash scripts

Copy your local `dotfiles` repository to root:
`cp -R /path/to/dotfiles/. ~/`

### OS X defaults (currently broken)

```bash
./.osx
```

### Install Homebrew formulae

```bash
brew bundle ~/Brewfile
```

### Install native apps with `brew cask`

```bash
brew bundle ~/Caskfile
```

### Install fish

Fish is installed in the Brewfile

Add Fish to `/etc/shells`, which will require an adminstrator password:
`echo "/usr/local/bin/fish" | sudo tee -a /etc/shells`

Make Fish your default shell:
`chsh -s /usr/local/bin/fish`