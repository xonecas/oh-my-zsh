# From:
# http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    echo '○'
}

local current_dir='${PWD/#$HOME/~}'
local git_info='$(git_prompt_info)'
local promptc='$(prompt_char)'

PROMPT="%{$FG[197]%}%n%{$reset_color%} at %{$FG[185]%}%m%{$reset_color%} in %{$FG[118]%}${current_dir} ${git_info}%{$FG[033]%}${promptc}%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[239]%}on %{$FG[177]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$FG[160]%}✘ "
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$FG[118]%}✔ "
