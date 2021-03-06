# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/lewis/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
ZSH_THEME="ys"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Git
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gcm="git commit -m"
alias gcam="git commit -a -m"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gp="git push"
alias gl="git pull"
alias gm="git merge"
alias gb="git branch"
alias gd="git diff"
alias gr="git rebase"
alias grc="git rebase --continue"
alias gri="git rebase -i"
alias gra="git rebase --abort"
alias gst="git stash"
alias gstl="git stash list"
alias gstp="git stash pop"

# Application
alias chrome="open -a \"/Applications/Google Chrome.app\""


#source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export M2_HOME=/usr/local/apache-maven/apache-maven-3.5.4
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin

export PATH=$PATH:/usr/local/go/bin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias jumper="ssh zhanglinwei02@jumper.sankuai.com"

# man中文文档
alias cman="man -M /usr/local/share/man/zh_CN"

# gnu工具
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# vscode快捷打开文件
export PATH=/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin:$PATH

export PATH=~/Software/flutter/bin:$PATH

# flutter国内镜像
export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn

# android skd path
export ANDROID_HOME=/Users/lewis/Software/android-sdk-macosx
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/build-tools/

# gradle path
export GRADLE_HOME=/Users/lewis/Software/gradle-4.10.2
export PATH=$PATH:$GRADLE_HOME/bin
export PATH="/usr/local/opt/sqlite/bin:$PATH"

# z 自动跳转目录
source ~/Software/z/z.sh

# https://github.com/Qix-/better-exceptions
export BETTER_EXCEPTIONS=1

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home"

# 关闭homebrew自动更新
export HOMEBREW_NO_AUTO_UPDATE=true
