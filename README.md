# DMSpaceX

## Contexte

| Libellé           | Description |
| ----------------- | ----------- |
| Chef de Projet    | Kien NGUYEN |
| Client            | Dailymotion |
| Date de démarrage | 26/02/2018  |
| Plateformes       | iOS         |
| Devices           | iPhone/iPad |

## Description

Projet cas pratique pour l'entretien chez Dailymotion

---

## Bonnes pratiques en vrac :

* Préférer faire de l'**Injection de Dépendances** (en particulier pour la classe `WebServices`), c'est à dire passer l'objet `WebServices` de proche en proche aux Coordinators qui en ont besoin. Bannir les Singletons.
* Utiliser `let` dans la mesure du possible plutôt que `var`
* Réfléchir si un type ne doit pas plutôt être une `struct` qu'une `class`
* Préférer utiliser des types `final` (faire des `final class` plutôt que `class`) dans la mesure du possible
* Grouper les constantes liées à un même thème dans un `enum` (même sans `case`). Par exemple:

```swift
enum JSONKeys {
  static let identifier = "id"
  static let title = "title"
  static let roodID = "room_id"
  …
}
```

* N'oubliez pas d'utiliser un **Analyze** (Cmd-Shift-B) de temps en temps pour vérifier les reference cycles mais aussi pour vous rappeler les TODOs/FIXMEs à traiter.

## Composants et Patterns utilisés

