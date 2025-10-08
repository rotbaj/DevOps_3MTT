#!/bin/bash

set -euo pipefail

echo "[+] Updating system packages..."
sudo yum update -y

echo "[+] Installing dependencies..."
sudo yum install -y curl wget git conntrack bash-completion

echo "[+] Installing Docker..."
sudo amazon-linux-extras enable docker
sudo yum install -y docker
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

echo "[+] Verifying Docker installation..."
docker --version

echo "[+] Installing kubectl..."
curl -LO "https://dl.k8s.io/release/$(curl -sL https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kubectl version --client
rm kubectl

echo "[+] Installing Minikube..."
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
minikube version
rm minikube-linux-amd64

echo "[+] Starting Minikube with Docker driver..."
newgrp docker <<EONG
minikube start --driver=docker
EONG

echo "[✓] Minikube installation completed."


Amazon Linux 2023

#!/bin/bash

set -euo pipefail

echo "[+] Updating system packages..."
sudo dnf update -y

echo "[+] Replacing curl-minimal with full curl package (if needed)..."
sudo dnf install -y curl --allowerasing

echo "[+] Installing dependencies..."
sudo dnf install -y wget git conntrack bash-completion

echo "[+] Installing Docker..."
sudo dnf install -y docker
sudo systemctl enable --now docker
sudo usermod -aG docker $USER

echo "[+] Verifying Docker installation..."
docker --version

echo "[+] Installing kubectl..."
KUBECTL_VERSION=$(curl -fsSL https://dl.k8s.io/release/stable.txt || echo "v1.30.1")

if [ -z "$KUBECTL_VERSION" ]; then
  echo "[!] Failed to get latest kubectl version. Using fallback version v1.30.1"
  KUBECTL_VERSION="v1.30.1"
fi

curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl
kubectl version --client

echo "[+] Installing Minikube..."
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install -o root -g root -m 0755 minikube-linux-amd64 /usr/local/bin/minikube
rm minikube-linux-amd64
minikube version

echo "[+] Starting Minikube using Docker driver..."
newgrp docker <<EONG
minikube start --driver=docker
EONG

echo "[✓] Minikube installed and running on Amazon Linux 2023."
