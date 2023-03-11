fasd_setup --commands='f'

@test "f got registered" (
    type -q f
) $status -eq 0
@test "d did not get registered" (
    type -q d
) $status -ne 0