* RxSwift
  * [Reactivex.io](http://reactivex.io)
  * [Tutoriels Rx généralistes](http://reactivex.io/tutorials.html)
  * [Repo RxSwift avec docs, tutos et Playground](https://github.com/ReactiveX/RxSwift)
  * [Livre sur RxSwift de chez Ray Wenderlich (PDF + Exemples Xcode)](https://redmine.niji.fr/projects/niji-wiki/wiki/RxSwift_RW_Book)
  * [Article: Implémenter des WebServices avec Rx](https://medium.com/@gonzalezreal/consuming-web-services-with-swift-and-rx-71b87b0f9a4e)
  * [RxMarbles](http://rxmarbles.com) documentation visuelle et interactive de plusieurs opérateurs Rx pour mieux comprendre leur fonctionnement
  * [RxVisualDebugger](https://github.com/RxSwiftCommunity/RxVisualDebugger)
* Realm
  * [Documentation officielle](https://realm.io/docs/swift/latest/)
  * [DejTech de présentation](https://intranet.niji.fr/index.php?option=com_content&view=article&id=777:dejtech-realm&catid=157:dej-tech)
  * Parsing des objets avec `Decodable` ou `JSONCodable`
* Pattern Coordinator
  * [Talk en video](https://vimeo.com/144116310)
  * [Article de blog](http://khanlou.com/2015/10/coordinators-redux/)
* Reusable
  * [Doc de la lib](https://github.com/AliSoftware/Reusable)

## Outils Tierces utilisés

### Bundler

Ce projet utilise des outils ruby tels que CocoaPods et Fastlane (voire plus bas).
Pour gérer les versions de ces outils, et s'assurer que votre projet utilise toujours
la même version de chaque outil ruby (même si d'autres versions sont présentes sur votre système),
nous utilisons `bundler`

* Pour installer `bundler` si vous ne l'avez pas sur votre machine: `gem install bundler`
* Ensuite, pour installer les gems ruby de Fastlane, CocoaPods et tout autre outil ruby nécessaire
  utilisé par le projet, exécutez la commande `bundle install`. Ceci n'est à exécuter qu'une seule fois
  (ou seulement si vous changez le contenu de votre `Gemfile` plus tard)
* Si vous souhaitez un jour mettre à jour les outils ruby utilisés par ce projet (CocoaPods, Fastlane…)
  utilisez la command `bundle update`

A partir de ce moment, à chaque fois que vous souhaitez utiliser un des outils ruby utilisé par ce projet
(CocoaPods ou Fastlane), faites précéder la commande de `bundle exec [lacommande]`.

### CocoaPods

CocoaPods est utilisé pour gérer les dépendances sur ce projet.

Pour installer les nouveaux pods que vous pourriez ajouter à votre `Podfile`, exécutez:

```sh
bundle exec pod install
```

Le dossier Pods/ n'est maintenant plus commité sur le repo git (pour des raisons de taille limite de repositories).

Ce qui veut dire que si vos collègues modifient le `Podfile` (et exécutent `bundle exec pod install` de leur côté,
ce qui va modifier le fichier `Podfile.lock` en conséquence, qu'ils devront absolument commiter sur le git),
alors il vous faudra exécuter `bundle exec pod install` sur votre machine aussi lorsque vous récupérerez leurs modifications.

### Fastlane

Fastlane est utilisé pour automatiser les builds, tests et livraisons de ce projet (notamment via Jenkins)

Pour lister les lanes disponibles, exécutez `bundle exec fastlane lanes`
Pour exécuter une des lanes, utilisez `bundle exec fastlane [nom-de-la-lane]

```sh
bundle exec fastlane test
bundle exec fastlane ota
```

### Poesie & Gyro

* [poesie](http://github.com/NijiDigital/poesie) est un outil Niji permettant d'extraire automatiquement les chaînes localisées rentrées dans un projet [POEditor](https://poeditor.com/projects/), pour générer les fichiers `Localizable.strings` et `Localizable.stringsdict` associés automatiquement.
* [Gyro](http://github.com/NijiDigital/gyro) est un outil Niji permettant de générer les classes modèle pour Realm à partir d'un `xcdatamodel`, permettant ainsi de profiter de la commodité de l'éditeur graphique de modèle intégré à Xcode pour _designer_ le modèle Realm, et ce même si l'on utilise Realm au lieu de CoreData.

Pour configurer ces outils pour votre projet:

* Commencez par installer [Poesie](http://github.com/NijiDigital/poesie) et [Gyro](http://github.com/NijiDigital/gyro) sur votre machine si ce n'est pas déjà fait, typiquement via `gem install poesie gyro`
* Clonez sur votre machine le repository GIT commun iOS/Android à votre projet, contenant notamment le xcdatamodel qui sera partagé par les 2 projets.
* Adaptez les scripts `scripts/poesie.sh` et `scripts/gyro.sh` pour ajuster les variables `DATAMODEL_PATH`, `API_TOKEN`, `PROJECT_ID`

Pour utiliser ces outils:

* A chaque fois que de nouvelles chaînes ont été rentrées sur l'interface Web de POEditor, utilisez le script `scripts/poesie.sh` pour regénérer les fichiers `Localizable.strings` et `Localizable.stringsdict`.
* De même, à chaque fois que le xcdatamodel commun à iOS et Android est modifié, regénérez les classes Realm à l'aide du script `scripts/gyro.sh`.

### SwiftGen

> SwiftGen est installé via CocoaPods sur ce projet, de sorte que chaque projet sur lequel vous travaillez ait sa propre version.

Pour les chaînes à traduire :

* Utiliser le script `scripts/poesie` pour regénérer le `Localizable.strings` au besoin.
* Utiliser `L10n.Nom.De.La.Chaine` pour obtenir une chaîne traduite dans le code
* Si la chaîne contient des placeholders (`%@`, `%d`, …), _SwiftGen_ génèrera un enum avec des paramètres, vous pourrez donc utiliser:
  `L10n.NomDeLaCle(param1, param2)` par exemple `L10n.Contract.NumberAndAge("AB 127492", 2)`

Pour les couleurs :

* Utiliser `colors.xml` pour lister les couleurs de l'application. Ce fichier est au même format que celui utilisé par Android, l'objectif est donc de récupérer le `colors.xml` d'Android pour l'utiliser sur iOS et ainsi utiliser les mêmes couleurs entre les 2 plateformes.
* SwiftGen va regénérer `Colors.swift` avec les nouvelles couleurs du `colors.xml`
* Utilisez `UIColor(named: .Title)` par exemple pour obtenir la couleur nommée `Title`

Pour les images :

* SwiftGen scanne votre Assets Catalog et regénère Images.swift
* Utilisez `UIImage(asset: .AppLogo)` pour obtenir l'image `"app_logo.png"`

### SwiftLint

> SwiftLint est installé via CocoaPods sur ce projet, de sorte que chaque projet sur lequel vous travaillez ait sa propre version.

Pensez à suivre toutes les recommendations de SwiftLint.

Il est important d'avoir un code cohérent et de suivre les guidelines enforcées par cet outil, donc ne laissez pas des warnings de SwiftLint traîner sur vos projets, d'autant qu'ils sont en général très rapides à corriger puisque ce n'est qu'une question de style/convention.

_Astuce: Vous pouvez également de temps à autre utiliser `swiftlint autocorrect` dans votre terminal pour corriger tous les warnings que SwiftLint peut corriger tout seul (espaces mal placés, etc)._

## Environnements de WebServices

* Chaque environnement est représenté par un dossier dans `/Environments` contenant tous les fichiers spécifiques à chaque environnement (typiquement un fichier de constantes définissant la valeur de la baseURL, etc), ainsi qu'un fichier `.env.xxx` correspondant dans le dossier `Fastlane`.
* Lorsque l'on veut changer d'environnement:
  * Dans Xcode, il suffit d'aller dans les Build Settings du projet et de changer la valeur de `APP_ENVIRONMENT` à la valeur souhaitée.
  * Lorsque l'on compile avec Fastlane (e.g. pour la CI), utiliser le paramètre `fastlane test --env xxx` pour choisir l'environnement. Cela va utiliser le fichier `Fastlane/.env.xxx` correspondant (qui se contente de déclarer la bonne valeur pour `APP_ENVIRONMENT`) et _overrider_ celle indiquée dans les Build Settings.
* Cette variable `APP_ENVIRONNEMENT` est alors utilisée lors de la phase de build "Swift App Environment" qui consiste à :
  * Copier le fichier `Environment/$APP_ENVIRONMENT/Environment.swift` dans `Environment/default`. (C'est ce fichier qui est inclus dans la compilation et non pas ceux des autres dossiers de `Environment/xx`)
  * La clé `NSAppTransportSecurity` est systématiquement supprimée du `Info.plist` du projet. S'il existe un fichier `AppTransportSecurity.plist` dans le dossier `Environment/$APP_ENVIRONMENT`, son contenu est fusionné avec celui du `Info.plist`. Ainsi, chaque environnement peut avoir ses propres exceptions ATS selon les serveurs web que l'environnement doit adresser.

Pour créer un nouvel environnement `bouchons` par exemple, créez simplement un sous-dossier `bouchons` dans `Environements/` pour y mettre les fichiers de constantes spécifique à cet envidonnement (`Environment.swift`, éventuel `AppTransportSecurity.plist`), puis créez un fichier `Fastlane/.env.bouchons` contenant `APP_ENVIRONMENT=bouchons`.
