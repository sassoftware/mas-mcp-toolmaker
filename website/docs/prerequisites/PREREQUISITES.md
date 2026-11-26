# Prerequisites

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
