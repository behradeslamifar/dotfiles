# vimrc howto

## Install Plugin Manager
Download Plug Vim
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Copy .vimrc
```bash
cp vim/.vimrc ~/.vimrc
```

Run `:PlugInstall` inside vim

## Install vim-go dependencies
Run `:GoInstallBinaries` in vim to install all dependenies.

or run
```
go install golang.org/x/tools/gopls@latest
go install golang.org/x/tools/cmd/goimports@master
go install golang.org/x/tools/cmd/gorename@master
go install golang.org/x/lint/golint@master
go install github.com/josharian/impl@master
go install github.com/jstemmer/gotags@master
go install github.com/golangci/golangci-lint/cmd/golangci-lint@master
go install github.com/fatih/gomodifytags@master
go install github.com/fatih/motion@master 
go install github.com/klauspost/asmfmt/cmd/asmfmt@master
go install github.com/koron/iferr@master
go install github.com/go-delve/delve/cmd/dlv@master
go install github.com/kisielk/errcheck@master
go install github.com/rogpeppe/godef@master
go install golang.org/x/tools/cmd/guru@master
go install github.com/davidrjenni/reftools/cmd/fillstruct@master
go install honnef.co/go/tools/cmd/keyify@master
```
