# Neovim config files

This repo contains my Neovim config files.

The only thing to mention is the 3 profile setup. This was a convenient way to allow for conditionals.

The 'default' profile is a profile with no LSP. Ideal for situations where Vim is a text editor, but not an IDE.

The 'LSPv2' profile is the main profile with an LSP. Ideal as an IDE.

An example of a situation to use the 'LSPv1' profile is on a Debian 12 machine. Since it (as of writing) still uses nvim 0.7.2, that Debian machine would be unable to use the 'LSPv2' profile. Solutions include building neovim from source and reinstalling, but another solution was to create a profile that would bring the LSP functions to the nvim 0.7.2 machine. That profile is 'LSPv1'.
