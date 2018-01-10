# Vagrant Starter

Vagrant Starter is a pre-configured and minimal Vagrant project designed help you set up Vagrant projects quickly and easily. The project uses the Debian Jessie base box, and comes with provisioning and an NFS synced folder already configured.

If you are using a Linux-flavoured operating system, and do not have `nfsd` installed on your machine (which is required for NFS synced folders), you can do so with this command:

```bash
sudo apt-get install nfs-kernel-server nfs-common portmap
```

## Getting Started

The project provides `bootstrap_base.sh`, which is the default provisioning script. Create a copy of this script and rename it to something else (e.g. `bootstrap_react.sh`), and add whatever provisioning you require to set up your development environment. Afterwards, edit the provided variables in `Vagrantfile` according to your needs (making sure to specify the correct `provisioningScriptPath`).

When using version control with this project, you have two options: keep your Vagrant configuration transparent, or share it with others. Run the corresponding command to set up version control how you want it:

```bash
# Transparent Vagrant configuration
rm -rf .git && git init

# Shared Vagrant configuration
rm -rf .git && cd project && git init
```

Once all of the above is done, `vagrant up`! You should now be able to access the Vagrant box through its private IP address (default is `192.168.10.10`).

You can now start bootstrapping your application inside of the `/project` folder.

**Avoid using port-fowarding to access the Vagrant box through `localhost`!** Doing so will cause your CPU to gradually increase to 100% until you shut down the box (see https://www.virtualbox.org/ticket/14137).

## License
[MIT](http://vjpr.mit-license.org)
