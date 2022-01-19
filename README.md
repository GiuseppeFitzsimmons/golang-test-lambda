# Golang Test Lambda
Ce lambda est écrit en Go, et existe en tant qu'exercice de découverte du langage dans le contexte d'un déploiement sur AWS.

## Déploiement
Afin de déployer, il suffit de lancer le script shell deploy.sh, disponible à la racine du projet. Ce script s'occupe des étapes build, package et deploy.

## Test
Afin de tester l'API, la solution la plus facile est d'utiliser le curl suivant:
```
curl --location --request POST 'https://3osecm5sfd.execute-api.us-east-1.amazonaws.com/Prod/' \
--header 'Content-Type: application/json' \
--data-raw '{
    "name": "A"
}'
```

## Remerciements

J'aimerais remercier ma maman, sans qui je n'aurais les doigts nécessaires pour réaliser l'exercice.