NeoVim Dotfiles
====

### Depends

- [NeoVim](https://neovim.io/)
- [Python3](https://www.python.org/)
- [FZF](https://github.com/junegunn/fzf)
- [GHC](https://www.haskell.org/ghc/)
- [Hackage](https://hackage.haskell.org/) / [Stackage](https://www.stackage.org/)
  - Ghc-mod
  - Hscope

### Setup

```sh
$ stack install ghc-mod codex hasktags hscope
$ chmod +x git-hscope
$ export PATH=$PATH:~/.local/bin
$ cp git-hscope ~/.local/bin
```
