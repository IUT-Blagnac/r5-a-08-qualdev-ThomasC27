Feature: Génération de rapports PDF à partir de fichiers AsciiDoc
  En tant qu'utilisateur, je veux m'assurer que le fichier AsciiDoc respecte certaines conditions avant la génération du PDF.

  Scenario: Vérification de l'existence du fichier AsciiDoc
    Given un fichier AsciiDoc nommé "Documentation_utilisateur.adoc"
    Then le fichier doit exister

  Scenario: Vérification de la présence d'une section spécifique
    Given un fichier AsciiDoc nommé "Documentation_utilisateur.adoc"
    Then la section "Présentation du projet" doit exister dans le fichier

  Scenario Outline: Vérification de la présence des noms dans le fichier
    Given un fichier AsciiDoc nommé "Documentation_utilisateur.adoc"
    Then le fichier doit contenir le texte "<nom>"

    Examples:
      | nom                  |
      | Maël Carrié          |
      | Yann Rouquié         |
      | Julien Bizet         |
      | Thomas Cossic        |
      | Mathéo Katbie Mathéo |
      | Antoine Leboucher    |
      | Tom Meyer            |
