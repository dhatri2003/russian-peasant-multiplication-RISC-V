# Russian Peasant Multiplication

**Overview:**
This project implements the Russian Peasant Multiplication algorithm, also known as Ancient Egyptian Multiplication. It's a multiplication algorithm that dates back to ancient times and allows the multiplication of numbers using the process of halving and doubling without the use of a multiplication operator.

**Formula:**
Let *n* and *m* be two numbers to be multiplied. Then,

- If *n* is even:  
  *nm = (n/2) . (2m)*

- If *n* is odd:  
  *nm = ((n-1)/2) . (2m) + m*

- If *n=1*:  
  *1.m = m*

**Algorithm:**
```python
ALGORITHM RussianPeasantMul(n, m)
    int res = 0;
    while (n != 1)
        if (n % 2 != 0)
            res = res + m;
        n = n / 2;
        m = 2 * m;
    return res;
