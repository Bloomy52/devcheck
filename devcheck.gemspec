# devcheck.gemspec
# devcheck
# Copyright (c) 2026 Louie Bloomberg.
# SPDX-License-Identifier: MIT

Gem::Specification.new do |spec|
  spec.name        = "devcheck"
  spec.version     = "0.1.0"
  spec.summary     = "Check a project's development environment"
  spec.authors     = ["Louie Bloomberg"]
  spec.license     = "MIT"

  spec.bindir      = "."
  spec.executables = ["devcheck"]

  spec.files = ["devcheck", "README.md", "LICENSE"]
end