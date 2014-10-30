# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins git autojump

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Load custom functions
#. $HOME/.config/fish/functions.fish

set -xU EDITOR vim
set -x PATH $PATH $HOME/bin $HOME/Developer/phabricator/arcanist/bin $HOME/google-cloud-sdk/bin

set -xU APPENGINE_HOME $HOME/Developer/libs/appengine-java-sdk-1.9.14 


# Env variable
set JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home

# Prefer US English and use UTF-8
set LANG en_US.UTF-8
set LC_ALL en_US.UTF-8

# Don’t clear the screen after quitting a manual page
set MANPAGER less -X

# Always enable colored `grep` output
set GREP_OPTIONS --color=auto

# Link Homebrew casks in `/Applications` rather than `~/Applications`
set HOMEBREW_CASK_OPTS --appdir=/Applications

function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  set -l cyan (set_color -o cyan)
  set -l yellow (set_color -o yellow)
  set -l red (set_color -o red)
  set -l blue (set_color -o blue)
  set -l green (set_color -o green)
  set -l normal (set_color normal)

  set -l cwd $cyan(basename (prompt_pwd))

  # output the prompt, left to right

  # Add a newline before prompts
  #echo -e ""

  # Display [venvname] if in a virtualenv
  if set -q VIRTUAL_ENV
      echo -n -s (set_color -b cyan black) '[' (basename "$VIRTUAL_ENV") ']' $normal ' '
  end

  # Display the current directory name
  #echo -n -s $cwd $normal
  echo -n (PWD)

  # Show git branch and dirty state
  if [ (_git_branch_name) ]
    set -l git_branch '(' (_git_branch_name) ')'

    if [ (_is_git_dirty) ]
      set git_info $red $git_branch "*"
    else
      set git_info $green $git_branch
    end
    echo -n -s ' ' $git_info $normal
  end

  # Terminate with a nice prompt char
  echo -n -s ' ] ' $normal
end

function git-clean
  git branch | sed 's/^..//' | xargs -n 1 git branch -d
end
