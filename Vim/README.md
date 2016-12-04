Vim
===

Folder Structure
----------------

### /plugin

The folder is not used for actual plugins because of vim-plug (or similar) 
autocommands and keymappings.

### /ftdetect

Detect certain types of files, like the use of a framework and 
use corresponding settings.

Example: Detect keyword "React" in a JavaScript file.

### /ftplugin

Settings for individual filetypes, like indentation.

Example: javascript.vim
```viml
set expandtab
set shiftwidth=4
```

### /autoload

Autoloaded functions that are not loaded until called.

### /after

Settings saved here are loaded after the file with a corresponding name has been 
loaded.

Example: /after/plugin/NERDTree.vim

### /pack

Plugin directory used by Vim 8 "package"-feature.

#### /pack/bundle/start

Plugins that are loaded on vim start.

#### /pack/bundle/opt

Plugins that are loaded when called on with "packadd".

