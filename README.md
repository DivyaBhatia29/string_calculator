# String Calculator

This repository contains a TDD implementation of the String Calculator kata in Ruby using RSpec.

## How to run
1. Install dependencies:
bundle install

2. Run Tests
bundle exec rspec

## What I implemented (TDD steps)
- Empty string => 0
- Single number => returns the number
- Two numbers, comma separated
- Any number of numbers
- Newline as separator
- Custom delimiter at start `//[delimiter]\n`
- Throws error for negatives listing all negatives

## commit history shows tdd approach
7e95b1e (HEAD -> master) refactor: robust delimiter parsing and trimming
a63e3be feat: raise error for negative numbers listing all negatives
39ec272 feat: support custom single-char delimiter
b4899c9 feat: support newline as delimiter
627f20b test: add variable-length input test
351bd94 feat: support comma separated numbers
6d00304 feat: support single number inputs
c06f57d feat: empty string returns 0 add add('') => 0
178e52e chor: initial commit inti project and add skeleton

## Screenshots are attached in screenshots folder
Git Commit History
(./screenshots/git_log.png)

All test Cases
(./screenshots/test_cases1.png)
