# ConvApp
Matlab Convolution Demo App.  
When looking at the code you might realize there's a similarity to the autocorrelation / cross correlation demo app. :)  


## Preface
So you're still having trouble remembering whether subtracting from the x-value shifts a function to the right or to the left? Consider the plot below:  
![Plot showing a function and it being shifted left/right](veranschaulichung_verschiebung_plusminus.png)

**Subtracting shifts** to the **right**, **adding shifts** to the **left**.  
Remembering this is important. Only with that in mind will you understand what is happing during convolution and how moving the slider moves the red signal (and why positive values of the slider move the signal to the right).

Another one to remember is how a function gets mirrored at the y-axis:
![Plot showing a function and it mirrored at the y-axis](veranschaulichung_spiegelung_yachse.png)

The function will be **inverted if we invert the argument** ("x" -> "-x").

## Convolution Formula

The convolution of two functions is defined as ([see Wikipedia](https://en.wikipedia.org/wiki/Convolution)):  
![Convolution Formula](Screenshot_2021-04-16_Convolution-Wikipedia.png)

You might now wonder about what exactly is going on here.  
First, take a look at the integration variable. It's tau:  
![Convolution Formula, Integration Variable highlighted](Screenshot_2021-04-16_Convolution-Wikipedia_dtau.png)  

Now, do you remember how a function gets mirrored at the y-axis? By inverting its argument. That's what happens with the -tau.  
We could re-write the formula as 

![Re-Written Convolution Formula to highlight the process of mirroring at the y-axis](convolution_rewritten.png).

Another point that (hopefully) makes you curious: Why are there two variables, t and tau? That's because for the purpose of doing the calculation, we did introduce tau as a kind of *dummy* variable. We'd like to obtain a result (of the convolution) along our time axis:  
![Convolution of f and g](faltung_f_g.png)  
Another way of putting this is asking the question "What's the value of the convolution function at a given time?" So we need another variable to do the intergration (tau). 

Do you remember the effect of subtracting from the argument of a function? It will result in a 

# Pulse Shapes

## Rectangular Pulse #1
![Rectangular Pulse #1](rectpulse_1.png)
```
frect_1 = rectangularPulse(-1,1,x);
```

## Triangular Pulse #1
![Triangular Pulse #1](tripulse_1.png)
```
ftri_1 = triangularPulse(-1,0,1,x);
```

## Triangular Pulse #2
![Triangular Pulse #2](tripulse_2.png)
```
ftri_2 = triangularPulse(-2,0,0,x);
```

##  Triangular Pulse #3
![Triangular Pulse #3](tripulse_3.png)

```
 ftri_3 = triangularPulse(0,1,1,-0.5*(x-2));
```

##  Triangular Pulse #4
![Triangular Pulse #4](tripulse_4.png)

```
ftri_4 = triangularPulse(0,1,1,-0.5*(x-1));
```

