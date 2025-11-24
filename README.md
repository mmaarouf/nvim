# nvim [![CircleCI](https://dl.circleci.com/status-badge/img/gh/mmaarouf/nvim/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/mmaarouf/nvim/tree/main)

Repo containing neovim config and installation scripts.

To install nvim along with the config, run:

```bash
curl https://raw.githubusercontent.com/mmaarouf/nvim/refs/heads/main/install.sh  | bash
```

### Notes

* Assumes your system can install the latest nvim (0.11+) as the config uses features only available in newer versions of neovim.

## Development

### Required tools:

* Linux-like environment
* bash
* Docker
* Docker Compose
* An editorconfig compliant editor

### Repo directory breakdown

```
/
|
|- bin/ : contains scripts used to test, build and publish the code
|
|- deb-env/ : contains files pertaining to the development environment
|
|- nvim-config/ : contains all neovim configuration
|
|- installer/ : contains script that installs neovim and the nvim-config/
|
|- test/ : contains tests to ensure successfull installation
|
|- out/ : contains build artifacts (not checked into the repo)
```

### Development environment

All project dependencies and tooling used for development are installed in a [Dockerfile](/dev-env/Dockerfile), and all code executions should happen in that environmnent. See [`./bin/lint`](/bin/lint) as an example. Any non dev related scripts (such as installation scripts) should not be executable by themselves.

## nvim-config

### Colour scheme

Used [pintovim](https://pintovim.dev/) to create a colour scheme to my liking, then migrated it to [color-scheme.lua](/nvim-config/lua/color-scheme.lua).
To further alter the colours, you can import [color-scheme-pinto.json](/color-scheme-pinto.json) into [pintovim](https://pintovim.dev/) and edit it further.