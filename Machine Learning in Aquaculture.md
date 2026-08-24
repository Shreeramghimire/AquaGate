# A Comprehensive Guide to Machine Learning Models in Aquaculture

**Author: Shreeram Ghimire**

**Start Date: 24 August 2025 -**

**Context:** Predictive modelling for Norwegian Salmon Aquaculture (Lice Infestation, Biomass Estimation, Feed Optimization, and Water Quality Forecasting).

## Contents

1. [Introduction: Why Tree-Based & Hybrid Models?]
   
2. [The Building Block: Decision Trees]
   
3. [The Core Ensemble Trio]

   - 3.1 Random Forest (Bagging)
  
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

2. 

