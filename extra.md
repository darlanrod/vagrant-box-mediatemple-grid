# Extra information

## Localhost access
If you prefer to access the virtual machine in your browser using only the `http://localhost` (without the port) address, you can change the port used by Vagrant to 80 including the line below in your `Vagrant` file.
```
config.vm.network :forwarded_port, guest: 80, host: 80
```

## Apache render folder
You can change the Apache default folder for your Vagrant home folder or a subfolder in it. First, create a file `bootstrap.sh` and add the code below.
```
if ! [ -L /var/www ]; then
  sudo rm -rf /var/www/html
  sudo ln -fs /vagrant /var/www/html
fi
```
You can add a subfolder to `/vagrant` if you want. Save the file and add the code below into your `Vagrant` file.
```
config.vm.provision :shell, path: "bootstrap.sh"
```
So run the `vagrant provision` command.
> This can be useful for working on your files in your operating system.

## Database external access
The easiest way to access the database from a external software is through the SSH connection:
*   Host: 127.0.0.1 (or localhost)
*   Port: 2222
*   MySQL username and password: `root`
*   SSH Tunnel: enable *(if possible)*
*   SSH username and password: `vagrant`
