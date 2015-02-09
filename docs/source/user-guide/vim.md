#Vim

The default editor is [Vim](http://www.vim.org/ "Vim's Hompeage"). Vim is configured with a couple of plugins like syntax checking for Dockerfiles and git integration.

# Spell Check
Vim is configured with spell check, the default language is *us_en*.
If you write something wrong the file will be automatically highlighted. To get a list of possible right words press *z=* when you are on the file, now you cab choose between possible solutions.
Please follow [this link](http://www.vim.org/scripts/script.php?script_id=3844) for more information about spell check with Vim.  

## Vim Plugins

[Vundle](https://github.com/gmarik/Vundle.vim "Vundle's Homepage") is used for managing the plugins.

Following plugins are installed:

- [fugitive.vim](https://github.com/tpope/vim-fugitive "fugitive plugin"): Git wrapper
- [Dockerfile.vim](https://github.com/ekalinin/Dockerfile.vim "dockerfile plugin"): Vim syntax file for [Docker](https://www.docker.com/)'s Dockerfile
- [Tabular.vim](https://github.com/godlygeek/tabular): Vim script for text filtering and alignment
- [vim-markdown](https://github.com/plasticboy/vim-markdown): Syntax highlighting, matching rules and mappings for [the original Markdown](http://daringfireball.net/projects/markdown/)
- [vim-json](https://github.com/elzr/vim-json): A better JSON for Vim
- [vim-airline](https://github.com/bling/vim-airline): lean & mean status/tabline for vim that's light as air
- [vim-nginx](http://www.vim.org/scripts/script.php?script_id=1886): Syntax highlighting for Nginx

## Screenshots

Dockerfile

![Screenshot-Dockerfile-Vim](img/Screenshot-Dockerfile-Vim.png)

Markdown

![Screenshot-Markdown-Vim](img/Screenshot-Markdown-Vim.png)
