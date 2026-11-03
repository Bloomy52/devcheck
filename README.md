# devcheck
A tool for checking development environments.

`devcheck` is a command-line tool that helps developers ensure their development environments
are configured correctly for the project they are working on. `devcheck` provides
an easy way to set up your development environment checking by just creating a `.devcheck.rb` file
and populating it with the required commands and files needed for the project to function properly.

What makes `devcheck` unique is its ability to be flexible. Unlike compiled development environment
checkers, `devcheck` allows you to customize what commands and files to check for. You can also
personalize your project's name and ID to show up when running `devcheck`. 

## Installation
`devcheck` can be installed by running the `gem install devcheck` command from your terminal. 

Ruby is required to install and run `devcheck`. You will need Ruby version 3.0 or higher.
macOS Users will need to install a newer version of Ruby since the version Apple ships does not
meet the minimum Ruby version required by `devcheck`.

## Configuration
Before you can use `devcheck`, you need to create a `.devcheck.rb` file. A sample `.devcheck.rb`
is below along with other useful information.

```ruby
name "devcheck"  # Project Name
id "devcheck"    # Project ID

command "ruby"   # A command needed
command "git"    # Another command needed

file "README.md" # A file needed
file "LICENSE"   # Another file needed
```
- `name "name"` refers to the project's display-name/whatever the project is called.
- `id "name"` refers to the project's stable machine/repository-style identifier
- `command "name"` refers to a specific command that is required to be in your system's PATH variable.
- `file "path"` refers to a specific file that is required by the program in the project directory for it to function properly.


## Usage
`devcheck` can be run by typing `devcheck` in your terminal. All you need is to have a
`.devcheck.rb` file in your project directory and the Ruby interpreter. You can find the
configuration information above. This program only checks for commands and files. 

### Example
```bash
devcheck
```
```text
devcheck v0.4.0
Project Name: Go Choose Your License
Project ID: go-choose-license

Checking Development Environment

Commands:
✓ go
✓ git

Files:
✓ LICENSE
✓ README.md
✓ go.mod
✓ main.go

All checks passed!
```
And there are even colors too! Green if you pass a check and red if a check is failed.

### Environments
Starting with `devcheck` version `0.4.0`, you can now add environments to check
separate development environments. Check out an example of a `.devcheck.rb` file
```ruby
name "IsUnicodeText?"
id "isunicodetext"

environment "vb" do
    command "msbuild"
    file "IsUnicodeText.slnx"
    file "IsUnicodeText\\IsUnicodeText.vbproj"
    file "IsUnicodeText\\Form1.vb"
    file "IsUnicodeText\\Form1.Designer.vb"
    file "IsUnicodeText\\App.config"
end

environment "c" do
    command "cl"
    file "test_unicode.c"
end

command "git"
```
And when you want to call the `vb` environment, all you need to do type `devcheck vb` and you get
the checks for what is in the `vb` environment along with what is in the shared portion. 

### Exit Codes
This program uses exit codes to help indicate the status of the program.
* `0`: All checks passed.
* `1`: One or more checks failed or the `.devcheck.rb` file is missing.

## Contributing
We welcome contributions to the project and are so excited you have chosen to contribute!
To contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Make your changes and commit them with descriptive commit messages.
4. Push your changes to your forked repository.
5. Create a pull request to the main repository.

Please ensure that your code follows the existing style and conventions of the project.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.