                 Projet Scrappeur de ouf !!!!


*********************** Dark Trader ****************************

Lehman Brothers, impressionnés par ton algorithme d'optimisation d'achat / vente, veut encore faire appel à toi. Leur Chief Digital Officer, très hype, a entendu parler au JT de TF1 d'un "truc révolutionnaire qui s'appelle le bloque-chienne". Il veut en acheter plein. Pour le conseiller, tu vas devoir récupérer le cours de toutes les cryptomonnaies du marché.

En prenant pour source le site CoinMarketCap, fait un programme qui récupère le cours de toutes les cryptomonnaies et les enregistre bien proprement dans un array de hashs.
Ton array devra avoir le format suivant :

a = [
  { "BTC" => 5245.12 },
  { "ETH" => 217.34 }, 
  etc
]

Pour les tests, inspire-toi de la ressource plus haut. Il n'y a pas besoin de faire 36 000 tests, il faut juste arriver à tester 1) le fonctionnement de base de ton programme (pas d'erreur ni de retour vide) et 2) que ton programme sort bien un array cohérent (vérifier la présence de 2-3 cryptomonnaies, vérifier que l’array est de taille cohérente, etc.).




*********************** Maries christmas ************************

Le CEO de Get-email Corp a besoin de tes services. Il voudrait toutes les adresses e-mail des mairies du Val d'Oise. Aucun souci pour toi. Va sur cet annuaire des mairies et récupère les adresses e-mails des mairies du Val d'Oise. Comme pour l'exercice précédent, tu devras enregistrer les données dans un array de hash suivant ce format :

a = [
  { "ville_1" => "email_1" },
  { "ville_2" => "email_2" }, 
  etc
]

Pour les tests, ce sera la même chose que pour l'exercice précédent mais appliqué aux deux méthodes : des tests de fonctionnement de base et des tests de cohérence du résultat.




************************ Cher député *************************

Tu dois récupérer la liste complète des députés de France ainsi que leurs adresses e-mail. Cherche par toi-même le site le plus aisé à scrapper et stocke les informations extraites dans une array de hashs selon ce format (un peu différent des exercices précédents) :

a = [
  { 
    "first_name" => "Jean",
    "last_name" => "Durant",
    "email" => "jean.durant@assemblée.fr"
  },
  { 
    "first_name" => "Martin",
    "last_name" => "Dupont",
    "email" => "martin.dupont@assemblée.fr"
  },
  etc
]

Pour les tests, nous t'invitons à te poser et t'inspirer des tests précédents. Deux tests suffiront.
