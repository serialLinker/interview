Context: 

Ce projet est une api qui permet de gérer des utilisateurs.
L'api est actuellement consommée en production sur le endpoint /users. 
Ce endpoint permet de récupérer la liste des users.

Notre PM nous a créé plusieurs tickets.

Un développeur parti en vacances a commencé à coder les features mais n'a pas pu finir avant son départ.
Le design des endpoints n'a pas été fixé, il est donc possible de modifier les signatures (url + in/out)

- on voudrait recupérer les informations d'un user a partir de son id
- on voudrait ajouter la notion de permissions, les données sont déjà présente en base de données, mais ne sont pas remontées dans le endpoint
- on a un problème de lenteur sur le endpoint existant 
  - http://localhost:8080/users
- on voudrait pouvoir ajouter des utilisateurs via un endpoint
- on voudrait ajouter un endpoint qui permet d'appeler une api externe et qui remonte une liste de product a partir de leurs ids
  - http://localhost:8080/products?id=1&id=2&id=3&id=4&id=5&id=6&id=7&id=8&id=9&id=10