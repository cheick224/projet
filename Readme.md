 Initialiser avec `vagrant init`
 Mise en place de l'infrastructure
 Création des clefs rsa
 Création des fichiers provision
    * Renseigner les installations et paramètres réseaux dans les fichiers provision
    * Configurer les authorisations des clefs et les ajouts dans les fichiers provision
    * Renseigner le provision pour l'accès au playbook ansible
 Installation des services via les playbook
 --- Mise en place ---
Create and start all servers
`vagrant up`

Afin de bien faire les provisions des fichiers
`vagrant provision`

Vérification du réseau interne entre les serveurs
`vagrant ssh control`
`vagrant ping s0.infra`
`vagrant ping s1.infra`
`vagrant ping s2.infra`
`vagrant ping s3.infra`
`vagrant ping s4.infra`
