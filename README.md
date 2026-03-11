# Gradient Descent from Scratch: Credit Score Prediction

**Author:** Luke Catalano  
**Date:** March 9, 2026

## Project Objective
The primary objective of this project is **algorithm design** rather than a pure prediction task. By implementing a gradient descent optimization algorithm from scratch in R, this project explores the mechanics of iterative solvers used in modern machine learning. 

The goal is to combine principles from numerical analysis (AM230) and econometrics (Econ 217, 294A) to build a custom solver that can outperform the 90% accuracy benchmark of pre-packaged regularized regression models.

## Dataset & Design Context
This project utilizes a specific credit dataset ($n=400$). It is important to note that this dataset is **designed for high multicollinearity**—the variables are almost perfectly structured to be close predictors of one another. 

Because the data is so well-aligned, the challenge is not finding the "right" features, but rather designing an algorithm that can precisely navigate the loss surface to find the optimal coefficients efficiently.

### Features:
* `Income`, `Limit`, `Cards`, `Age`, `Education`, `Own`, `Student`, `Married`, `Region`, and `Credit Score`.

### Outcome Variable:
* `Balance`

## Algorithm Implementation
The model follows a linear specification ($y = X\beta$) and focuses on the manual calculation of the gradient to minimize error.

### Loss Function
The algorithm minimizes the Mean Squared Error (MSE):
$$L(\beta) = \frac{1}{n}\sum_{i=1}^{n}(y_{i}-X_{i}\beta)^{2}$$

### Optimization Strategy
Parameters are updated using a manual gradient descent rule:
$$\beta_{k+1} = \beta_{k} - \alpha \nabla L(\beta_{k})$$

* **Step Size ($\alpha$):** 0.01
* **Optimization Goal:** To evaluate the performance and convergence stability of a "by-hand" implementation versus standard regularized regression (glmnet)

## Performance Evaluation
The custom algorithm demonstrated exceptional precision and stability on the structured data:
* **Convergence:** Successfully converged in **3,594 iterations**.
* **Final Error:** Achieved a minimal final error of **1.145736**.
* **Model Accuracy:** Reached **99.79% accuracy** (Weighted Absolute Percent Error), validating the mathematical integrity of the custom solver.

## Tools
* **Language:** R
* **Libraries:** `tidyverse`, `ggplot2`, `dplyr`
* **Core Concepts:** Multivariable Calculus, Linear Algebra, Numerical Optimization
