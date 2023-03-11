# For some reason, needs to be added twice. Maybe Fasd ignores single entries.
fasd -A $GITHUB_WORKSPACE
fasd -A $GITHUB_WORKSPACE

@test "shows the recorded workspace directory" \
    (__fasd_print_completion -a) = $GITHUB_WORKSPACE
