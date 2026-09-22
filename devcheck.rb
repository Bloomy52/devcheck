# devcheck.rb
# devcheck
# Copyright (c) 2026 Louie Bloomberg.
# SPDX-License-Identifier: MIT

# frozen_string_literal: true

# Define Global Variables
$failures = 0
$commands = []
$files = []

# Define Functions
def command(name)
  $commands << name
end

def file(name)
  $files << name
end


def command_exists?(cmd)
  # On Windows, use 'where', on Unix-like systems use 'which'
  checker = Gem.win_platform? ? 'where' : 'which'

  # Suppress output and check exit status
  system("#{checker} #{cmd} > /dev/null 2>&1")
  if $?.success?
    puts "✓ #{cmd}"
  else
    puts "✗ #{cmd}"
    $failures += 1
  end
end


def file_exists?(file)
  if File.exist?(file)
    puts "✓ #{file}"
  else
    puts "✗ #{file}"
    $failures += 1
  end
end

begin
  load ".devcheck.rb"
rescue LoadError
  puts "No .devcheck.rb file found"
  exit 1
end

if __FILE__ == $0
  puts "devcheck"
  puts "Checking Development Environment"
  puts ""

  if $commands.empty?
    puts "No Commands Specified."
  else
    $commands.each do |cmd|
      command_exists?(cmd)
    end
  end

  puts ""

  if $files.empty?
    puts "No Files Specified."
  else
    $files.each do |file|
      file_exists?(file)
    end
  end

  puts ""

  if $failures > 0
    if $failures == 1
      puts "#{$failures} check failed"
    else
      puts "#{$failures} checks failed"
    end
    exit 1
  else
    puts "All checks passed!"
    exit 0
  end

end