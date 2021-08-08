# alias-zsh

`alias-zsh` is a zsh plugin for managing your aliases.

<!--
TODO: describe why this project is useful
-->

## Getting started

### Reguirements

* git

### Installation

#### Manual

Clone this repository locally:

```
git clone https://github.com/xylous/alias-zsh.git
```

And add the following lines to your `.zshrc`:

```
source /path/to/installation/alias-zsh.plugin.zsh
```

#### With a plugin manager

You can also use a plugin manager, such as `zpm`:

```
zpm load xylous/alias-zsh
```

### Usage

To tell `alias-zsh` from which directory it should select aliases:

```
alias-zsh use <directory>
```

To list aliases from that directory:

```
alias-zsh ls
```

To load an alias (as per `alias-zsh ls` output):

```
alias-zsh load <alias-name>
```

You can test this on the `aliases` directory at the root of this project:

```
$ alias use aliases
$ alias ls
...
cd
...
$ alias load cd
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to
discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](LICENSE)
