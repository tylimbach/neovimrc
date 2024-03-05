My neovim config, which began as a fork of ThePrimeagen's neovimrc.

This is personalized for my use, so technologies and plugins may change over time.

### Installation
Copy the contents of the repo into your nvim config directory, or clone the repo:

Default MacOS: ~/.config/nvim

Default Windows: %userprofile%/AppData/Local/nvim

### Dependencies
I have LSPs for many languages enabled by default, which require installations of relevant languages / SDKs. You can disable any LSPs you don't want by removing them from the lsp.lua, located at lua/theprimeagen/lazy/lsp.lua

Most noteably, csharp_ls requires .NET 8 SDK or higher if enabled
