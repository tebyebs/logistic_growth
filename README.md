## Answers to questions for Reproducible Research assignment

1) There are three scripts as part of the logistic growth analysis. All analysis was conducted using "experiment.csv" obtained from the OSF website, representing the results of a study observing *E.coli* growth over time:

   - **plot_data.R**: Generates both a linear and semi-log plot of the growth of the bacteria vs time.   
   - **fit_linear_model.R**: Generates two linear models, Model 1 representing the linear approximation when $` K \gg N_0 `$ and $`t`$ is small (under 1000) - since this is exponential       growth it can be modelled using $`ln(N) = ln(N_0) + rt`$. Model 2 represents when $`t`$ is large (over 2500) and the population size remains constant, therefore $` N(t) = K + 0         \cdot t `$. 
   - **plot_data_and_model.R**: Based on a model function and parameters for each of the values in the equation ($` N_0`$, $`K`$ and $`r`$) generates a plot for logistic growth.

   Results: By plotting the data, and applying a linear model to it at different time points we can deduce the various parameter values: 
   - $N_0$: Using Model 1, we find the intercept (6.883), as this represents $ln(N_0)$ since $t = 0$ in the equation $`ln(N) = ln(N_0) + rt`$. Therefore, $N_0$ = $e$^6.883 or ~975.55
   - $K$: Using Model 2, we know that $` N(t) = K + 0 \cdot t `$ therefore $K = 6.00e + 10$ or $6.00 × 10^{10}$ as this is the maximum $N$ at very large $t$.
   - $r$: Using model 1, we can derive the coefficient of $t$ in $`ln(N) = ln(N_0) + rt`$, therefore $r = 1.004e-02$ or $1.004 × 10^{-2}$
   
2) The exponential growth equation is $N(t) = N_0 e^{rt}$. Plugging in our estimates of $N_0$ and $r$ from above, as well as setting $t = 4980$, we get $N(t) = 5.054×10^{24}$. This value is significantly higher than the value predicted under the logistic growth model $N(t) = \frac{K N_0 e^{rt}}{K-N_0+N_0 e^{rt}}$, which is $N(t) = 6×10^{10}$. This difference of 14 orders of magnitude is because the logistic model takes into account the fact that growth will not remain exponential (due to food scarcity/competition).

3) The red represents the logistic model, whereas the blue line represents the exponential model.
<p align="center">
<img src="https://github.com/tebyebs/logistic_growth/blob/main/Q3.png" width="457" height="407">
</p>

