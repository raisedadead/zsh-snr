# zsh-snr

> A Zsh plugin to pass the selected output of the first command to next!

## Installation

### zinit

```zsh
zinit wait lucid for raisedadead/zsh-snr
```

<details>
<summary>Other Plugin Managers</summary>

### Zplug

```zsh
zplug "raisedadead/zsh-snr"
```

### Antigen

```zsh
antigen bundle raisedadead/zsh-snr
```

### Oh-My-Zsh

```zsh
git clone https://github.com/raisedadead/zsh-snr.git $ZSH_CUSTOM/plugins/zsh-snr
```

```zsh
plugins=(
  #...
  zsh-snr
  )
```

### Manual

```zsh
git clone https://github.com/raisedadead/zsh-snr.git
source zsh-snr/snr.plugin.zsh
```

</details>

## Usage

```zsh
snr <command-one --optional-flags-cmd-one> <command-two --optional-flags-cmd-two>

# Example usage
# snr "gh pr list" "gh pr checkout"
```

## License

Software: The software as it is licensed under the [ISC](LICENSE) License,
please feel free to extend, re-use, share the code.
