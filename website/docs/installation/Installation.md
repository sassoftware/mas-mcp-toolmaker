## Installation

1. The simplest way is to pip install this package from pypi.org
```
pip install mas-mcp-toolmaker
```

2. While not mandatory, we recommended standing up a virtual environment before installing this package.  A convenient shell script [`build.sh`](https://github.com/sassoftware/mas-mcp-toolmaker/blob/main/build/build.sh) is provided for this purpose.  Refer this [repository](https://github.com/SundareshSankaran/build-script) for a starter build script.  Also read this [article](https://communities.sas.com/t5/SAS-Communities-Library/My-Build-Script-in-Visual-Studio-Code-An-Automation-Pattern/ta-p/988674) for more details.


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

For those who would like to use this repository in Visual Studio Code, the [`.vscode`](https://github.com/sassoftware/mas-mcp-toolmaker/tree/main/.vscode) directory in this repo contains some automated tasks which perform cleanup of old artifacts (previous virtual environment directories, for example) everytime you reopen the repository.  Remove this directory in case you do not want the automated task to run. 
