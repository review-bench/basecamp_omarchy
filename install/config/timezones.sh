# Ensure timezone can be updated without a password prompt
sudo tee /etc/sudoers.d/omarchy-tzupdate >/dev/null <<EOF
%wheel ALL=(root) NOPASSWD: /usr/bin/tzupdate, /usr/bin/timedatectl set-timezone *
EOF
sudo chmod 0440 /etc/sudoers.d/omarchy-tzupdate
