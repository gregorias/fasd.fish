# Notes

## Why functions?

The `a d f s sd z zz` aliases are implemented as functions to prevent automatic
creation of wrapped completions on the aliased command, which results in
incorrect suggestions.

## Why do we use a setup function?

The aliases are setup in a special setup function, so that the user may choose
which one they wish to have. This choice is important, because single letter
commands are a prime real estate, and the user may not wish to have them all.
For example, `s` and `d` compete with [Fishmarks][fishmarks], and the user may
prefer the Fishmark version.

Using `function` or `completions` for the aliases is out of the question,
because Fish always loads them.

[fishmarks]: https://github.com/techwizrd/fishmarks
