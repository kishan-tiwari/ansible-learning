# Ansible 
- It's configuration management tool which is basically use to manages the servers.
- Its also mantain the state of server.

# Ansible components
- Control Node
- Managed Node
- Inventory 
- Modules
- task
- playbooks

# Control Node
- Server  in which ansible installed.
- Its pushes configuration to managed nodes.

# Run Ansible commands
- ansible -m apt -a "name=net-tools state=present"

# Generate Key Pairt
- ssh-keygen -t ed25519 -C "ansible master"

# Copy to slaves
- ssh-copy-id -i /home/vagrant/.ssh/id_ed25519.pub app
- ssh-copy-id -i /home/vagrant/.ssh/id_ed25519.pub db


# Cache passphrase  for a  session
- eval $(ssh-agent)
- ssh-add 
