# Dotfiles

This repository contains my personal dotfiles and configuration files for macOS. These configurations help me maintain a consistent development environment across different machines.

## 🚀 Features

- **Shell Configuration**: Zsh configuration with custom settings
- **Git Configuration**: Global git configuration
- **Package Management**: Homebrew package management
- **Development Tools**: Various development tools and applications

## 📦 Included Software

### Command Line Tools

- btop (system monitor)
- dotnet
- expat
- eza (modern ls replacement)
- lazydocker
- lazygit
- zsh

### Applications

- Cursor (IDE)
- DBVisualizer
- Hoppscotch
- iTerm2
- JetBrains Toolbox
- Maccy (clipboard manager)
- MonitorControl
- OpenKey
- OpenVPN Connect
- OrbStack
- Postman
- Rectangle (window manager)
- SourceTree
- TablePlus
- Visual Studio Code
- Windsurf

## 🛠️ Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/ninggiangboy/dotfiles-mac.git
   cd dotfiles
   ```

2. Run the installation script:
   ```bash
   ./install.sh
   ```

The installation script will:

- Install Homebrew if not present
- Update Homebrew
- Install all required packages and applications
- Set up configuration files

## 📁 Repository Structure

```
.
├── config/
│   ├── git/     # Git configuration files
│   └── zsh/     # Zsh configuration files
├── install.sh   # Installation script
└── README.md    # This file
```

## 🔧 Configuration Files

- `.zshrc`: Zsh shell configuration
- `.gitconfig`: Git global configuration

## 🤝 Contributing

Feel free to fork this repository and customize it for your own use. If you find any issues or have suggestions for improvements, please open an issue or submit a pull request.

## 📝 License

This project is open source and available under the [MIT License](LICENSE).
