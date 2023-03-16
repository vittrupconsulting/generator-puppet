vagrant up --provider virtualbox

vagrant package --output puppet_slave.box slave
vagrant box remove puppet/slave
vagrant box add puppet/slave puppet_slave.box
del puppet_slave.box

vagrant package --output puppet_master.box master
vagrant box remove puppet/master
vagrant box add puppet/master puppet_master.box
del puppet_master.box

vagrant destroy --force