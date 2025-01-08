package cucumber_demo;

import io.cucumber.java.en.*;
import java.util.List;
import org.junit.jupiter.api.Assertions; 

public class StepDefinitions {
    private Order order;
    

    @Given("{string} who wants to buy a drink")
    public void romeo_who_wants_to_buy_a_drink(String nom) {
        order = new Order();
        order.declareOwner(nom);
    }

    @When("an order is declared for {string}")
    public void an_order_is_declared_for_juliette(String targetName) {
        order.declareTarget(targetName);
    }

    @Then("there are {int} cocktails in the order")
    public void there_are_cocktails_in_the_order(int nombreDeCocktails) {
        List<String> cocktails = order.getCocktails();
        Assertions.assertEquals(nombreDeCocktails, cocktails.size());  
    }
}
