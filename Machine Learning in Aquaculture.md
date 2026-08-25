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
  
   - 4.5 Convolutional Neural Networks (CNN): *For Automated Visual Lice Counting & Biomass Estimation*
     
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

**Limitation:** Computationally heavy with large datasets (O(n³) complexity). Best used for smaller, high-resolution spatial studies.

### 4.4. LightGBM: *The Alternative to XGBoost*

**What it is:** Another boosting framework developed by Microsoft. It is often considered XGBoost's direct competitor.

**Key Innovation:** Unlike XGBoost, which grows trees **level-wise** (balanced, horizontal growth), LightGBM grows trees **leaf-wise** (vertical, asymmetric growth). It grows the branch that reduces the error the most, leading to faster convergence.

**Application in Aquaculture:** Perfect for **real-time feeding optimization**. When a camera detects fish feeding behavior, the model must predict optimal feed dosage in milliseconds. LightGBM is significantly faster than XGBoost on massive datasets (millions of rows) while maintaining comparable accuracy.

### 4.5 Convolutional Neural Networks (CNN): *For Automated Visual Lice Counting & Biomass Estimation*

**What it is**: A deep learning architecture purpose-built for image data. Instead of receiving pre-computed numeric features (temperature, salinity, etc.), a CNN learns directly from raw pixels — applying stacked layers of learned filters that detect edges, textures, and eventually complex shapes like a lice body or a fish silhouette. This is the model family behind most of the industry's shift from manual sampling to camera-based monitoring.

**Application in Aquaculture**: Two use cases dominate:

- **Automated Lice Counting/Detection**: Object-detection variants (e.g., YOLO, Faster R-CNN) scan underwater or surface camera feeds to locate and classify individual sea lice on fish — distinguishing adult females, males, and chalimus stages — replacing the manual net-and-count process that is labor-intensive, stressful for the fish, and only samples a small fraction of the population. This is the core technique behind commercial systems like Aquabyte's lice-counting cameras.

- **Biomass & Morphometric Estimation**: Paired with stereo cameras, CNNs perform semantic segmentation or keypoint detection to isolate individual fish silhouettes from a video frame, from which length, width, and estimated weight are derived. This is the same domain your KDE calibration work sits in — a CNN typically handles the detection/segmentation step, while techniques like KDE can be applied downstream to filter noise (e.g., swim-angle variation) or calibrate the length-to-weight conversion.

- **Welfare & Behavior Monitoring**: CNN-based video analysis can flag abnormal swimming patterns, surface gasping (a low-oxygen behavioral signal), or reduced feeding activity, complementing sensor-based DO forecasting (Section 4.1) with a direct visual read on fish response.

**Why use it**: Cameras are already deployed across most modern farms (feeding control, welfare cameras, biomass cages), so a CNN turns existing video infrastructure into a continuous, non-invasive monitoring stream — counting lice or estimating biomass on every fish that passes the camera, rather than a manual sample of ~20 fish per cage per week.

**Limitation**: Requires large, accurately labeled image datasets (thousands of annotated lice/fish instances) to train from scratch, which is expensive to produce. Performance also degrades in turbid water, low light, or high fish density (occlusion), and models trained on one farm's camera setup/lighting often need re-calibration or fine-tuning before transferring to another site. Most production deployments therefore use transfer learning — fine-tuning a model pre-trained on large general image datasets rather than training from zero.

---

## 5. Comparative Analysis: Which Model to Choose?

The "best" model depends entirely on the **specific aquaculture problem** you are solving. Use the table below as your decision-making cheat sheet. 
| Problem Domain | Recommended Model | Why? | Priority |
| :--- | :--- | :--- | :--- |
| **Lice Infestation Prediction** | **XGBoost** | Captures biological time-lags and regularizes against noisy treatment data. | Accuracy |
| **Lice Infestation Explanation** (Regulatory) | **Random Forest** | Provides stable, legally defensible feature importance charts. | Interpretability |
| **Dissolved Oxygen (DO) Forecasting** (24hrs) | **LSTM** | Remembers the sequence and momentum of water chemistry trends. | Memory |
| **Biomass/Harvest Weight Forecasting** | **Prophet** | Explicitly handles seasonal summer/winter growth cycles. | Trend & Seasonality |
| **Spatial Spread (Neighboring Farms)** | **Gaussian Process (GPR)** | Models covariance based on ocean currents and geographic distance. | Spatial Awareness |
| **Real-time Feeding Control (Edge Devices)** | **LightGBM** | Ultra-fast inference speed; lower memory footprint than XGBoost. | Speed & Efficiency |
| **Automated Lice Counting (Camera-Based)** | **CNN (YOLO / Faster R-CNN)** | Detects and classifies individual lice directly from image/video, at scale. | Vision & Scale | 
| **General Baseline / "First Try"** | **Random Forest** | Zero hyperparameter tuning required; works well out-of-the-box. | Robustness |

## 6. Final Recommendation for Aquaculture Practitioners

If you are building a production-ready decision-support system for a Norwegian salmon farm, **do not pick just one model**. Implement a **hybrid stack**:

1. **Use XGBoost** as your primary lice early-warning system (sends SMS alerts to farmers)

2. **Use an LSTM** as a safety net to forecast critical low-oxygen events.

3. **Use Random Forest** once a month to generate automated reports for the Norwegian Food Safety Authority (Mattilsynet), explaining *which* environmental factors triggered the current risk level.

4. **Experiment with LightGBM** if you plan to deploy the model directly onto the farm's edge-computing devices (feeding barges) to minimize latency.

5. Layer in a CNN wherever cameras are already installed; it turns passive video feeds into automated lice counts and biomass estimates, feeding cleaner, higher-frequency input into the models above instead of relying solely on manual sampling.

Finally, remember the golden rule of aquaculture modelling: **Data quality > Model complexity.** A simple Random Forest trained on high-frequency, clean oxygen data will *always* beat a fancy LSTM trained on sparse, manually-recorded spreadsheets. Invest heavily in your sensor infrastructure, and these models will reward you with substantial operational savings.

## References

Liu, S., Du, Z., Wang, G., Zhang, P., Xu, W., Yu, J., & Li, D. (2026). From Traditional Machine Learning Models to Multimodal Large Models: A Review of Aquaculture. Reviews in Aquaculture, 18(1), 1. doi:10.1111/raq.70111 

Roy, S. M., Beg, M. M., Bhagat, S. K., Charan, D., Pareek, C. M., Moulick, S., & Kim, T. (2025). Application of artificial intelligence in aquaculture–Recent developments and prospects. Aquacultural Engineering, 111, 102570.



