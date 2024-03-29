# 🐟 fasd.fish

A plugin for [fish] to integrate [fasd] into efficiency-seeking workflows:

> Fasd (pronounced similar to "fast") is a command-line productivity booster.
> Fasd offers quick access to files and directories for POSIX shells. It is
> inspired by tools like autojump, z and v. Fasd keeps track of files and
> directories you have accessed, so that you can quickly reference them in the
> command line.

## Prerequisites

You need [fasd]. On macOS, install with [Homebrew][homebrew]:

```fish
brew install fasd
```

## Installation

Install with [`fisher`](https://github.com/jorgebucaran/fisher):

```fish
fisher install gregorias/fasd.fish
```

Add the setup command to your `config.fish`:

```fish
fasd_setup
```

## Usage

Installing the plugin will enable the following functions (same as the `bash` aliases):

```bash
alias a="fasd -a"        # any
alias s="fasd -si"       # show / search / select
alias d="fasd -d"        # directory
alias f="fasd -f"        # file
alias sd="fasd -sid"     # interactive directory selection
alias sf="fasd -sif"     # interactive file selection
alias z="fasd_cd -d"     # cd, same functionality as j in autojump
alias zz="fasd_cd -d -i" # cd with interactive selection
```

Let's try one out:

```shell
$ a fish
1.458      /Users/tom/.dotfiles/.config/fish/config.fish
2.349      /Users/tom/Sync/code/pycopy/bin/activate.fish
4.5339     /Users/tom/.config/fish/config.fish
4.66506    /Users/tom/.config/fish/functions/update.fish
4.6758     /Users/tom/Sync/prjcts/ExpressLRS/src/bin/activate.fish
12         /Users/tom/.config/fish
```

For more info, check out the complete [fasd documentation][fasd].

[homebrew]: https://brew.sh
[fasd]: https://github.com/clvv/fasd
[fish]: https://fishshell.com/
