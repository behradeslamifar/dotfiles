# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\] [\W]\[\033[00m\]\$ '
PROMPT_COMMAND="history -a"

eval `ssh-agent` 2>/dev/null 1>&2
ssh-add 2>/dev/null 1>&2
source <(kubectl completion bash | sed 's/kubectl/k/g')
source <(kubectl completion bash)
source <(helm completion bash)
source <(helm2 completion bash 2>/dev/null | sed 's/helm/helm2/g')
source <(kind completion bash)
source <(istioctl completion bash)
#complete -C /usr/local/go/bin/gocomplete go

export GOPATH=$HOME/go export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export PATH=$PATH:${GOPATH}/bin:/home/linuxbrew/.linuxbrew/bin/:/home/linuxbrew/.linuxbrew/sbin/
export PATH="${PATH}:${HOME}/.krew/bin"
export EDITOR=/usr/bin/vim
 
complete -C /usr/local/bin/mc mc
complete -C /usr/bin/terraform terraform

