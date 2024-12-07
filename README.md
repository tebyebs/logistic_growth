## Answers to questions for Reproducible Research assignment

1) There are three scripts as part of the logistic growth analysis. All analysis was conducted using "experiment.csv" obtained from the OSF website, representing the results of a study observing *E.coli* growth over time:

   - **plot_data.R**: Generates both a linear and semi-log plot of the growth of the bacteria vs time.   
   - **fit_linear_model.R**: Generates two linear models, Model 1 representing the linear approximation when $` K \gg N_0 `$ and $`t`$ is small (under 1000) - since this is exponential       growth it can be modelled using $`ln(N) = ln(N_0) + rt`$. Model 2 represents when $`t`$ is large (over 2500) and the population size remains constant, therefore $` N(t) = K + 0         \cdot t `$. 
   - **plot_data_and_model.R**: Based on a model function and parameters for each of the values in the equation ($` N_0`$, $`K`$ and $`r`$) generates a plot for logistic growth.

   Results: By plotting the data, and applying a linear model to it at different time points we can deduce the various parameter values: 
   - $N_0$: Using Model 1, we find the intercept (6.883), as this represents $ln(N_0)$ since $t = 0$ in the equation $`ln(N) = ln(N_0) + rt`$. Therefore, $N_0$ = $e$^6.883 or ~975.55
   - $K$: Using Model 2, we know that $` N(t) = K + 0 \cdot t `$ therefore $K = 6.00e + 10$ as this is the maximum $N$ at very large $t$.
   - $r$: Using model 1, we can derive the coefficient of $t$ in $`ln(N) = ln(N_0) + rt`$, therefore $r = 1.004e-02$
   
2)
3)


## DO FOUR IN OTHER SHEET
