using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Calculators;
using Xunit;

namespace xUnitTests
{
    public class CalculatorShould
    {
        [Fact]
        public void Add_TwoFloatNumbers_ReturnsCorrectSum()
        {
            //Arrange
            Calculator addValidator = new Calculator();
            float numeroUno = 5.01f;
            float numeroDos = 6.03f;
            float expected = numeroDos + numeroUno;

            //Add
            float isEqual = Calculator.Add(numeroUno, numeroDos);

            //Assert
            Assert.Equal(expected, isEqual);
        }
        [Fact]
        public void Sub_TwoFloatNumbers_ReturnsCorrectSubtraction()
        {
            //Arrange
            Calculator addValidator = new Calculator();
            float numeroUno = 5.01f;
            float numeroDos = 6.03f;
            float expected = numeroUno -  numeroDos;

            //Add
            float isEqual = addValidator.Sub(numeroUno, numeroDos);

            //Assert
            Assert.Equal(expected, isEqual);
        }

        [Theory]
        [InlineData(10.1,10.2)]
        [InlineData(5.2, 3.5)]
        [InlineData(8000.1,2)]
        [InlineData(850, 10.2)]
        [InlineData(3.1416, 5.555)]

        public void Mul_TwoFloatNumbers_ReturnsCorrectMultiplication(float a, float b)
        {
            //Arrange
            Calculator mulValidator = new Calculator();

            //Add
            float result = mulValidator.Mul(a, b);
            float expected = a * b;

            //Assert
            Assert.Equal(expected, result);
        }

        [Theory]
        [InlineData(10.1, 10.2)]
        [InlineData(5.2, 3.5)]
        [InlineData(8000.1, 2)]
        [InlineData(850, 10.2)]
        [InlineData(3.1416, 5.555)]

        public void Div_TwoFloatNumbers_ReturnsCorrectDivision(float a, float b)
        {
            //Arrange
            Calculator divValidator = new Calculator();

            //Add
            float result = divValidator.Div(a, b);
            float expected = a / b;

            //Assert
            Assert.Equal(expected, result);
        }

    }
}
