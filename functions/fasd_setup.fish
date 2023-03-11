function fasd_setup -d "Setup fasd.fish"
    argparse h/help commands= -- $argv

    if set -ql _flag_h
        printf "%s\n" \
            "__fasd_setup — Setup fasd.fish" \
            "" \
            "Options:" \
            "  -h, --help" \
            "    Show this help message." \
            "" \
            "  --commands" \
            "    A comma delimited list of commands to register." \
            "    Default: f,a,s,sd,sf,d,z,zz."
    end

    if not set -ql _flag_commands; or [ -z $_flag_commands ]
        set --function _flag_commands "f,a,s,sd,sf,d,z,zz"
    end

    for command in (string split "," $_flag_commands)
        switch $command
            case a
                function a -d "Match files and directories"
                    fasd -a $argv
                end
                complete -c a -a "(__fasd_print_completion -a)" -f
            case d
                function d -d "Match directories only"
                    fasd -d $argv
                end
                complete -c d -a "(__fasd_print_completion -d)" -f
            case f
                function f -d "Match files only"
                    fasd -f $argv
                end
                complete -c f -a "(__fasd_print_completion -f)" -f
            case s
                function s -d "Interactively select from all"
                    fasd -is $argv
                end
                complete -c s -a "(__fasd_print_completion)" -f
            case sd
                function sd -d "Interactively select directory"
                    fasd -isd $argv
                end
                complete -c sd -a "(__fasd_print_completion -d)" -f
            case sf
                function sf -d "Interactively select file"
                    fasd -isf $argv
                end
                complete -c sf -a "(__fasd_print_completion -f)" -f
            case z
                function z -d "Change directory to first match"
                    fasd_cd -d $argv
                end
                complete -c z -a "(__fasd_print_completion -d)" -f
            case zz
                function zz -d "Change directory with interactive selection"
                    fasd_cd -id $argv
                end
                complete -c zz -a "(__fasd_print_completion -d)" -f
        end
    end
end
