# Suggest paths for current args as completion.
function __fasd_print_completion
    # commandline throws an error if the shell is not interactive
    if status is-interactive
        set --function cmd (commandline -po)
    end
    fasd $argv $cmd[2..-1] -l
end
