#!/usr/bin/env bash
set -eux

# Create a useful user if one doesn't exist
if ! id -u vscode >/dev/null 2>&1; then
  useradd -m -s /bin/bash vscode
fi

# Ensure SSH runs
sudo mkdir -p /var/run/sshd
sudo chmod 755 /var/run/sshd

# Allow sudo without password for vscode in the devcontainer
echo "vscode ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/vscode >/dev/null
sudo chmod 0440 /etc/sudoers.d/vscode

# Start SSH
sudo service ssh start || sudo /usr/sbin/sshd -D

echo
echo "SSH is ready."
echo "Use the forwarded port 2222 in your Codespace."
echo "Example:"
echo "  ssh -p 2222 vscode@localhost"
echo
