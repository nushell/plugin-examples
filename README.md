# nushell/plugin-examples
[![Nushell](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2Fnushell%2Fplugin-examples%2Frefs%2Fheads%2Fsetup%2FCargo.toml&query=workspace.dependencies.nu-protocol.version&prefix=v&label=nushell&color=%234E9906)](https://github.com/nushell/nushell)
[![Build Status](https://img.shields.io/github/actions/workflow/status/nushell/plugin-examples/ci.yml)](https://github.com/nushell/plugin-examples/actions)

Plugin examples for Nushell in different languages.

## About  
This repo has example Nushell plugins written in different languages.  
Each plugin is tested daily via CI against the latest `main` branch of 
[nushell](https://github.com/nushell/nushell).  
You can use them as a starting point for building your own plugin.  

For more real plugins, check out 
[nushell/awesome-nu](https://github.com/nushell/awesome-nu?tab=readme-ov-file#plugins).

## Plugins  
Plugins are organized by language (e.g. `rust/`) and live in their own folders.  
Each folder usually includes:  
- a test file  
- a `.cmd` file if the plugin needs a scripting runtime (helps with local testing on Windows)  

Every plugin is also listed in the [CI workflow](./.github/workflows/ci.yml) to 
ensure it gets tested regularly.  
