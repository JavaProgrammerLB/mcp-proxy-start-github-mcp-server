## 使用[mcp-proxy](https://github.com/sparfenyuk/mcp-proxy)以Streamable Http的形式启动[Github MCP Server](https://github.com/github/github-mcp-server)的步骤
服务器上要先安装好docker
- 在centos服务器上安装uv命令
```
python3 -m ensurepip && pip3 install --no-cache-dir uv
```
- 在centos上安装git
```
yum install git
```
- 使用uv命令安装mcp-proxy
```
uv tool install git+https://github.com/sparfenyuk/mcp-proxy
```
(更新命令为`uv tool upgrade --reinstall`，删除命令为`uv tool uninstall mcp-proxy`)
- 执行mcp-proxy命令启动github mcp server
```
mcp-proxy sh runGithubMCPStdioServer.sh --port=8085 --host=0.0.0.0 -e MYGITHUB_PERSONAL_ACCESS_TOKEN ${替换为GITHUB的TOKEN:MYGITHUB_PERSONAL_ACCESS_TOKEN} &
```
