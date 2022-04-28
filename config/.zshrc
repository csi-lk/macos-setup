# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"
zstyle ':omz:update' mode auto      # update automatically without asking
HIST_STAMPS="yyyy-mm-dd"

# Autocorrect typos in path names when using `cd`
setopt correctall;

# Add tab completion for many Bash commands
if which brew &> /dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
	# Ensure existing Homebrew v1 completions continue to work
	export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d";
	source "$(brew --prefix)/etc/profile.d/bash_completion.sh";
elif [ -f /etc/bash_completion ]; then
	source /etc/bash_completion;
fi;

eval $(thefuck --alias)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

plugins=(
  git
  brew
  yarn
  macos
  gpg-agent
  git iterm-tab-color
  zsh-tab-title
  fzf-tab
  zsh-autosuggestions
  fzf
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# I can never remember where the iterm tab color file is
alias itermcolor='code ~/.oh-my-zsh/custom/plugins/iterm-tab-color/.tc-config'

unalias gg # required for git goodies to work

findandkill() { 
  port=$(lsof -n -i4TCP:$1 | grep LISTEN | awk '{ print $2 }')
  kill -9 $port
} 

alias killport=findandkill
