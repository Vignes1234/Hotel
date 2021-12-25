package org.runner;

import org.junit.runner.RunWith;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;


	@RunWith(Cucumber.class)
	@CucumberOptions(features= {"src/test/resources"})
	public class TestRunnerClass {
     
		private void suma() {
			System.out.println("DEV");
		}



}