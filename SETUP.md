# DMSpaceX

## ✅ CheckList démarrage de projet

### Actions manuelles à effectuer après l'exécution de `liftoff`

* [ ] Ajuster la liste des pods dans le `Podfile` et relancer un `pod install` au besoin
* [ ] Décocher les fichiers `prod/Environment.swift`, `dev/Environment.swift` et `dev/AppTransportSecurity.plist` du target `DMSpaceX` pour que seul le fichier `default/Environment.swift` soit inclus dans la compilation
* [ ] Utiliser "Update to recommended settings" (sélectionner le projet à gauche, puis menu "Editor" > "Validate Settings" — ou bien cliquer sur le warning) pour régler les derniers ajustements non gérés par `liftoff`
* [ ] Ajouter un "Custom Build Setting" au niveau du *Projet*, nommé `APP_BUNDLE_IDENTIFIER`, lui donner une valeur en dur (type `kien.ng.DMSpaceX`), et changer le Build Settings `PRODUCT_BUNDLE_IDENTIFIER` de chaque target pour se baser dessus (e.g. `${APP_BUNDLE_IDENTIFIER}` pour le target d'app, `${APP_BUNDLE_IDENTIFIER}.UnitTests` pour le target de test)
* [ ] Editer les schemes pour faire le ménage pour ne garder que celui de `DMSpaceX`, et décocher la case "Autocreate schemes" pour éviter qu'ils soient recréés plus tard.
* [ ] Ajouter les fichiers utiles type `README.md`, `Fastfile`, `colors.xml`… à la racine du workspace pour un accès rapide
* [ ] Remplir les infos projet dans l'en-tête du `README.md`
* [ ] Ajuster les environnements de WS dev/prod/…

### Services tiers à configurer

* [ ] Projet Jenkins CI
* [ ] Projet Jenkins OTA
  * Forcer temporairement le Bundle Identifier à `com.niji.DMSpaceX` et faites un *Run* en Release — pour forcer la build phase "Crashlytics" à s'exécuter avec le Bundle Identifier utilisé lors des livraison. Une fois l'application visible dans Fabric, remettez le BundleID à celui d'avant.
* [ ] Ajuster au besoin la configuration Fastlane, entre autres les mails pour la tâches OTA (crashlytics) dans `fastlane/.env.default`
* [ ] Configuration des `Environment` pour chaque environnement de WebServices
* [ ] Mailing-List pour l'équipe projet
* [ ] Mise en place de POEditor
  * [ ] Modifier le script `scripts/poesie.sh` pour y indiquer le [token et projectID](https://poeditor.com/account/api) POEditor de votre projet
* [ ] Mise en place d'un Modèle de Données commun `.xcdatamodel` avec `gyro`?
* [ ] Ajouter branche `develop` pour GitFlow et verouiller la branche `master` sur GitLab
