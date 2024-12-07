## Answers to questions for Reproducible Research assignment

1) There are three scripts as part of the logistic growth analysis. All analysis was conducted using "experiment.csv" obtained from the OSF website, representing the results of a study observing *E.coli* growth over time:

   a) **plot_data.R**: Generates both a linear and semi-log plot of the growth of the bacteria vs time.   \
   b) **fit_linear_model.R**: Generates two linear models, one representing the linear approximation when $` K \gg N_0 `$ and $`t`$ is small (under exponential growth):  
   ```math
   \begin{equation}
   ln(N) = ln(N_0) + rt
   \end{equation}
   ```
   c) **plot_data_and_model.R** \
   
