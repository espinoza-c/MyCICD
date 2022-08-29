namespace Calculators;

public class Calculator
{
    public static float Add(float a, float b)
    {
        return a + b;
    }

    public static float Sub(float a, float b)
    {
        return a - b;
    }

    public float Mul(float a, float b)
    {
        return a * b;
    }

    public float Div(float a, float b)
    {
        if (b == 0) throw new DivideByZeroException();
        return a / b;
    }
}
