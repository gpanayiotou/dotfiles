Vim
===

Folder Structure
----------------

### /plugin

The folder is not used for actual plugins because of vim-plug and Vim 8 package
managing plugins automatically. Instead, core configuration, autocommands
and keymappings are put here for autoloading.

### /ftdetect

Detect certain types of files, like the use of a framework and
use corresponding settings.

Example: Detect keyword "React" in a JavaScript file.

### /ftplugin

Settings/scripts for individual filetypes.

Example:
```viml
" /ftplugin/c.vim or
" /ftplugin/c_extras.vim or
" /ftplugin/c/settings.vim
setlocal expandtab
setlocal shiftwidth=4
```

### /autoload

Lazy-loaded functions.

Example:
```viml
" /autoload/filename.vim
function filename#funcname()
    echo "Done!"
endfunction

" Later that day...
:call filename#funcname()
```

### /after

Settings saved here are loaded after the file with a corresponding name has been
loaded.

Example: /after/plugin/NERDTree.vim

### /pack

Plugin directory used by Vim 8 "package"-feature.

#### /pack/$ANY_NAME/start

Plugins that are loaded on vim start.

#### /pack/$ANY_NAME/opt

Plugins that are loaded when called on with "packadd".

