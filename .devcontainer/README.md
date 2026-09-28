# Ubuntu SSH Codespace

This template installs `openssh-server` in a GitHub Codespace and exposes it on port 2222.

## How to use

1. Open this repository in a Codespace.
2. Wait for the container to finish building.
3. The SSH service starts automatically.
4. Forwarded port `2222` will be available in the Codespace UI.

## Connect from your machine

From your local machine:

```bash
ssh -p 2222 vscode@localhost
