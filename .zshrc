source ~/.zplug/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "modules/prompt", from:prezto
zplug "junegunn/fzf-bin", as:command, from:gh-r, rename-to:fzf
zplug "peco/peco", as:command, from:gh-r, use:"*amd64*"
zplug "b4b4r07/enhancd", use:init.sh
zplug "zsh-users/zsh-syntax-highlighting", defer:2

if ! zplug check; then
     install
fi

zplug load

# prompt settings
autoload -U promptinit; promptinit
prompt pure

source ~/.bashrc

# alias
alias c=clear
alias fig=docker-compose
alias logs="docker-compose logs --tail 30 -f"
alias rails="docker-compose run --rm web bundle exec rails"
alias rubocop="docker-compose run --rm web bundle exec rubocop"
alias rspec="docker-compose run --rm web bundle exec rspec"

