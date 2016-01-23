# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

export JAVA_HOME=/usr/lib/jvm/java-1.7.0-openjdk.x86_64

# 作为Vimer，当然使用Vi模式编辑
set -o vi

export M2_HOME=/opt/maven
export PATH=$M2_HOME/bin:$PATH

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
