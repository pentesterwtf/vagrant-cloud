# Vagrant DGO boxes

Creates a bunch of vagrant boxes for easy vagrant-up'ing

* Needs an environment variable set, `DGO_KEY` (https://cloud.digitalocean.com/settings/api)
* Requires `vagrant-digitalocean`
* Boxes are Fedora 31

# Current boxes

* dgo-XXX-small
  * lon - London
  * nyc - New York
  * sfo - San Francisco
  * sgp - Singapore

| Name  | Ram   | CPU   | Disk  | Transfer |
| :---: | :---: | :---: | :---: | :---:    | 
| Small | 1GB | 1 | 25GB / SSD | 1000GB | 
| Medium | 4GB | 4 | 80GB / SSD | 4000GB | 

## Digitalocean - Rename from 'Default'

```
vagrant init dgo-sgp-small
```

Stick the following into the Vagrantfile:

```
  config.vm.define "test" do |xxx|
    xxx.vm.hostname = "test"
  end
```

