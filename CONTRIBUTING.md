# AbstractStorage.jl contributor guidelines

## Issue reporting
If you have found a bug in AbstractStorage.jl or have any suggestions for changes to
AbstractStorage.jl functionality, please consider filing an issue using the GitHub
isssue tracker.  Please do not forget to search for an existing issue
which may already cover your suggestion.

## Contributing
We try to follow GitHub flow (https://guides.github.com/introduction/flow/) for
making changes to AbstractStorage.jl.

Contributors retain copyright on their contributions, and the MIT license
(https://opensource.org/licenses/MIT) applies to the contribution.

The basic steps to making a contribution are as follows, and assume some knowledge of
git (https://try.github.io/levels/1/challenges/1):
  1. fork the AbstractStorage.jl repository
  2. create an appropriately titled branch for your contribution
  3. if applicable, add a unit-test to ensure the functionality of your contribution
  (see the `test` subfolder).
  4. run `julia runtests.jl` in the `test` folder
  5. make a pull-request
  6. have fun

## Coding conventions
We try to follow the same coding conventions as https://github.com/JuliaLang/julia.
This primarily means using 4 spaces to indent (no tabs).  In addition, we make a
best attempt to follow the guidelines in the style guide chapter of the julia
manual: http://docs.julialang.org/en/release-0.5/manual/style-guide/
