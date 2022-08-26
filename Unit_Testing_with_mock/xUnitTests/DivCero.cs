using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Calculators;
using Xunit;

namespace xUnitTests
{
    public class DivCero
    {
        [Fact]
        public void Div_ByZero_ReturnsDivideByZeroException()
        {
            //Arrange
            Calculator divZeroValidator = new Calculator();

            //Act

            //Assert
            Assert.Throws<DivideByZeroException>(() => divZeroValidator.Div(10.1f, 0));
        }
    }
}
