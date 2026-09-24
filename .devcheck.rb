# .devcheck.rb
# devcheck
# Copyright (c) 2026 Louie Bloomberg.
# SPDX-License-Identifier: MIT


# frozen_string_literal: true

name "devcheck"
id "devcheck"

command "ruby"
command "bundle"
command "git"
command "gem"

file "LICENSE"
file "README.md"
file ".devcheck.rb"
file "devcheck"
file "devcheck.gemspec"
file "Gemfile"
file "Rakefile"
