using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Edge;
using OpenQA.Selenium.Firefox;
using OpenQA.Selenium.Remote;
using OpenQA.Selenium.Safari;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TechTalk.SpecFlow;

namespace SpecFlowProject_Selenium.Drivers
{
    internal class WebDriverLibrary
    {
        private readonly ScenarioContext _scenarioContext;
        public WebDriverLibrary(ScenarioContext scenarioContext)
        {
            _scenarioContext = scenarioContext;
        }

        public IWebDriver Setup(string browserName)
        {
            dynamic capability = GetBrowserOptions(browserName);
            var driver = new RemoteWebDriver(new Uri("http://localhost:4444/wd/hub"), capability.ToCapabilities());


            _scenarioContext.Set(driver, "WebDriver");

            return driver;
        }

        private dynamic GetBrowserOptions(string browserName)
        {
            if (browserName.ToLower() == "chrome")
                return new ChromeOptions();
            if (browserName.ToLower() == "firefox")
                return new FirefoxOptions();
            if (browserName.ToLower() == "microsoftedge")
                return new EdgeOptions();
            if (browserName.ToLower() == "safari")
                return new SafariOptions();

            return new ChromeOptions();
        }
    }
}
