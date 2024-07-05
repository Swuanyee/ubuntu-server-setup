# Ubuntu Server Setup Script

This repository contains a script to perform an initial server setup on a new Ubuntu server. The script adds a new user with sudo privileges, copies the SSH key to the new user, and configures the firewall.

## Prerequisites

- Ubuntu server
- SSH access to the server
- Existing SSH key setup for your current user

## Usage

1. Clone this repository or download the `setup.sh` script.

   ```bash
   git clone https://github.com/swuanyee/ubuntu-server-setup.git
   cd ubuntu-server-setup
   ```

2. Make the `setup.sh` script executable.

   ```bash
   chmod +x setup.sh
   ```

3. Run the script with the desired username as an argument.

   ```bash
   ./setup.sh username
   ```

   Replace `username` with the desired username for the new user.

## Script Details

The script performs the following actions:

1. Updates and upgrades the system packages.
2. Adds a new user with sudo privileges.
3. Copies the SSH key from the current user to the new user.
4. Configures the firewall to allow OpenSSH connections and enables the firewall.

## Example

To run the script for a new user `swuanyee`, use the following command:

```bash
./setup.sh swuanyee
```

## Notes

- Ensure that you have SSH access to the server and that your SSH key is set up correctly for the current user.
- The script assumes that the SSH key is located in `~/.ssh` and will copy it to the new user's home directory.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
```

This `README.md` provides comprehensive instructions on how to use your script, including prerequisites, usage, script details, an example, and notes. Adjust the content as necessary.
