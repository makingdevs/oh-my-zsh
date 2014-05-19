# ------------------------------------------------------------------------------
#          FILE:  jj-juicy.zsh-theme
#   DESCRIPTION:  oh-my-zsh theme file.
#        AUTHOR:  José Juan R. Zuñiga (juan@makingdevs.com)
#       VERSION:  0.1
#    SCREENSHOT:
# ------------------------------------------------------------------------------
local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%}  "
PROMPT='${vim_mode}$(git_prompt_info)$(git_prompt_status) %{$fg[yellow]%}❯%{$reset_color%} '
RPROMPT='${return_status}%{$fg[green]%}%~%{$reset_color%} %{$fg_bold[magenta]%}[ %T ]%}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""


ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

vim_ins_mode="%{$fg[yellow]%}^_^%{$reset_color%} "
vim_cmd_mode="⌘ "
vim_mode=$vim_ins_mode

function zle-keymap-select {
  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
  zle reset-prompt
}
zle -N zle-keymap-select

function zle-line-finish {
  vim_mode=$vim_ins_mode
}
zle -N zle-line-finish
