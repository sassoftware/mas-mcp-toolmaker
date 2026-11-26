# SAS Micro Analytic Service (MAS) - Model Context Protocol (MCP) Tool Maker
 
## mas-mcp-toolmaker

> 📢 
> *A Model Context Protocol (MCP) Server Script for your SAS Viya Micro Analytic Service (MAS) modules.*

The Python package in this repository generates a Model Context Protocol (MCP) server script to execute published [SAS Micro Analytic Services (MAS)](https://support.sas.com/en/software/micro-analytic-service-support.html) modules. 

### But, Why?

MCP tools can bloat your agents pretty quickly. You need specialist, relevant tools which you can pick and choose as per need. `mas-mcp-toolmaker` helps you do this.  This package is a convenient way to interface with a SAS Viya environment using Model Context Protocol (MCP).  

> 📢 
> Read this 
[article](https://ai.plainenglish.io/finding-goldilocks-too-broad-tools-too-many-tools-optimising-your-mcp-server-b108c3072d21) to learn more.
> Also watch this [video](https://players.brightcove.net/3665946608001/default_default/index.html?videoId=6399384694112).

The output Python script comes with a choice of two flavours - an MCP server served through stdio, or a format customised for [SAS Retrieval Agent Manager (RAM)](https://www.sas.com/en_us/software/retrieval-agent-manager.html). A third Streamable HTTP version is planned.

<mark> Python package at: https://pypi.org/project/mas-mcp-toolmaker/ </mark>

A wiki of this repo has been generated using DeepWiki and is available here: [![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/SundareshSankaran/mas-mcp-toolmaker)


### Prerequisites

1. Package requirements: Python 3.12 or later

2. Access to a licensed [SAS Viya](https://www.sas.com/en_us/software/viya.html) environment with SAS Micro Analytic Service (MAS).  This is typically a SAS Viya Enterprise or SAS Viya Advanced offering. 
   - While this repo is open source, SAS Viya is proprietary software from [SAS Institute](https://www.sas.com/). Running SAS Viya requires a license and functioning credentials.

3. The Viya host and an Access token (details in [Installation](#installation)) to connect to the same, set through the following environment variables.

```bash
VIYA_HOST = 
VIYA_ACCESS_TOKEN = 
```

A sample [.env](https://github.com/sassoftware/mas-mcp-toolmaker/blob/main/sample.env) is also provided.

4. (Optional) A [SAS Retrieval Agent Manager (RAM)](https://www.sas.com/en_us/software/retrieval-agent-manager.html) deployment if you want to run the RAM flavour of the MCP server script.


## Installation

1. While not mandatory, we recommended standing up a virtual environment before installing this package.  A convenient shell script [`build.sh`](https://github.com/sassoftware/mas-mcp-toolmaker/blob/main/build/build.sh) is provided for this purpose.  Refer this [repository](https://github.com/SundareshSankaran/build-script) for a starter build script.  Also read this [article](https://communities.sas.com/t5/SAS-Communities-Library/My-Build-Script-in-Visual-Studio-Code-An-Automation-Pattern/ta-p/988674) for more details.

2. The simplest way is to pip install this package from pypi.org
```
pip install mas-mcp-toolmaker
```

3. In case you would like to perform a local install,
```
# After cloning this repository and entering the top-level directory.

pip install -e .
```

4. Use a .env file (refer [`sample.env`](https://github.com/sassoftware/mas-mcp-toolmaker/blob/main/sample.env), create a copy and rename to `.env`) to set environment variables for the following:
   (Refer this link for more details on obtaining access tokens: [Authentication to SAS Viya: a couple of approaches](https://blogs.sas.com/content/sgf/2023/02/07/authentication-to-sas-viya/))
   - VIYA_HOST: A URL pointing to your SAS Viya environment
   - VIYA_ACCESS_TOKEN: An access token which helps you authenticate to SAS Viya

#### Note: Maintenance utility for VS Code users

For those who would like to use this repository in Visual Studio Code, the [`.vscode`](https://github.com/sassoftware/mas-mcp-toolmaker/blob/main/.vscode) directory in this repo contains some automated tasks which perform cleanup of old artifacts (previous virtual environment directories, for example) every time you reopen the repository.  Remove this directory in case you do not want the automated task to run. 


### Getting Started

Run the following example notebook: [`mas-mcp-toolmaker.ipynb`](https://github.com/sassoftware/mas-mcp-toolmaker/blob/main/mas-mcp-toolmaker.ipynb).

```bash
# if using virtual environment (use Windows equivalent where applicable)
cd build
. buildproj/bin/activate
jupyter-lab
```


### Operations

Using this package is very simple.  At a fundamental level, there are two operations involved. 

1. Generating a list of MAS modules from a SAS Viya environment

```python
from mas_mcp_toolmaker import MASModule

masm = MASModule()

```

2. Writing the extracted modules in tool representation to an MCP server script of your chosen flavour.

```python
masm.script_stdio_server("your_server_file.py")

# or, if you wish to write to a Retrieval Agent Manager file 

masm.script_ram_server("your_ram_server_file.py")
```

Refer the notebook for other functions.


### Troubleshooting & Support

Use the [Issues](https://github.com/sassoftware/mas-mcp-toolmaker/issues) page for raising any questions and feature requests.  

## Contributing

Maintainers are not currently accepting patches and contributions to this project.  

However, you are free to ask for a feature or raise bugs using the [Issues](https://github.com/sassoftware/mas-mcp-toolmaker/issues) page mentioned above and we'd love to get in touch and engage more. 


## License

This project is licensed under the [Apache 2.0 License](https://github.com/sassoftware/mas-mcp-toolmaker/blob/main/LICENSE).

Python packages may contain dependencies on other third-party packages which are governed by their own licenses. 

Note the dependencies listed below.

1. The [requirements.txt](https://github.com/sassoftware/mas-mcp-toolmaker/blob/main/build/requirements.txt) page (which includes this package).
2. The package's [pyproject.toml](https://github.com/sassoftware/mas-mcp-toolmaker/blob/main/pyproject.toml) page.

Users of this repository are responsible for ensuring that their use complies with all applicable licenses.

## Third-Party Dependencies

This project requires the following dependencies.

| Dependency | License |
| ---------- | ------- |
| `github.com/sassoftware/mas-mcp-toolmaker` | [Apache 2.0](https://github.com/sassoftware/mas-mcp-toolmaker/blob/main/LICENSE) |
| `github.com/psf/requests` | [Apache 2.0](https://github.com/psf/requests/blob/main/LICENSE) |


## Additional Resources

* [`https://ai.plainenglish.io/finding-goldilocks-too-broad-tools-too-many-tools-optimising-your-mcp-server-b108c3072d21`](https://ai.plainenglish.io/finding-goldilocks-too-broad-tools-too-many-tools-optimising-your-mcp-server-b108c3072d21)
* [`https://sundareshsankaran.substack.com/p/finding-goldilocks-too-broad-tools`](https://sundareshsankaran.substack.com/p/finding-goldilocks-too-broad-tools) (Substack version in case you run into paywall issues on ai.plainenglish.io)
* [`https://www.youtube.com/watch?v=AVHUgFPfyBQ`](https://www.youtube.com/watch?v=AVHUgFPfyBQ)


## Contact
   - Sundaresh Sankaran ([email](mailto:sundaresh.sankaran@sas.com))

## Version
   - Version 1.2.1 (04JUL2026)(23OCT2026 - this repo)
      - First version on `sassoftware`
   - Version 1.0.0 (13MAY2026)

Refer [`CHANGELOG.md`](https://github.com/sassoftware/mas-mcp-toolmaker/blob/main/docs/CHANGELOG.md) for a detailed change log including previously hosted repository.
