using NUnit.Framework;
using OpenQA.Selenium;
using SpecFlowProject_Selenium.Drivers;
using TechTalk.SpecFlow;

namespace SpecFlowProject_Selenium.Hooks
{
    [Binding]
    public sealed class TestInitialize
    {
        private readonly ScenarioContext _scenarioContext;
        public TestInitialize(ScenarioContext scenarioContext)
        {
            _scenarioContext = scenarioContext;
        }

        [BeforeScenario]
        public void StartWebDriver()
        {
            WebDriverLibrary webDriverLibrary = new WebDriverLibrary(_scenarioContext);
            _scenarioContext.Set(webDriverLibrary, "WebDriverLibrary");
        }


        [AfterScenario]
        public void KillDriver()
        {
            _scenarioContext.Get<IWebDriver>("WebDriver").Quit();
        }
    }
}