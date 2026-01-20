# fzf gradle tasks

[zsh](https://www.zsh.org/) gradle completions, sort of following up on [this](https://github.com/gradle/gradle-completion/issues/88) issue.

# Usage

Tab where gradle completions would be provided to get unqualified tasks as completions.

Call `fzf-gradle-tasks` to get all tasks for a project i.e.

```zsh
bindkey '^G' fzf-gradle-tasks
```

# Install

depends on [zsh](https://www.zsh.org/), [fzf](https://github.com/junegunn/fzf).

Install with a [plugin manager](https://github.com/rossmacarthur/zsh-plugin-manager-benchmark) or manually:

## Manual (Git Clone)

```sh
git clone https://github.com/tom-power/fzf-gradle-tasks ~/.zsh/fzf-gradle-tasks

```sh
# ~/.zshrc
source ~/.zsh/fzf-gradle-lite/fzf-gradle-tasks.plugin.zsh
```
