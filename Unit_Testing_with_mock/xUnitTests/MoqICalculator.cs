using Autofac.Extras.Moq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;
using Calculators;
using Moq;

namespace xUnitTests
{
    public class MoqICalculator
    {
        [Fact]
        public void Factorial_SingleNumber_ReturnsSingleNumberFactorial()
        {
            //arrange
            int numeroFactorial = 5;
            int expected = 120;

            Mock<ICalculator> ICalculator = new Mock<ICalculator>();

            ICalculator.Setup(x => x.Mul(It.IsAny<int>(), It.IsAny<int>()))
                .Returns((int first, int second) => first * second);


            Series factorial = new Series(ICalculator.Object);

            //act
            int pruebaFactorial = factorial.Factorial(numeroFactorial);

            //assert
            Assert.Equal(expected, pruebaFactorial);

        }
        [Fact]
        public void Fibonacci_SingleNumber_ReturnsSingleNumberFibonacci()
        {
            //arrange
            int numeroFibonacci = 10;
            int expected = 55;

            Mock<ICalculator> ICalculator = new Mock<ICalculator>();

            ICalculator.Setup(x => x.Add(It.IsAny<int>(), It.IsAny<int>()))
                .Returns((int first, int second) => first + second);


            Series factorial = new Series(ICalculator.Object);

            //act
            int actual = factorial.Fibonacci(numeroFibonacci);


            //assert
            Assert.Equal(expected, actual);

        }
    }

   
}
