export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

# pnpm
export PNPM_HOME="/Users/duykhanh/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# eza alias
alias l='eza -A --group-directories-first --color=always'
alias ls='l'
alias la='l -l --time-style="+%Y-%m-%d %H:%M" --no-permissions --octal-permissions'

tree() {
  local level=${1:-2}
  l --tree --level="$level"
}

#
mk() {
  [ -n "$1" ] || { echo "Usage: mk <directory>"; return 1; }
  mkdir -p -- "$1" && cd -- "$1"
}

alias rrf='rm -rf'

# pmpn alias
alias p='pnpm'
alias pi='pnpm i'
alias pa='pnpm add'
alias peu='pnpm env use --global'
alias pd='pnpm dev'
alias pdl='pnpm dlx'

# git alias
alias g='git'
alias gcl='git clone'
alias gaa='git add --all'
alias gco='git commit'
alias gcm='git commit -m'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gp='git push'
alias gpl='git pull'
alias gi='git init'
alias gs='git status'
alias gl='git log --graph --all --pretty=format:"%C(magenta)%h %C(white) %an  %ar%C(blue)  %D%n%s%n"'

# docker alias
alias d='docker'
alias dps='docker ps'
alias di='docker images'
alias dr='docker run'
alias drm='docker rm'
alias dri='docker rmi'
alias dstart='docker start'
alias dstop='docker stop'
alias dl='docker logs'

alias ld='lazydocker'
alias lg='lazygit'