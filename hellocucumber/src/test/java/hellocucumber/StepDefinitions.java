package hellocucumber;

import io.cucumber.java.en.*;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.Assertions.*;

public class StepDefinitions {

    @Given("an example scenario")
    public void anExampleScenario() {
    }

    @When("all step definitions are implemented")
    public void allStepDefinitionsAreImplemented() {
    }

    @Then("the scenario passes")
    public void theScenarioPasses() {
    }

    private static String jouractuel;
    private static String isFriday;

    static String isItFriday(String today) {
        return "vendredi".equals(today) ? "TGIF" : "Nope";
    }

    @Given("aujourd'hui est {string}")
    public void aujourd_hui_est_mardi(String jour) {
        jouractuel = jour;
    }

    @When("je demande si c'est vendredi")
    public void je_demande_si_c_est_vendredi() {
        isFriday = isItFriday(jouractuel);
    }

    @Then("je devrais obtenir {string}")
    public void je_devrais_obtenir(String jour) {
        assertEquals(jour, isFriday);
    }
}
