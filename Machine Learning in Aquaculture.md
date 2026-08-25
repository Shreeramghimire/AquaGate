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

5. [How to Evaluate: Metrics & Explainability]

   - 5.1 Regression Metrics: *For Continuous Predictions (Biomass, DO, Growth)*

   - 5.2 Classification Metrics: *For Lice Counting & CNN Detection Tasks*

   - 5.3 Explainability: *SHAP & LIME*
     
6. [Comparative Analysis: Which Model to Choose?]

7. [Final Recommendation for Aquaculture Practitioners]

8. [References]

----

## 1. Introduction: Why Tree-Based & Hybrid Models?

Aquaculture is a data-rich industry. Modern salmon farms are equipped with **sensors** (temperature, oxygen, salinity, pH), **feeding systems** (automated cameras), **biological sampling** (lice counts, weights), and **external data** (satellite-derived chlorophyll-a, weather forecasts) (Liu et al., 2026; Roy et al., 2025). 

(**Chlorophyll-a** measures ocean and lake color (blue-to-green light reflectance) to estimate phytoplankton biomass and water health. Sensors like MODIS and Copernicus OLCI provide global and regional concentration estimates in milligrams per cubic meter (mg/m³).)

However, this data is notoriously difficult to model due to three inherent challenges (Liu et al., 2026):

1. **Non-Linearity:** Fish growth and lice reproduction do not follow straight lines. They thrive in optimal ranges and crash outside them.

2. **Temporal Dependence:** Today's oxygen level depends on yesterday's temperature and last week's algal bloom.

3. **Spatial Connectivity:** A lice outbreak at Farm A will inevitably spread to Farm B 5 km away if the current flows in that direction.


To tackle these challenges, data scientists rely on a spectrum of models from highly interpretable tree-based ensembles to deep learning architectures (Wu et al., 2025; Kaur et al., 2023). This document provides a comprehensive overview of all viable models, starting from the simplest building block.

---

## 2. The Building Block: Decision Trees

Before diving into complex ensembles, we must understand their fundamental building block: the **Decision Tree**. 

**What it is:** A flowchart-like structure where each internal node represents a "test" on a feature (e.g., *"Is temperature > 12°C?"*), each branch represents the outcome of the test, and each leaf node represents a predicted value (e.g., *"Lice count = 0.5 adults per fish"*)(Palaiokostas, 2024).

**How it learns:** The algorithm recursively splits the data using the feature that creates the "purest" sub-groups, minimizing the variance of the target variable in each child node.

**The Fatal Flaw:** A single decision tree suffers from **high variance**. It is highly sensitive to small fluctuations in the training data, leading to severe **overfitting** (Palaiokostas, 2024). 

To overcome this fragility, we must move from a single "expert" to a "committee" of trees. This leads us to the three core ensemble methods.

---

## 3. The Core Ensemble Trio (Salmon Lice Focus)

