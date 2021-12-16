package com.qa.taskone.stepdefs;

import static org.junit.Assert.assertEquals;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriver.Navigation;

import com.qa.taskone.SeleniumHooks;

import io.cucumber.java.en.*;
/*
 * I didn't do all the scenarios because I wanted to quickly move to the next task
 */
public class TaskOneStepDefs {
	private WebDriver driver;
	
	public TaskOneStepDefs(SeleniumHooks hooks) {
		 this.driver = hooks.getDriver();
	}
	
	@When("the user requests the sign in page")
	public void go_to_sign_in() {
//		Navigation nav = driver.navigate();
//		nav.to("http://automationpractice.com/index.php");
	    driver.get("http://automationpractice.com/index.php?controller=authentication&back=my-account");
	}
	
	@Then("the user should be on the sign in page")
	public void on_sign_in() {
		 assertEquals(driver.getTitle(), "Login - My Store");
	}
}
