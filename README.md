# Vagrant Starter

Vagrant Starter is a pre-configured, minimal Vagrant project designed help you set up Vagrant projects quickly and easily. The project uses the Debian Jessie base box, and comes with provisioning and an NFS synced folder already configured.

If you are using a Linux-flavoured operating system, and do not have `nfsd` installed on your machine, you can do so with this command:

```bash
sudo apt-get install nfs-kernel-server nfs-common portmap
```

## Getting Started

The project provides `bootstrap_base.sh`, which is the default provisioning script. Create a copy of this script and rename it to something else (e.g. `bootstrap_react.sh`), and add whatever provisioning you require to set up your development environment.

Afterwards, edit the provided variables in `Vagrantfile` according to your needs (making sure to specify the correct `provisioningScriptPath`), and then `vagrant up`.

## License
[MIT](http://vjpr.mit-license.org)
