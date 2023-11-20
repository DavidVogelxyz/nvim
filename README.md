# Neovim config files

Requires [ripgrep](https://github.com/BurntSushi/ripgrep). Ripgrep can be found in both the official Debian and Arch repos as `ripgrep`.

## Profiles

The 'default' profile is a profile with no LSP. This profile is ideal for situations where Neovim is a text editor, but not an IDE.

The 'lsp-v2' profile is the optimal profile with an LSP. This profile is ideal for an IDE.

The 'lsp-v1' profile was created only for machines that couldn't run the 'lsp-v2' profile. One example is a stock Debian 12 install. As of writing, Debian stable still uses nvim 0.7.2, which is too old to run some of the up-to-date plugins in the 'lsp-v2' profile. One solution was to create a profile that would bring the LSP functions to the nvim 0.7.2 machine. That profile was 'lsp-v1'.

However, another solution is to build Neovim from source and reinstall it. Since this is the preferred solution, 'lsp-v1' is rarely used.

## Installation

Once the repo is cloned and a profile has been chosen, follow the appropriate next step:

For the 'default' profile:
- remove 'after/plugin/lsp.lua'

For the LSP profiles:
- 'init.lua' should be changed to point to the preferred profile ('lsp-v2')
