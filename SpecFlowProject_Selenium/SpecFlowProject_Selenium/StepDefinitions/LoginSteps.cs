using NUnit.Framework;
using OpenQA.Selenium;
using SpecFlowProject_Selenium.Drivers;
using TechTalk.SpecFlow;
using TechTalk.SpecFlow.Assist;
[assembly:Parallelizable(ParallelScope.Fixtures)]
[assembly: LevelOfParallelism(6)]

namespace SpecFlowProject_Selenium.StepDefinitions
{
    [Binding]
    public sealed class LoginSteps
    {
        IWebDriver driver;
        private readonly ScenarioContext _scenarioContext;
        public LoginSteps(ScenarioContext scenarioContext) => _scenarioContext = scenarioContext;

        [Given(@"I navigate to application with following browsers")]
        public void GivenINavigateToApplicationWithFollowingBrowsers(Table table)
        {
            dynamic data = table.CreateDynamicInstance();

            driver = _scenarioContext.Get<WebDriverLibrary>("WebDriverLibrary").Setup((string)data.Browsers);
            driver.Url = "http://eaapp.somee.com";
        }

        [Given(@"I click Login Link")]
        public void GivenIClickLoginLink()
        {
            driver.FindElement(By.LinkText("Login")).Click();
        }

        [Given(@"I enter username and password")]
        public void GivenIEnterUsernameAndPassword(Table table)
        {
            dynamic data = table.CreateDynamicInstance();

            driver.FindElement(By.Id("UserName")).SendKeys(data.UserName);
            driver.FindElement(By.Id("Password")).SendKeys(data.Password);
        }

        [Given(@"I click Login")]
        public void GivenIClickLogin()
        {
            driver.FindElement(By.CssSelector(".btn-default")).Click();
        }

        [Then(@"I should see user logged in to application")]
        public void ThenIShouldSeeUserLoggedInToApplication()
        {
            var employeeDetails = driver.FindElement(By.LinkText("Employee Details"));
            Assert.That(employeeDetails.Displayed, Is.True);
        }

    }
}