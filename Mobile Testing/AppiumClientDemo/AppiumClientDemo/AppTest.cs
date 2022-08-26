using NUnit.Framework;
using OpenQA.Selenium;
using OpenQA.Selenium.Appium;
using OpenQA.Selenium.Appium.Android;
using OpenQA.Selenium.Appium.Enums;
using System;
using System.Threading;

namespace AppiumClientDemo
{
    
    public class Tests
    {
        AppiumDriver<IWebElement> driver;

        
        [SetUp]
        public void Setup()
        {
            var appPath = @"C:\Users\a875026\source\repos\APKs\note.apk";

            var driverOption = new AppiumOptions();
            driverOption.AddAdditionalCapability(MobileCapabilityType.PlatformName, "Android");
            driverOption.AddAdditionalCapability(MobileCapabilityType.DeviceName, "Myphone");
            driverOption.AddAdditionalCapability(MobileCapabilityType.App, appPath);
           
            driver = new AndroidDriver<IWebElement>(new Uri("http://127.0.0.1:4723/wd/hub"), driverOption);
            Thread.Sleep(3000);

        }
        [Test]
        public void Test1()
        {
            //Implicit wait de 1 seg
            driver.Manage().Timeouts().ImplicitWait = TimeSpan.FromSeconds(1);
            string expectedText = "Mobile testing CAMPUS";

            //Click en Skip para continuar
            var skip = driver.FindElementById("com.socialnmobile.dictapps.notepad.color.note:id/btn_start_skip");
            skip.Click();

            //Click en Add para agregar nota
            var add = driver.FindElementByXPath("//android.widget.ImageButton[@content-desc='Add']");
            add.Click();

            //Click en Texto para agregar nota tipo texto
            var text = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[1]");
            text.Click();

            //Mandamos el texto a escribir en la nota
            var papel = driver.FindElementById("com.socialnmobile.dictapps.notepad.color.note:id/edit_note");
            papel.SendKeys(expectedText);

            //Damos back tres veces para ver la nota guardada
            for (int i = 0; i <= 2; i++)
            {
                driver.Navigate().Back();
            }

            //Confirmarmos que el texto de la nota es el texto que mandamos
            var notaGuardada = driver.FindElementByXPath("/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/c.s.a.b/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.ListView/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.TextView[1]");
            var actualText = notaGuardada.GetAttribute("text");
            
            Assert.IsTrue(actualText == expectedText);
        }
    }
}