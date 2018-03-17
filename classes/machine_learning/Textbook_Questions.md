# Chapter One: The Machine Learning Landscape
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
 
# Chapter 2: Training
1. What Linear Regression training algorithm can you use if you have a training set with millions of features?
    - Gradient descent algorithms work will for larger number of features and samples. If the number of samples if too large to fit in memory, batch or stochastic gradient descent can be used.
2. Suppose the features in your training set have very different scales. What algorithms might suffer from this, and how? What can you do about it?
    - Algorithms that use the euclidean distance between samples will suffer, such as linear regression with an RMSE cost function. They will overvalue fitting features with a larger scale. To avoid this, features can be scaled using a standard or min-max scaler.
3. Can Gradient Descent get stuck in a local minimum when training a Logistic Regression model?
    - No, this model is always globally convex so there are no local minima for the model to get stuck in.
4. Do all Gradient Descent algorithms lead to the same model provided you let them run long enough?
    - Almost. Batch and Stochastic Gradient Descent will finish with some variation around the global minima due to the variance caused by using subsets of the training data.
5. Suppose you use Batch Gradient Descent and you plot the validation error at every epoch. If you notice that the validation error consistently goes up, what is likely going on? How can you fix this?
    - Likely the model is oscillating unstabily due to a learning rate that is too high. Thi is likely the case if the training error is also rising. In this cae decrease the learning rate until the validation error decreases on most epochs (there will be some expected variation from the batch nature). However, if the training error is going down, then the model is likely overfitting and regularization parameters should be increased.
6. Is it a good idea to stop Mini-Batch Gradient Descent immediately when the validation error goes up?
    - No. There is some expected variance expected because of the batch sampling. It is good to continue training for another couple of epochs after the validation error goes up to ensure that it continues to go up and is not simply caused by noise.