These three models represent the "gold standard" for tabular biological data (Alnemari et al., 2025; Hridoy et al., 2025). I used them specifically for predicting **salmon lice infestation levels** in Norwegian fjords (the results can be found on https://github.com/Shreeramghimire/Norwegian_Salmon_Lice_Data_Book).

### 3.1. Random Forest 

**Methodology:** Random Forest applies **Bootstrap Aggregating (Bagging)**. It builds hundreds of deep decision trees **independently** and in **parallel** (Palaiokostas, 2024). 

**Random Data:** Each tree is trained on a random subset of the data (bootstrapped).

**Random Features:** At each split, only a random subset of features is considered (e.g., only `temperature` and `salinity`, but not `chlorophyll`).

**Prediction:** The final output (lice count) is the **average** of all individual tree predictions.

**Pros for Aquaculture:** Exceptionally robust to missing sensor data and outliers. Provides highly stable **feature importance** rankings (e.g., proving to regulators that Temperature drives lice more than Salinity) (Palaiokostas, 2024). Nuangpirom et al. (2025) also demonstrated Random Forest's effectiveness on low-cost edge devices for real-time water quality prediction.

**Cons:** Does not inherently understand the *flow of time*; it treats each weekly observation as an independent snapshot.

### 3.2. Gradient Boosting Machine (GBM)

**Methodology:** GBM builds trees **sequentially** and **dependently** (Alnemari et al., 2025).

1. Tree #1 predicts the lice count.

2. Tree #2 is trained specifically on the **errors (residuals)** that Tree #1 made, correcting them.

3. Tree #3 corrects the combined errors of Trees #1 and #2, and so on.

**Pros for Aquaculture:** Exceptional at focusing on rare, high-impact events (e.g., unexpected lice explosions following a sudden spring warming event). Alnemari et al. (2025) found Gradient Boosting achieved high accuracy for aquaculture management decisions.

**Cons:** Traditional GBM is **slow** due to its sequential nature. It is also prone to overfitting if the learning rate is not carefully tuned.

### 3.3. XGBoost (eXtreme Gradient Boosting)

**Methodology:** XGBoost uses the same *sequential boosting* logic as GBM but is a complete system-level re-engineering for speed and power (Palaiokostas, 2024).

**Key Innovations:**

- **Regularization (L1/L2):** Actively punishes overly complex trees, preventing the model from memorizing specific treatment failures (Palaiokostas, 2024).
  
- **Second-Order Gradients:** Analyzes the *curvature* of the error, allowing faster convergence.

- **Parallelized Split-Finding:** Utilizes all CPU cores to find the best splits within each tree level.

**Pros for Aquaculture:** Acts as a "surgical scalpel." Perfect for capturing 3-week lag effects (e.g., linking Week 10's temperature to Week 13's adult lice). Its regularization prevents overfitting to weird local anomalies in specific Norwegian fjords. Palaiokostas (2024) ranked XGBoost first among all tested models for disease resistance prediction.

**Cons:** More computationally expensive than Random Forest; requires careful hyperparameter tuning.

## 4. Expanded Models for Broader Aquaculture Applications

While the trio above is excellent for tabular lice data, aquaculture involves other complex problems—like forecasting oxygen dips, estimating total biomass, and modelling spatial spread. For these, we turn to specialized models (Roy et al., 2025; Wu et al., 2025).

### 4.1. Long Short-Term Memory (LSTM): *For Dissolved Oxygen & Temperature Forecasting*

**What it is:** A specialized type of Recurrent Neural Network (RNN) designed explicitly for **time-series data**. Unlike tree-based models, LSTMs have "memory cells" that allow them to remember patterns from weeks or months ago (Khabusi & Huang, 2022; Yu et al., 2025).

**Application in Aquaculture:** Forecasting **Dissolved Oxygen (DO)** levels 24-48 hours in advance. DO is the #1 acute mortality risk in salmon farms (fish suffocate if oxygen drops below 70% saturation). An LSTM takes the last 7 days of temperature, salinity, wind speed, and algal biomass to predict tomorrow's minimum DO (Khabusi & Huang, 2022; "LSTM-Based Predictive Modeling," 2025).

**Why use it:**  It understands the "momentum" of water chemistry—if oxygen has been dropping for 3 days, it knows the trend is likely to continue (Yu et al., 2025).

**Limitation:** Requires massive amounts of continuous data (thousands of hourly timesteps) and significant GPU power. Wu et al. (2025) note that while deep learning offers opportunities for sustainable aquaculture, challenges remain in data availability and model generalizability.

### 4.2. Prophet (Meta's Time-Series Model): *For Seasonal Biomass Growth Curves*

**What it is:** An open-source forecasting model developed by Facebook (Meta). It is designed for business time-series that have strong **seasonal patterns** and holiday effects (Satrio et al., 2021).

**Application in Aquaculture:** Predicting **Biomass Growth Curves**. Salmon grow predictably with the seasons—fast in the summer (long photoperiod, warm water) and slow in the winter (Lima et al., 2023).

**Why use it:** Prophet is incredibly user-friendly. It explicitly decomposes the time-series into three components: **Trend** (overall growth), **Seasonality** (summer/winter cycles), and **Holidays** (e.g., feeding stops during treatments). You can feed it 5 years of weekly weight samples, and it will predict the exact week your fish will hit 5 kg market weight (Lima et al., 2023).

**Limitation:** Assumes the future will look like the past. Cannot handle sudden external shocks (e.g., a new disease outbreak) (Satrio et al., 2021).

### 4.3. Gaussian Process Regression (GPR): *For Spatially-Aware Lice Dispersion*

**What it is:** A probabilistic, non-parametric model that defines a probability distribution over possible functions. It excels at modelling **spatial correlation**—things that are close together are more similar than things far apart (Katsidoniotaki et al., 2025).

**Application in Aquaculture:** Predicting lice dispersion between neighboring farms. Lice larvae drift with ocean currents. A GPR can model the covariance between Farm A's lice count and Farm B's lice count, based on the distance between them and the dominant current direction (Katsidoniotaki et al., 2025; Su et al., 2023).

**Why use it:** It not only gives you a prediction (e.g., "Farm B will have 2 adult lice/fish next week"), but it also gives you the **uncertainty** (e.g., "± 0.5 lice"). This is vital for risk-based management (Katsidoniotaki et al., 2025).

**Limitation:** Computationally heavy with large datasets (O(n³) complexity). Best used for smaller, high-resolution spatial studies (Katsidoniotaki et al., 2025).

### 4.4. LightGBM: *The Alternative to XGBoost*

**What it is:** Another boosting framework developed by Microsoft. It is often considered XGBoost's direct competitor (Nuangpirom et al., 2025).

**Key Innovation:** Unlike XGBoost, which grows trees **level-wise** (balanced, horizontal growth), LightGBM grows trees **leaf-wise** (vertical, asymmetric growth). It grows the branch that reduces the error the most, leading to faster convergence (Nuangpirom et al., 2025).

**Application in Aquaculture:** Perfect for **real-time feeding optimization** and water quality prediction on edge devices. Nuangpirom et al. (2025) demonstrated that LightGBM on low-cost edge devices can achieve substantial accuracy for water quality prediction in tilapia aquaculture, enabling real-time decision support in resource-limited settings.

### 4.5 Convolutional Neural Networks (CNN): *For Automated Visual Lice Counting & Biomass Estimation*

**What it is**: A deep learning architecture purpose-built for image data. Instead of receiving pre-computed numeric features (temperature, salinity, etc.), a CNN learns directly from raw pixels, applying stacked layers of learned filters that detect edges, textures, and eventually complex shapes like a lice body or a fish silhouette (Kaur et al., 2023; Zhang & Su, 2025). This model family underpins most of the industry's shift from manual sampling to camera-based monitoring (Kaur et al., 2023).

**Application in Aquaculture**: Two use cases dominate:

- **Automated Lice Counting/Detection**: Object-detection variants (e.g., YOLO, Faster R-CNN) scan underwater or surface camera feeds to locate and classify individual sea lice on fish — distinguishing adult females, males, and chalimus stages — replacing the manual net-and-count process that is labor-intensive, stressful for the fish, and only samples a small fraction of the population (Kaur et al., 2023). This is the core technique behind commercial systems like Aquabyte's lice-counting cameras.

- **Biomass & Morphometric Estimation**: Paired with stereo cameras, CNNs perform semantic segmentation or keypoint detection to isolate individual fish silhouettes from a video frame, from which length, width, and estimated weight are derived (Zhang & Su, 2025). This is the same domain your KDE calibration work sits in, a CNN typically handles the detection/segmentation step, while techniques like KDE can be applied downstream to filter noise (e.g., swim-angle variation) or calibrate the length-to-weight conversion. Zhang & Su (2025) propose a hybrid approach towards real-time monitoring of fish distributions in aquaculture net cages, integrating CNN-based detection with tracking algorithms.

- **Welfare & Behavior Monitoring**: CNN-based video analysis can flag abnormal swimming patterns, surface gasping (a low-oxygen behavioral signal), or reduced feeding activity, complementing sensor-based DO forecasting (Section 4.1) with a direct visual read on fish response (Kaur et al., 2023; Roy et al., 2025).
  
**Why use it**: Cameras are already deployed across most modern farms (feeding control, welfare cameras, biomass cages), so a CNN turns existing video infrastructure into a continuous, non-invasive monitoring stream; counting lice or estimating biomass on every fish that passes the camera, rather than a manual sample of ~20 fish per cage per week (Kaur et al., 2023; Zhang & Su, 2025).

**Limitation**: Requires large, accurately labeled image datasets (thousands of annotated lice/fish instances) to train from scratch, which is expensive to produce (Kaur et al., 2023). Performance also degrades in turbid water, low light, or high fish density (occlusion), and models trained on one farm's camera setup/lighting often need re-calibration or fine-tuning before transferring to another site (Kaur et al., 2023). Most production deployments therefore use transfer learning, fine-tuning a model pre-trained on large general image datasets rather than training from zero.

---

## 5. How to Evaluate: Metrics & Explainability

Picking the right model architecture is only half the job. You also need a defensible way to answer two follow-up questions: "How do you know it's working?" and "Can you explain the output to Mattilsynet?" This section covers the metrics and explainability tools that answer each.

### 5.1 Regression Metrics: For Continuous Predictions (Biomass, DO, Growth)

Random Forest, GBM, XGBoost, LSTM, Prophet, and GPR all ultimately output a continuous number (a lice count, a DO level, a weight in kg), so their performance should be evaluated with regression metrics:

- RMSE (Root Mean Squared Error): Squares errors before averaging, so it penalizes large misses heavily. Use this where a big miss is dangerous   e.g., an LSTM underestimating a DO crash by 2 mg/L is far worse than being off by 0.2 mg/L six times.

- MAE (Mean Absolute Error): The average absolute size of the error, in the same units as the prediction (e.g., "off by 0.3 lice per fish on average"). More robust to outliers than RMSE and easier to communicate to non-technical stakeholders.

- R² (Coefficient of Determination): The proportion of variance in the outcome the model explains. Useful as a single headline number, but should never be reported alone; a high R² can hide systematic bias at the extremes (e.g., a Prophet model that nails average growth but misses harvest-week spikes).

- MAPE (Mean Absolute Percentage Error): Expresses error as a percentage rather than an absolute value, which makes it easier to compare model performance across farms or cages of different sizes.

**Rule of thumb:** report RMSE and MAE together; RMSE tells you about your worst mistakes, MAE tells you about your typical mistake. A large gap between the two is itself a diagnostic signal (it means the model has a few very bad predictions rather than uniformly mediocre ones).

### 5.2 Classification Metrics — For Lice Counting & CNN Detection Tasks

Some outputs aren't continuous; they're categorical: "is this a lice or not," "adult female/male / chalimus," or "has this cage crossed the Mattilsynet legal treatment threshold (yes/no)." These need classification metrics, not regression ones:

- **Precision:** Of everything the model flagged as lice (or as "over threshold"), what fraction was actually correct. Low precision means false alarms, treatment triggered when it wasn't needed.

- **Recall:** Of all the actual lice present (or all cages actually over threshold), what fraction did the model catch? This is the regulatory-critical number: a missed adult female lice, or a missed threshold breach, is a compliance risk, not just a modeling error.

- **F1-score:** The harmonic mean of precision and recall, useful as a single number when you need to balance both rather than optimizing one at the other's expense.

- **mAP (mean Average Precision):** The standard metric for object-detection models like YOLO or Faster R-CNN; it accounts for both whether a lice was detected and whether the bounding box location was accurate.

- **Confusion Matrix:** Breaks errors down by class (e.g., adult females mistaken for chalimus), which is often more actionable for a CNN lice-counting model than any single summary metric; it tells you which life stage needs more labeled training data.

**Rule of thumb:** for regulatory-facing classification tasks, prioritize recall over precision. A false alarm costs a wasted treatment; a missed detection risks a Mattilsynet compliance violation.

### 5.3 Explainability: SHAP & LIME

The comparison table in Section 6 flags Random Forest as the go-to model when Interpretability is the priority; for example, generating a monthly report for Mattilsynet on which environmental factors are driving lice risk. In practice, "Random Forest is interpretable" only gets you feature importance rankings (which features mattered on average, across the whole dataset). To explain a specific prediction- "why did the model flag Cage 4 as high-risk this week?" you need a dedicated explainability tool:

- SHAP (SHapley Additive exPlanations): Assigns each input feature a contribution value for a single prediction, grounded in cooperative game theory (Lundberg & Lee, 2017). Works on any of the tree-based models (Random Forest, GBM, XGBoost, LightGBM) and produces the kind of per-decision breakdown ("Temperature contributed +0.4 lice, Salinity contributed -0.1 lice") that a regulator or farm manager can actually act on, rather than a single global ranking.

- LIME (Local Interpretable Model-Agnostic Explanations): Builds a simple, interpretable surrogate model around one individual prediction to approximate how the black-box model behaved locally (Ribeiro et al., 2016). More model-agnostic than SHAP (it can explain a CNN's lice-detection output as easily as a tree model's), though its explanations are approximate rather than exact.

- 


---

## 6. Comparative Analysis: Which Model to Choose?

The "best" model depends entirely on the **specific aquaculture problem** you are solving (Roy et al., 2025; Alnemari et al., 2025). Use the table below as your decision-making cheat sheet.  

| Problem Domain | Recommended Model | Why? | Priority |
| :--- | :--- | :--- | :--- |
| **Lice Infestation Prediction** | **XGBoost** | Captures biological time-lags and regularizes against noisy treatment data(Palaiokostas, 2024). | Accuracy |
| **Lice Infestation Explanation** (Regulatory) | **Random Forest** | Provides stable, legally defensible feature importance charts(Palaiokostas, 2024). | Interpretability |
| **Dissolved Oxygen (DO) Forecasting** (24hrs) | **LSTM** | Remembers the sequence and momentum of water chemistry trends (Khabusi & Huang, 2022; Yu et al., 2025). | Memory |
| **Biomass/Harvest Weight Forecasting** | **Prophet** | Explicitly handles seasonal summer/winter growth cycles (Lima et al., 2023). | Trend & Seasonality |
| **Spatial Spread (Neighboring Farms)** | **Gaussian Process (GPR)** | Models covariance based on ocean currents and geographic distance (Katsidoniotaki et al., 2025; Su et al., 2023). | Spatial Awareness |
| **Real-time Feeding Control (Edge Devices)** | **LightGBM** | Ultra-fast inference speed; lower memory footprint than XGBoost (Nuangpirom et al., 2025). | Speed & Efficiency |
| **Automated Lice Counting (Camera-Based)** | **CNN (YOLO / Faster R-CNN)** | Detects and classifies individual lice directly from image/video, at scale (Kaur et al., 2023; Zhang & Su, 2025). | Vision & Scale | 
| **General Baseline / "First Try"** | **Random Forest** | Zero hyperparameter tuning required; works well out-of-the-box(Palaiokostas, 2024). | Robustness |

## 7. Final Recommendation for Aquaculture Practitioners

If you are building a production-ready decision-support system for a Norwegian salmon farm, **do not pick just one model**. Implement a **hybrid stack** (Roy et al., 2025; Su et al., 2023):

1. **Use XGBoost** as your primary lice early-warning system (sends SMS alerts to farmers) (Palaiokostas, 2024).

2. **Use an LSTM** as a safety net to forecast critical low-oxygen events (Khabusi & Huang, 2022; Yu et al., 2025).

3. **Use Random Forest** once a month to generate automated reports for the Norwegian Food Safety Authority (Mattilsynet), explaining *which* environmental factors triggered the current risk level (Palaiokostas, 2024).

4. **Experiment with LightGBM** if you plan to deploy the model directly onto the farm's edge-computing devices (feeding barges) to minimize latency (Nuangpirom et al., 2025).

5. Layer in a CNN wherever cameras are already installed; it turns passive video feeds into automated lice counts and biomass estimates, feeding cleaner, higher-frequency input into the models above instead of relying solely on manual sampling (Kaur et al., 2023; Zhang & Su, 2025).

As Liu et al. (2026) note, the industry is evolving toward multimodal large models that integrate multi-source data such as images, sensor readings, video, audio, and text, promising enhanced precision, sustainability, and automation. Su et al. (2023) and Lima et al. (2023) further emphasize the role of digital twins in achieving holistic, real-time monitoring of aquaculture systems.

Finally, remember the golden rule of aquaculture modelling: **Data quality > Model complexity.** A simple Random Forest trained on high-frequency, clean oxygen data will *always* beat a fancy LSTM trained on sparse, manually-recorded spreadsheets. Invest heavily in your sensor infrastructure (Roy et al., 2025), and these models will reward you with substantial operational savings.

## 8. References

Alnemari, A.M., Elmessery, W.M., Qazaq, A.S., Moustapha, M.E., Rakhimgaliyeva, S., Abuhussein, M.F.A., ... & Elwakeel, A.E. (2025). Developing highly accurate machine learning models for optimizing water quality management decisions in tilapia aquaculture. Scientific Reports, 15(1), 35600. 

Hridoy, M. A. A. M., Shawkat, A. I., Bordin, C., Acharjee, M. R., Masood, A., Baki, A. O., & Al Mamun, M. A. (2025). Advanced machine learning models for accurate water quality classification and WQI prediction: Implications for aquatic disease risk management. Science of the Total Environment, 1008, 180965.

Katsidoniotaki, E., Su, B., Kelasidi, E., & Sapsis, T. P. (2025). Multifidelity digital twin for real-time monitoring of structural dynamics in aquaculture net cages. Scientific Reports, 15(1), 44281.

Kaur, G., Adhikari, N., Krishnapriya, S., Wawale, S. G., Malik, R. Q., Zamani, A. S., ... & Osei-Owusu, J. (2023). Recent advancements in deep learning frameworks for precision fish farming opportunities, challenges, and applications. Journal of Food Quality, 2023(1), 4399512.

Khabusi, S. P., & Huang, Y. P. (2022, August). A deep learning approach to predict dissolved oxygen in aquaculture. In 2022 International Conference on Advanced Robotics and Intelligent Systems (ARIS) (pp. 1-6). IEEE.

Lima, A. C., Royer, E., Bolzonella, M., & Pastres, R. (2023). Digital twins for land-based aquaculture: A case study for rainbow trout (Oncorhynchus mykiss). Open Research Europe, 2, 16.

Liu, S., Du, Z., Wang, G., Zhang, P., Xu, W., Yu, J., & Li, D. (2026). From Traditional Machine Learning Models to Multimodal Large Models: A Review of Aquaculture. Reviews in Aquaculture, 18(1), 1. doi:10.1111/raq.70111 

LSTM-Based Predictive Modeling of Dissolved Oxygen Using Water Quality and Environmental Parameters. (2025). IEEE Xplore. Conference: Cebu City, Philippines

Nuangpirom, P., Pitjamit, S., Jaikampan, V., Peerakam, C., Nakkiew, W., & Jewpanya, P. (2025). Machine learning on low-cost edge devices for real-time water quality prediction in tilapia aquaculture. Sensors, 25(19), 6159.

Palaiokostas, C. (2024). Predicting for disease resistance in aquaculture species using machine learning models. AGRIS - International Agricultural Science and Technology Information System.

Roy, S. M., Beg, M. M., Bhagat, S. K., Charan, D., Pareek, C. M., Moulick, S., & Kim, T. (2025). Application of artificial intelligence in aquaculture–Recent developments and prospects. Aquacultural Engineering, 111, 102570.

Satrio, C. B. A., Darmawan, W., Nadia, B. U., & Hanafiah, N. (2021). Time series analysis and forecasting of coronavirus disease in Indonesia using ARIMA model and PROPHET. Procedia Computer Science, 179, 524-532.

Su, B., Bjørnson, F. O., Tsarau, A., Endresen, P. C., Ohrem, S. J., Føre, M., ... & Bjelland, H. V. (2023). Towards a holistic digital twin solution for real-time monitoring of aquaculture net cage systems. Marine Structures, 91, 103469.

Wu, A. Q., Li, K. L., Song, Z. Y., Lou, X., Hu, P., Yang, W., & Wang, R. F. (2025). Deep learning for sustainable aquaculture: Opportunities and challenges. Sustainability, 17(11), 5084.

Yu, W., Wu, M., & Ha, Z. (2025). Research on a Pearson‐LSTM‐AM‐based water quality prediction model for freshwater aquaculture. Journal of the World Aquaculture Society, 56(4), e70041.

Zhang, Q., & Su, B. (2025). A hybrid approach towards real-time monitoring of fish distributions in aquaculture net cage. Aquacultural Engineering, 110, 102527.
