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

## Write your own plugin

This repo contains examples of how to implement specific behaviors in Nushell 
plugins.
If you want to stream data, return a table, handle arguments, or work with 
custom types, there's likely an example here that shows how to do it.

To build your own plugin from scratch:

- Start with our official plugin template for a clean setup:  
  👉 [nushell/nu_plugin_template](https://github.com/nushell/nu_plugin_template)

- Read the full plugin guide in the Nushell book:  
  📚 [Plugin guide on nushell.sh](https://www.nushell.sh/contributor-book/plugins.html)

You might need to update the Nushell dependencies in the plugin template, 
since it can lag behind the latest 
[nushell](https://github.com/nushell/nushell) version.  
For more real-world plugins, check out  
[nushell/awesome-nu](https://github.com/nushell/awesome-nu?tab=readme-ov-file#plugins).