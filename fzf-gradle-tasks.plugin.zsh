r0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"
0="${${(M)0:#/*}:-$PWD/$0}"
FZF_GRADLE_TASKS_HOME="${0:A:h}"

source "$FZF_GRADLE_TASKS_HOME"/completions/_gradle_tasks
source "$FZF_GRADLE_TASKS_HOME"/fzf-gradle-tasks.zsh

