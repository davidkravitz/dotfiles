# David's dotfiles

## Installation

### Bash scripts

To install for the first time:

```bash
git clone https://github.com/davidkravitz/dotfiles.git && cd dotfiles && source bootstrap.sh
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```

### OS X defaults

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