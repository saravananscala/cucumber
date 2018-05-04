
Feature: Verify the Functionality of DemoQA Registration page

  Background: user navigate to DemoQA Registration page
 
  Given The user is in DEMOQA Registration page
  
  
  Scenario: Verify the FirstName and LastName
  
    
    When  The user enters FirstName and LastName
    Then  The User verify the entered FirstName and LastName in textbox
    
  
  Scenario: Verify the Checkboxes
  
    When  The user click Multiple checkboxes
    Then  The User verifies the clicked checkboxes
   
 
  Scenario: Verify the  RadioButton
  
    When  The user click Single RadioButton 
    Then  The User verify the clicked RadioButton
 



https://github.com/saravananscala/cucumber.git
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import junit.framework.Assert;

public class Democlass {
	
	WebDriver driver;
	WebElement dance , reading , cricket, single, married, divorced;
	
	@Given("^The user is in DEMOQA Registration page$")
	public void The_user_is_in_DEMOQA_Registration_page() throws Throwable {
		System.setProperty("webdriver.chrome.driver", "D:\\sarannn\\sar\\driver\\chromedriver.exe");
	    driver=new ChromeDriver();
		driver.get("http://demoqa.com/registration/");
	    
	}

	@When("^The user enters FirstName and LastName$")
	public void The_user_enters_FirstName_and_LastName() throws Throwable {
		
		 driver.findElement(By.id("name_3_firstname")).sendKeys("saran");
		 driver.findElement(By.id("name_3_lastname")).sendKeys("1234");
	
	}

	@Then("^The User verify the entered FirstName and LastName in textbox$")
	public void The_User_verify_the_entered_FirstName_and_LastName_in_textbox() throws Throwable {
		
		Assert.assertEquals("saran", driver.findElement(By.id("name_3_firstname")).getAttribute("value"));
		Assert.assertEquals("1234", driver.findElement(By.id("name_3_lastname")).getAttribute("value"));
	   
	}

	@When("^The user click Multiple checkboxes$")
	public void The_user_click_Multiple_checkboxes() throws Throwable {
		
		dance=driver.findElement(By.xpath("//input[@value='dance']"));
		dance.click();
		reading=driver.findElement(By.xpath("//input[@value='reading']"));
		reading.click();
		cricket=driver.findElement(By.xpath("//input[@value='cricket ']"));
		cricket.click();
	   
	}

	@Then("^The User verifies the clicked checkboxes$")
	public void The_User_verifies_the_clicked_checkboxes() throws Throwable {
		
		if (dance.isSelected()||reading.isSelected()||cricket.isSelected()) {
			Assert.assertTrue(true);
			
		}
	   
	}

	@When("^The user click Single RadioButton$")
	public void The_user_click_Single_RadioButton() throws Throwable {
		single=driver.findElement(By.xpath("//input[@value='single']"));
		single.click();
	   
	}

	@Then("^The User verify the clicked RadioButton$")
	public void The_User_verify_the_clicked_RadioButton() throws Throwable {
	    
		if (single.isSelected()||married.isSelected()||divorced.isSelected()) {
			
			Assert.assertTrue(true);
		}
	}



}
