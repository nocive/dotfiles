
COLOR_RESET='\[\033[00m\]'

# regular colors
COLOR_BLACK='\[\033[00;30m\]'
COLOR_RED='\[\033[00;31m\]'
COLOR_GREEN='\[\033[00;32m\]'
COLOR_YELLOW='\[\033[00;33m\]'
COLOR_BLUE='\[\033[00;34m\]'
COLOR_PURPLE='\[\033[00;35m\]'
COLOR_CYAN='\[\033[00;36m\]'
COLOR_WHITE='\[\033[00;37m\]'

# bold colors
COLOR_BBLACK='\[\033[01;30m\]'
COLOR_BRED='\[\033[01;31m\]'
COLOR_BGREEN='\[\033[01;32m\]'
COLOR_BYELLOW='\[\033[01;33m\]'
COLOR_BBLUE='\[\033[01;34m\]'
COLOR_BPURPLE='\[\033[01;35m\]'
COLOR_BCYAN='\[\033[01;36m\]'
COLOR_BWHITE='\[\033[01;37m\]'

# high intensity colors
COLOR_IBLACK='\[\033[00;90m\]'
COLOR_IRED='\[\033[00;91m\]'
COLOR_IGREEN='\[\033[00;92m\]'
COLOR_IYELLOW='\[\033[00;93m\]'
COLOR_IBLUE='\[\033[00;94m\]'
COLOR_IPURPLE='\[\033[00;95m\]'
COLOR_ICYAN='\[\033[00;96m\]'
COLOR_IWHITE='\[\033[00;97m\]'

# bold high intensity colors
COLOR_BIBLACK='\[\033[01;90m\]'
COLOR_BIRED='\[\033[01;91m\]'
COLOR_BIGREEN='\[\033[01;92m\]'
COLOR_BIYELLOW='\[\033[01;93m\]'
COLOR_BIBLUE='\[\033[01;94m\]'
COLOR_BIPURPLE='\[\033[01;95m\]'
COLOR_BICYAN='\[\033[01;96m\]'
COLOR_BIWHITE='\[\033[01;97m\]'

export EDITOR=vim
export PATH="$PATH:~/bin"

# bash prompt with git prompt support
source ~/.dotfiles/git_prompt.sh

__prompt_cmd() {
    if [[ "$TERM" == "xterm" ]]; then
        PROMPT_WINDOW_TITLE='\033]0;\u@\h:\w\007'
    fi
    PROMPT_TIME="${COLOR_IBLACK}\\t${COLOR_RESET}"
    PROMPT_USER="${COLOR_BPURPLE}\u${COLOR_RESET}"
    PROMPT_HOST="$COLOR_BPURPLE\h${COLOR_RESET}"
    PROMPT_USER_HOST="${PROMPT_USER}${COLOR_PURPLE}@${COLOR_RESET}${PROMPT_HOST}"
    PROMPT_PWD="${COLOR_BBLUE}\w${COLOR_RESET}"

    export PROMPT_COMMAND='__git_ps1 "$PROMPT_WINDOW_TITLE${debian_chroot:+($debian_chroot)}$PROMPT_TIME $PROMPT_USER_HOST\n$PROMPT_PWD" "\\\$ "'
}

GIT_PS1_SHOWCOLORHINTS=1
__prompt_cmd
