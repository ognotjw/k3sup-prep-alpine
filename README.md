# k3sup-prep-alpine
Something I made for preparing to bootstrap k3s in Alpine Linux with K3sup. This might work with k0sctl.

# Prerequisites
1. Have a root user.
2. Have an "alpine" user.
3. Have community repositories enabled.
4. Have "git" installed.

# Instructions
1. Run "git clone https://github.com/ognotjw/k3sup-prep-alpine /home/sysprep".
2. Make the scripts executable (with "chmod +x filename").
3. Run 1.sh as root.
4. Run 2.sh as root.
5. Test sudo privileges as the "alpine" user (e.g. running a command that requires sudo privileges).
6. Run 3.sh as the "alpine" user.
7. Copy the SSH keys to the machine to the "alpine" user.
8. Run 4.sh as the "alpine" user.
9. (Optional) To disable passwordless sudo, run 5.sh as the "alpine" user. You probably shouldn't do this before installing Kubernetes.
10. Done

# Notes
1. WARNING: THIS SCRIPT WILL DISABLE THE ROOT ACCOUNT
2. Configuration files of some programs will be changed (check the code).
3. Some of these scripts will automatically reboot the machine.
4. Only run these scripts once because they are very specific.
