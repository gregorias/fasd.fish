function __fasd_run -e fish_postexec -d "fasd records the directories changed into"
    if test $status -eq 0 # if there was no error
        command fasd --proc $argv >/dev/null 2>&1 &
        disown
    end
end
