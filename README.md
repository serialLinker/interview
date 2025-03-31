# narsha interview

### Context

On veut créer une application qui permet de savoir dans quels point d'intérêts des gens ont visité

Les informations que l'on souhaite stocker sont : 

Person:
- firstname
- lastname
- email (unique)

Monument:
- name
- country

Country: 
- name
- continent

Continent:
- name


Les data relatives aux monuments / pays / continent sont disponibles dans src/main/resources/data.sql

### Excercice

Part 1: 
- Créer le mapping jpa relatif au table précédemment décrites
- Créer le mapping jpa permettant de sauvegarde l'information de visite (d'une personne à un monument en y ajoutant la date)

Part 2: 
- Créer un endpoint qui permet de créer une personne 
- Créer un endpoint qui permet de lister les monuments

Part 3: 
- Créer un endpoint qui permet de sauvegarder une visite
- Créer un endpoint qui permet de lister les visites d'un utilisateur
  - identifiant de la personne
  - nom de la personne
  - nom du monument
  - date de la visite
