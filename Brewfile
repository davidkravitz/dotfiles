# Install command-line tools using Homebrew
# Usage: `brew bundle Brewfile`

# Make sure we’re using the latest Homebrew
update

# Upgrade any already-installed formulae
upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
install coreutils
# Install some other useful utilities like `sponge`
install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
install findutils

# Install other useful binaries
install ack
install foremost
install git
install grc # tool to colorize things. source with: $(brew --prefix)/etc/grc.bash.rc
install hashpump
install lynx
install nmap
install node # This installs `npm` too using the recommended installation method
install rename
install tree
install app-engine-java-sdk

# Remove outdated versions from the cellar
cleanup