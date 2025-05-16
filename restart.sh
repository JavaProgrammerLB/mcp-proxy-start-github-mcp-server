#!/bin/bash
ps aux | grep runGithubMCPStdioServer.sh | grep -v grep | awk '{print $2}' | xargs -r kill -9

nohup mcp-proxy sh ~/Program/mcp-proxy/runGithubMCPStdioServer.sh --port=8085 --host=0.0.0.0 -e MYGITHUB_PERSONAL_ACCESS_TOKEN ${MYGITHUB_PERSONAL_ACCESS_TOKEN} > mcpProxyGithubMCPServer.log 2>&1 &