# devcheck.gemspec
# devcheck
# Copyright (c) 2026 Louie Bloomberg.
# SPDX-License-Identifier: MIT

Gem::Specification.new do |spec|
  spec.name        = "devcheck"
  spec.version     = "0.1.4"
  spec.summary     = "Check a project's development environment"
  spec.authors     = ["Louie Bloomberg"]
  spec.license     = "MIT"
  spec.required_ruby_version = ">= 3.0"

  spec.bindir      = "."
  spec.executables = ["devcheck"]

  spec.homepage = "https://github.com/Bloomy52/devcheck"

  spec.files = ["devcheck", "README.md", "LICENSE"]
end