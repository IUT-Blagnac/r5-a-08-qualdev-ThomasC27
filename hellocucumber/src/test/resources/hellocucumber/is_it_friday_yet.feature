Feature: Est-ce vendredi ?

    Tous le monde veut savoir si c'est vendredi

    Scenario: Demande si c'est vendredi
        Given aujourd'hui est "mardi"
        When je demande si c'est vendredi
        Then je devrais obtenir "Nope"

    Scenario Outline: Friday is Friday
        Given aujourd'hui est "<day>"
        When je demande si c'est vendredi
        Then je devrais obtenir "<answer>"

        Examples:
            | day            | answer |
            | vendredi       | TGIF   |
            | dimanche       | Nope   |
            | anything else! | Nope   |

