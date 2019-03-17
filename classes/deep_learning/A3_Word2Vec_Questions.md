# Word2Vec with Tensorflow
Author: Derek Pyne

#### Question 1: Increase the skip window.  Looking at the training error and the closest words, does the model seem to get better or worse? Explain why. (3 marks)

Increasing the `skip_window` from 1 to 3 increased the training error by 9% during the final step (from 4.7 to 5.1). However, both models still seem only partially appropriate when looking at the closest words. 

For instance, both models seem to have grouped numbers together:

**Base Model**
`Nearest to five: four, three, six, seven, eight, two, nine, zero,`

**Larger Skip Window**
`Nearest to three: four, five, six, seven, eight, two, zero, nine,`

Yet still struggle with more complicated concepts:

**Base Model**
`Nearest to people: buckner, showtime, men, circ, apc, gb, cebus, anchors,`

**Larger Skip Window**
`Nearest to people: and, zero, abet, agouti, aveiro, concerned, their, circ,`

It is difficult to judge here if either model is better or worse.

A larger `skip_window` should allow the model to learn more complicated relationship. However, adding this increase capability to the model will require longer training times so that more data can be run through the model (it will take longer to converge). In this case, the larger `skip_window` model was likely not trained for long enough to see if it will eventually plateau at a lower error then the base model.

#### Question 2: Research and explain NCE loss. (3 marks)

A traditional neural probabilistic model would be trained using the maximum likelihood principle. This would involve predicting a probability for each word in the vocabulary and normalizing the distribution with a softmax function. However, for a large vocabulary, this becomes extremely computationally expensive.

Noise contrastive estimation lowers the computational requirements by transforming this multi-class classification into a binary classification. NCE changes the optimization from trying to predict the next word in a sequence, to instead classifying whether a given pair of words are good or bad together. It does this by using pairs of words found in the same context as positive examples, and by fabricating pairs using noise words as negative examples. The model is then trained to differentiate these noise examples from the true context pair examples.

#### Question 3: Why replace rare words with UNK rather than keeping them? (2 marks)

Rare words are replaced with a common symbol to lower the size of our vocabulary. This is essentially cutting of the long tail of our word distribution and grouping these words together in a single symbol. 

A lower vocabulary will help decrease training time and stop the model from attempting to fit rare words. This is good since there is too little data for these rare words for us to reasonable expect our model to build an understanding of them.

#### Question 4: If you run the model more than once the t-SNE plot looks different each time.  Why? (2 marks)

t-SNE is a stochastic approach and will thus produce a different result everytime it is ran. The goal of t-SNE is to transform a higher dimensional space into a 2 or 3 dimensional space where observations in this lower dimensional space are clustered by their proximity in the higher dimensional spaces. In other words, more similar observations will be closer together in the t-SNE plot, but it is random where they will exactly be located.

#### Question 5: What happens to accuracy if you set vocabulary_size to 500?  Explain why. (3 marks)

Decreasing the vocabulary size to 500 lowered the training error by 24% (from 4.7 to 3.6). We can also see it start to understand some more complicated concepts:

`Nearest to states: countries, UNK, european, members, council, modern, others, church,`

Lowering the vocabulary size decreases the capability of the model. Since in this example setup we are only training our model for a limited amount of time, with a limited dataset, this lower capability model is able to converge much quicker. With more data and training time we would expect this model to plateau at a higher error then our other models. 

#### Question 6: You may see antonyms like “less” and “more” next to each other in the t-SNE.  How does that make sense rather than them being at opposite ends of the plot? (2 marks)
Our Word2Vec model is built around the hypothesis that words that appear in similar contexts have similar meanings. From this point of view, 'less' and 'more' are very similar in many ways: they are used to compare two things, and they can both be used as pronouns or adverbs. The concept of opposites is then completely lost on the Word2Vec model. This concept which us humans can easily pull apart, completely confuses the model.

Given this limitation, seeing antonyms close together in our Word2Vec model, given its assumptions, is actually a good indicator that it is training well.