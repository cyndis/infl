Infl
----

Infl is a tool to convert Ruby code into Python. Useful for those pesky
programming exercises where you absolutely must turn in the code in python.

Requirements
============

- Rubinius with Ruby 1.9 support

Features
========

- Implicit `self` when accessing methods in current class
  - but only in current class context
  - must be defined in file prior to being referenced
- `each`, `map`, `sort_by`
- Some ruby standard library methods

Unimplemented
=============

- Implicit return
- Array range access
- A lot of other stuff

Usage
=====

- Edit `infl` and change the shebang to point to your rbx installation
- `infl hello.rb` produces a file in the same directory called `hello.py`.
  Or probably crashes if you have anything remotely interesting code in your
  input file.
