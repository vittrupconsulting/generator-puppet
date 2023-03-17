#vagrant up --provider virtualbox

vagrant package --output puppet_enterprise.box master
vagrant box remove puppet/enterprise
vagrant box add puppet/enterprise puppet_enterprise.box
del puppet_enterprise.box

#vagrant destroy --force