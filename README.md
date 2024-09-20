# ML course
## Installation
### Linux/macOS
1. Download `python`, `pyenv` and `make`:

**Arch Linux**
```shell
sudo pacman -Syu python pyenv make
```

2. Install `pyenv` with 3.12 Python version, if not installed yet:
```shell
pyenv install 3.12
```

### Windows
You will need Python 3.12 or above installed globally and `make`.

The project will automatically download and install all necessary tools.

## Usage
To launch the labs environment, use the following commands depending on your operating system:

**Linux/macOS**
```shell
make run
```

**Windows**
```shell
make run-win
```
