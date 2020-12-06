# Project Euler solutions

![Workflow badge](https://github.com/disalazarg/euler/workflows/test-format-verify/badge.svg)


Personal solutions for Project Euler problems, written in Elixir.

## Structure

Under `lib/helpers` there's a bunch of helpers for various general math functions that are (or
would be) useful across multiple problems.

Under `lib/problems` there's the solution for each problem, encoded such that for problem number 23, its solution would be under `lib/problems/two/three.ex`. There are no plans to ever get up to 100, so this schema should be workable.

Tests follow a similar structure, with problem-specific tests of the traditional kind, validating the implementation follows the given example, while helper-specific tests try and check for properties instead---hence the dependency on [propcheck](https://github.com/alfert/propcheck).

## TODOs

Obviously there's many problems yet to be solved, but there's also the list of open issues at GitHub for non-solution improvements planned.
