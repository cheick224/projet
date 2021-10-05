#Section 1
##Dans le dossier
###First Change
provision-dhcp.sh --> provision_dhcp.sh
provision-add-keys.sh --> provision_add_keys.sh
provision-authorize-keys.sh --> provision_authorize_keys.sh
provision-hosts.sh --> provision_hosts.sh
provision-ansible-play.sh --> provision_ansible_playbook.sh
provision-ansible-package.sh --> provision_ansible_install.sh
provision-base-packages.sh --> provision_install.sh

=== Test 3 ===
vagrant up
=== Fin test === 
Error DHCP --> vagrant provision => Correction de l'erreur
=== Fin correction Error ===

###Second Change (Nom de dossier provision-files changement)


#Section 2
##Dans Vagrantfile:
###First Change
id --> idx
generalisation de la convig de des box
vb.memory : 2048 --> 5096
fichier '.gitignore' supprimer

=== Test 1 ===
vagrant up
=== Fin test === 
Error DHCP --> vagrant provision => Correction de l'erreur
=== Fin correction Error ===

###Second Change
Dossier provision-scripts --> provisionning

=== Test 2 ===
vagrant up
=== Fin test === 
Error DHCP --> vagrant provision => Correction de l'erreur
=== Fin correction Error ===

###Third Change (En accord avec le 'First Change' de la Section 1)
provision-dhcp.sh --> provision_dhcp.sh
provision-add-keys.sh --> provision_add_keys.sh
provision-authorize-keys.sh --> provision_authorize_keys.sh
provision-hosts.sh --> provision_hosts.sh
provision-ansible-play.sh --> provision_ansible_playbook.sh
provision-ansible-package.sh --> provision_ansible_install.sh
provision-base-packages.sh --> provision_install.sh

###Fourth Change
Changement des adresses IP des nodes et du control :
- nodes : 100 + idx --> 10 * idx + 10
- control : 192.168.50.50 --> 192.168.50.250

=== Test 4 ===
vagrant up
=== Fin test === 
Error DHCP --> vagrant provision => Correction de l'erreur
=== Fin correction Error ===

###Fifth Change (Nom de dossier provision-files changement)


#Section 3
##Dans les fichiers Provisions
###First Change
Changement des 'echo' dans les fichiers provisions

###Second Change
Adaptation des adresses IP (En accord avec le changement dans 'Fourth Change' de la Section 2)
