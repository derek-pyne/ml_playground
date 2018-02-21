1. Describe a business situation in which Hadoop would be a better choice for storing the data than a relational database and explain why (give at least three reasons)

Say we are a marketting analytics company specializing in online retailers. We plug into our clients websites and collect all of the clicks coming from all users. This is a high volume, semi-structured dataset where certain parameters are present for some clicks and not for others. We would like to run analysis on. Hadoop would be a great fit for this application because:
- This is a very large sparse dataset. Hadoops MapReduce structure will let us efficiently run parallel jobs across this dataset to compute the aggregates we need in our analytics.
- As our customers push us for quicker results, we will be able to scale horizontally to bring down the job time. Something that would be much more difficult with a relational database.
- This is a read-only application so the difficulties that come with a consistency when writing to a distributed datastore are not a concern for us.

2. Describe a business situation in which a relational database would be the better option and explain why (give at least three reasons)

Say we are an app that allows users to send videos to each other. The information stored for each user will involve login credentials, settings, and their friend list. This data is often changed by the user and needs to always be consistent. A relational database will be a good fit because:
- We have a large number of both read and writes in our application that must be immediately consistent. A relational database handles transactions to ensure that writes are immediately reflected in subsequent reads and conflicting writes are handled.
- The data is highly structured letting us easily develop a schema for it. This helps our developers organize the data and easily integrate it with our app (eg. can easily reflect database entities as objects in our backend services). Relational databases are also very mature allowing us to leverage an enormous library of tools.
- We have a large number of users but only a small amount of data per user. Relational databases are able to perform queries faster over this type of data compared to Hadoop that thrives more with large files.

3. Describe a business situation where MongoDB would a better choice than either and again give at least three reasons
We have a workplace app for finding a coworker with the closest matching skills for a given task. We collect resume, linkedin, documents, work samples and other resources from our internal systems for each user. We find the best matching coworker by matching search terms with all the documents we have for each coworker. MongoDB would be a better choice because:
- Our data contains many documents that have a deep hierarchical structure. The document-oriented style of MongoDB makes this tree structure explicit and easy to visualize.
- Each user has a wide array of different document types. With MongoDB we can have a different schema for each document if needed while still being able to easily search across all text in all documents tied to each user.
- We can index our data on attributes common to users allowing us to efficiently run these queries. For instance, indexes on names, emails, and desk locations let us quickly SELECT across our data.

4. What is the point in having and using Pig if we have Hive so can use SQL (again, three advantages)?
- Pig lets us easily write dataflow jobs perfect for ETL applications cutting down on developer time.
- Pig is procedural which easily let's us break apart the dataflow and insert our own custom functions, which can be cumbersome when limited to SQL
- With SQL we specify WHAT we want done and let the tool decide HOW best to execute this. Although Pig is procedural (meaning we specify HOW we want something done), it is still able to optimize the entire flow by building steps into a logical plan that isn't executed until we call for a DUMP or STORE