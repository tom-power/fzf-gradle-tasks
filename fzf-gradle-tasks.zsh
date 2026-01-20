# __append_to_prompt, __select copied from
# https://github.com/pabloariasal/zfm/blob/master/zfm.zsh

function __append_to_prompt() {
    if [[ -z "$1" ]]; then
        zle reset-prompt
        return 0
    fi
    LBUFFER="./gradlew $(echo "$1" | tr -d '\r\n')"
    local ret=$?
    zle reset-prompt
    return $ret
}

local __list

function __select() {
    setopt localoptions pipefail no_aliases 2> /dev/null
    local opts="--reverse --exact --no-sort --cycle --height 100% $FZF_DEFAULT_OPTS"
    selected_dir="$(\
    echo $__list \
    | sed -re 's/^[[:space:]]*[0-9]+[[:space:]]+//' \
    | sed "s/^~/${HOME//\//\\/}/ig" \
    | FZF_DEFAULT_OPTS="$@ ${opts}" fzf --query "$lastPart" \
    | awk '{print $1}' \
    )"
    __append_to_prompt "$selected_dir"
}

function fzf-gradle-tasks() {
    lastPart=${BUFFER#* }
    __list=$(./gradlew -q :tasks --all | awk '!/^[A-Z]/ && $1 ~ /[a-zA-Z]/ {print $1}')
    __select
}

zle -N fzf-gradle-tasks
bindkey '^G' fzf-gradle-tasks
