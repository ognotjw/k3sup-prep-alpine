# k3sup-prep-alpine

Something I made for preparing to bootstrap k3s in Alpine Linux with K3sup. This might work with k0sctl.

# Prerequisites

1. Have a root user enabled.
2. Have community repositories enabled.
3. Have "git" installed.
4. Have Alpine Linux.

# Instructions

1. Run "git clone https://github.com/ognotjw/k3sup-prep-alpine".
2. "cd" to the repository directory on your local drive (usually in the current directory, it should be called "k3sup-prep-alpine").
3. Make the scripts executable (with "chmod +x filename").
4. Run 1.sh as root.
5. Run 2.sh as root.
6. Copy the SSH keys to the machine to the "root" account.
7. Run 3.sh
8. Done

# Notes

1. Configuration files of some programs will be changed (check the code).
2. Some of these scripts will automatically reboot the machine.
3. Only run these scripts once because they are very specific.
