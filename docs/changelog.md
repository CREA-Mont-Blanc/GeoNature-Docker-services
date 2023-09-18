CHANGELOG
=========

0.2.0 (unreleased)
------------------

**⚠️ Notes de version**

Les modifications suivantes ont été apporté au fichier `docker-comopose` :

- Ajout de la variable d’environnement `USERSHUB_FILL_MD5_PASS` au service UsersHub :

```
services:
  usershub:
    environment:
      USERSHUB_FILL_MD5_PASS: ${USERSHUB_FILL_MD5_PASS:-false}
```

0.1.0 (2023-09-15)
------------------

Première version fonctionnelle de GeoNature-Docker-services, permettant de déployer, avec un seul fichier `docker-compose`, GeoNature et ses 4 modules externes principaux, TaxHub, UsersHub et traefik (comme reverse proxy et pour gérer les certificats SSL, générés automatiquement pour que les applications soient accessibles en HTTPS lors de leur installation).

**🏷️ Versions**

- GeoNature 2.12.3
- TaxHub 1.12.1
- UsersHub 2.3.4
- GeoNature-dashboard 1.4.0
- GeoNature-export1.6.0
- GeoNature-import 2.2.1
- GeoNature-monitoring 0.7.0
