@test "f works" (
    f foo
) $status -eq 0
@test "a works" (
    a foo
) $status -eq 0
@test "s works" (
    s foo
) $status -eq 0
@test "d works" (
    d foo
) $status -eq 0
@test "d works" (
    z foo
) $status -eq 0
