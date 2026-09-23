# devcheck
A tool for checking development environments.

`devcheck` is a command-line tool that helps developers ensure their development environments
are configured correctly for the project they are working on. `devcheck` provides
an easy way to set up your development environment checking by just creating a `.devcheck.rb` file
and populating it with the required commands and files needed for the project to function properly.

## Installation
`devcheck` can be installed by running the `gem install devcheck` command from your terminal. 

Ruby is required to install and run `devcheck`. You will need Ruby version 3.0 or higher.
macOS Users will need to install a newer version of Ruby since the version Apple ships does not
meet the minimum Ruby version required by `devcheck`.

## Usage
`devcheck` can be run by typing `devcheck` in your terminal. All you need is to have a
`.devcheck.rb` file in your project directory and the Ruby interpreter. This program only
checks for commands and files. 

### Example
```bash
devcheck
```
```text
devcheck
Checking Development Environment

✓ ruby
✓ irb
✓ git

✓ LICENSE
✓ README.md

All checks passed!
```

### Exit Codes
This program uses exit codes to help indicate the status of the program.
* `0`: All checks passed.
* `1`: One or more checks failed or the `.devcheck.rb` file is missing.

## Configuration
As mentioned earlier, all you need is a `.devcheck.rb` file in your project directory. A sample
configuration file is shown and explained below.

```ruby
command "ruby"
command "git"

file "README.md"
file "LICENSE"
```
- `command "name"` refers to a specific command that might be run by the program or require you to have said command installed on your device.
- `file "path"` refers to a specific file that might be required by the program or need to be present in the project directory for it to function properly. 

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
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.