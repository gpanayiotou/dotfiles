Git configuration
=================

Usage
-----

The install script ```install-git-config.sh``` soft links the common and platform-specific files to ```$HOME```.
Splitting the gitconfig may cause issues with certain editors/IDEs/plugins that don't support [include].

Line ending management
----------------------

Global management is to checkout/in as-is with LF (Unix) endings. In the case of problematic 
projects (Visual Studio), use .gitattribute files to manage filetypes that need CLRF enforced.

