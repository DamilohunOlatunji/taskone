package com.qa.taskone;

import java.io.File;

import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.After;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;

public class SeleniumHooks {

	private WebDriver webDriver;
	
	@Before
	public void setup() {
		this.webDriver = new ChromeDriver();
	}
	
	@After
	public void teardown(Scenario scenario) {
		scenario.attach(takeScreenshot(), "image/png", scenario.getName());
		
		this.webDriver.quit();
	}
	
//	@AfterStep
//	public void reset(Scenario scenario) {
//		scenario.attach(takeScreenshot(), "image/png", scenario.getName());
//	}
	
	public WebDriver getDriver() {
		return this.webDriver;
	}
	
	private byte[] takeScreenshot() {
		return ((TakesScreenshot) webDriver).getScreenshotAs(OutputType.BYTES);
	}
}

