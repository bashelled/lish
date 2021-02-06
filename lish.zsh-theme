ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN="."
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} +"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%} ="
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} x"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%} :"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%} !"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%} o"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg[grey]%} ^"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[blue]%} >"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg[red]%} <"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg[grey]%} $"

function work_in_progress() {
  if $(git log -n 1 2>/dev/null | grep -q -c "\-\-wip\-\-"); then
    echo "(WIP)"
  fi
}

PROMPT='$fg[white]%}%#%f %{$fg[green]%}%n@%m%f %{$fg[cyan]%} %~%f %(?.%{$fg[green]%}Y%f.%{$fg[red]%}X%f), %t, $(git_prompt_info) $(git_prompt_status)%f $(work_in_progress)
> '
