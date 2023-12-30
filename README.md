# k3sup-prep-alpine
Something I made for preparing to bootstrap k3s in Alpine Linux with K3sup. This might work with k0sctl.

# Prerequisites
1. Have a root user.
2. Have an "alpine" user.
3. Have community repositories enabled.

# Instructions
1. Make the scripts executable.
2. Run 1.sh as root.
3. Run 2.sh as root.
4. Test sudo privileges as the "alpine" user (e.g. running a command that requires sudo privileges).
5. Run 3.sh as the "alpine" user.
6. Copy the SSH keys to the machine to the "alpine" user.
7. Run 4.sh as the "alpine" user.

# Notes
1. WARNING: THIS SCRIPT WILL DISABLE THE ROOT ACCOUNT
2. I have not tested this but it should work.
