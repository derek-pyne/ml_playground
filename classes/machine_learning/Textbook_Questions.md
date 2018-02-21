# Chapter One
1. How would you define Machine Learning?
    - Machine learning is any system that performs better as it is exposed to more data.
2. Can you name four types of problems where it shines?
    - Applications where a long list of hardcoded rules are used.
    - Complex problems which there is no good traditional solution
    - Fluctuating environments as the algorithms can adapt quickly
    - Complex problems with large amounts of data
3. What is a labeled training set?
    - A set of data in which the variable we would like our algorithm to predict has been measured/labelled for every point in this dataset.
4. What are the two most common supervised tasks?
    - Email spam detection
    - Optical character recognition
5. Can you name four common unsupervised tasks?
    - Anomaly detection
    - User base segmentation
    - Dimensionality reduction
    - Association rule learning
6. What type of Machine Learning algorithm would you use to allow a robot to walk in various unknown terrains?
    - Reinforcement learning
7. What type of algorithm would you use to segment your customers into multiple groups?
    - Unsupervised learning
8. Would you frame the problem of spam detection as a supervised learning problem or an unsupervised learning problem?
    - Supervised since the training set has labels.
9. What is an online learning system?
    - One that is able to learn form new data on the fly without needed to retrain with the whole dataset.
10. What is out-of-core learning?
    - Where the dataset is so large that it cannot be fit into memory. Online learning techniques can be used to train it in chunks that fit into memory
11. What type of learning algorithm relies on similarity measure to make predictions?
    - Instance based learning compares the prediction point with all points in the previous dataset
12. What is the difference between a model parameter and a learning algorithm's hyperparameter?
    - A model parameter is adjusted during the training process while a hyperparameter is fixed through the training process.
13. What do model-based learning algorithms search for? What is the most common strategy they use to succeed? How do they make predictions?
    - Model-based algorithms try to optimize a cost or fitness function. They usually use an iterative approach to adjust parameters until the optimization is complete. They then use the model with these parameters to make predictions on new data.
14. Can you name four of the main challenges in Machine Learning?
    - Not enough training data
    - Nonrepresentative training data
    - Poor quality data
    - Irrelevant features
15. If your model performs great on the taining data but generalizes poorly to new instances, what is happening? Can you name three possible solutions?
    - The model has likely overfitted the trainin data. Can collect more data, simplify the model, or use a regularization parameter.
16. What is a test set and why would you want to use it?
    - A test set is used to gauge the performance of the model on data that it did not see during training. This provides a better estimate of how the model will perform in the real world.
 