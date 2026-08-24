# A Comprehensive Guide to Machine Learning Models in Aquaculture

**Author: Shreeram Ghimire**

**Start Date: 24 August 2025 -**

**Context:** Predictive modelling for Norwegian Salmon Aquaculture (Lice Infestation, Biomass Estimation, Feed Optimization, and Water Quality Forecasting).

## Contents

1. [Introduction: Why Tree-Based & Hybrid Models?]
   
2. [The Building Block: Decision Trees]
   
3. [The Core Ensemble Trio]

   - 3.1 Random Forest 
  
   - 3.2 Gradient Boosting Machine (GBM)
  
   - 3.3 XGBoost (eXtreme Gradient Boosting)
     
4. [Expanded Models for Broader Aquaculture Applications]
   
   - 4.1 Long Short-Term Memory (LSTM): *For Dissolved Oxygen & Temperature Forecasting*
     
   - 4.2 Prophet (Meta's Time-Series Model): *For Seasonal Biomass Growth Curves*
  
   - 4.3 Gaussian Process Regression (GPR): *For Spatially-Aware Lice Dispersion*
  
   - 4.4 LightGBM:  *The Alternative to XGBoost*
     
5. [Comparative Analysis: Which Model to Choose?]

6. [Final Recommendation for Aquaculture Practitioners]

----

## 1. Introduction: Why Tree-Based & Hybrid Models?

Aquaculture is a data-rich industry. Modern salmon farms are equipped with **sensors** (temperature, oxygen, salinity, pH), **feeding systems** (automated cameras), **biological sampling** (lice counts, weights), and **external data** (satellite-derived chlorophyll-a, weather forecasts). 

(**Chlorophyll-a** measures ocean and lake color (blue-to-green light reflectance) to estimate phytoplankton biomass and water health. Sensors like MODIS and Copernicus OLCI provide global and regional concentration estimates in milligrams per cubic meter (mg/m³).)

However, this data is notoriously difficult to model due to three inherent challenges:

1. **Non-Linearity:** Fish growth and lice reproduction do not follow straight lines. They thrive in optimal ranges and crash outside them.

2. **Temporal Dependence:** Today's oxygen level depends on yesterday's temperature and last week's algal bloom.

3. **Spatial Connectivity:** A lice outbreak at Farm A will inevitably spread to Farm B 5 km away if the current flows in that direction.


To tackle these challenges, data scientists rely on a spectrum of models from highly interpretable tree-based ensembles to deep learning architectures. This document provides a comprehensive overview of all viable models, starting from the simplest building block.

---

## 2. The Building Block: Decision Trees

Before diving into complex ensembles, we must understand their fundamental building block: the **Decision Tree**. 

**What it is:** A flowchart-like structure where each internal node represents a "test" on a feature (e.g., *"Is temperature > 12°C?"*), each branch represents the outcome of the test, and each leaf node represents a predicted value (e.g., *"Lice count = 0.5 adults per fish"*).

**How it learns:** The algorithm recursively splits the data using the feature that creates the "purest" sub-groups, minimizing the variance of the target variable in each child node.

**The Fatal Flaw:** A single decision tree suffers from **high variance**. It is highly sensitive to small fluctuations in the training data, leading to severe **overfitting**. 

To overcome this fragility, we must move from a single "expert" to a "committee" of trees. This leads us to the three core ensemble methods.

---

## 3. The Core Ensemble Trio (Salmon Lice Focus)

These three models represent the "gold standard" for tabular biological data. I used them specifically for predicting **salmon lice infestation levels** in Norwegian fjords (the results can be found on https://github.com/Shreeramghimire/Norwegian_Salmon_Lice_Data_Book).

### 3.1. Random Forest 

**Methodology:** Random Forest applies **Bootstrap Aggregating (Bagging)**. It builds hundreds of deep decision trees **independently** and in **parallel**. 

**Random Data:** Each tree is trained on a random subset of the data (bootstrapped).

**Random Features:** At each split, only a random subset of features is considered (e.g., only `temperature` and `salinity`, but not `chlorophyll`).

**Prediction:** The final output (lice count) is the **average** of all individual tree predictions.

**Pros for Aquaculture:** Exceptionally robust to missing sensor data and outliers. Provides highly stable **feature importance** rankings (e.g., proving to regulators that Temperature drives lice more than Salinity). 

**Cons:** Does not inherently understand the *flow of time*; it treats each weekly observation as an independent snapshot.

### 3.2. Gradient Boosting Machine (GBM)

**Methodology:** GBM builds trees **sequentially** and **dependently**

1. Tree #1 predicts the lice count.

2. Tree #2 is trained specifically on the **errors (residuals)** that Tree #1 made, correcting them.

3. Tree #3 corrects the combined errors of Trees #1 and #2, and so on.

**Pros for Aquaculture:** Exceptional at focusing on rare, high-impact events (e.g., unexpected lice explosions following a sudden spring warming event).

**Cons:** Traditional GBM is **slow** due to its sequential nature. It is also prone to overfitting if the learning rate is not carefully tuned.

### 3.3. XGBoost (eXtreme Gradient Boosting)

**Methodology:** XGBoost uses the same *sequential boosting* logic as GBM but is a complete system-level re-engineering for speed and power.

**Key Innovations:**

- **Regularization (L1/L2):** Actively punishes overly complex trees, preventing the model from memorizing specific treatment failures.

- **Second-Order Gradients:** Analyzes the *curvature* of the error, allowing faster convergence.

- **Parallelized Split-Finding:** Utilizes all CPU cores to find the best splits within each tree level.

**Pros for Aquaculture:** Acts as a "surgical scalpel." Perfect for capturing 3-week lag effects (e.g., linking Week 10's temperature to Week 13's adult lice). Its regularization prevents overfitting to weird local anomalies in specific Norwegian fjords.

**Cons:** More computationally expensive than Random Forest; requires careful hyperparameter tuning.

## 4. Expanded Models for Broader Aquaculture Applications

While the trio above is excellent for tabular lice data, aquaculture involves other complex problems—like forecasting oxygen dips, estimating total biomass, and modelling spatial spread. For these, we turn to specialized models.

### 4.1. Long Short-Term Memory (LSTM): *For Dissolved Oxygen & Temperature Forecasting*

**What it is:** A specialized type of Recurrent Neural Network (RNN) designed explicitly for **time-series data**. Unlike tree-based models, LSTMs have "memory cells" that allow them to remember patterns from weeks or months ago.

**Application in Aquaculture:** Forecasting **Dissolved Oxygen (DO)** levels 24-48 hours in advance. DO is the #1 acute mortality risk in salmon farms (fish suffocate if oxygen drops below 70% saturation). An LSTM takes the last 7 days of temperature, salinity, wind speed, and algal biomass to predict tomorrow's minimum DO.

**Why use it:** It understands the "momentum" of water chemistry—if oxygen has been dropping for 3 days, it knows the trend is likely to continue.

**Limitation:** Requires massive amounts of continuous data (thousands of hourly timesteps) and significant GPU power.

### 4.2. Prophet (Meta's Time-Series Model): *For Seasonal Biomass Growth Curves*

**What it is:** An open-source forecasting model developed by Facebook (Meta). It is designed for business time-series that have strong **seasonal patterns** and holiday effects.

**Application in Aquaculture:** Predicting **Biomass Growth Curves**. Salmon grow predictably with the seasons—fast in the summer (long photoperiod, warm water) and slow in the winter.

**Why use it:** Prophet is incredibly user-friendly. It explicitly decomposes the time-series into three components: **Trend** (overall growth), **Seasonality** (summer/winter cycles), and **Holidays** (e.g., feeding stops during treatments). You can feed it 5 years of weekly weight samples, and it will predict the exact week your fish will hit 5 kg market weight.

**Limitation:** Assumes the future will look like the past. Cannot handle sudden external shocks (e.g., a new disease outbreak).

### 4.3. Gaussian Process Regression (GPR): *For Spatially-Aware Lice Dispersion*

**What it is:** A probabilistic, non-parametric model that defines a probability distribution over possible functions. It excels at modelling **spatial correlation**—things that are close together are more similar than things far apart.

**Application in Aquaculture:** Predicting lice dispersion between neighboring farms. Lice larvae drift with ocean currents. A GPR can model the covariance between Farm A's lice count and Farm B's lice count, based on the distance between them and the dominant current direction.

**Why use it:** It not only gives you a prediction (e.g., "Farm B will have 2 adult lice/fish next week"), but it also gives you the **uncertainty** (e.g., "± 0.5 lice"). This is vital for risk-based management.
