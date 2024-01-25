# Practical MLOps book exercises
https://paiml.com/docs/home/books/practical-mlops/

<p align="center">
  <img src="https://learning.oreilly.com/library/cover/9781098103002/250w/" alt="Descrição da imagem">
</p>

## Chapter 1

### Exercises

* Create a new GitHub repository with necessary Python scaffolding using a Make file, linting, and testing. Then, perform additional steps such as code formatting in your Makefile.
* Using GitHub Actions, test a GitHub project with two or more Python versions.
* Using a cloud native build server (AWS Code Build, GCP CloudBuild, or Azure DevOps Pipelines), perform continuous integration for your project.
* Containerize a GitHub project by integrating a Dockerfile and automatically registering new containers to a Container Registry.
* Create a simple load test for your application using a load test framework such as locust or loader io and automatically run this test when you push changes to a staging branch.

### Critical Thinking Discussion Questions

> What problems does a continuous integration (CI) system solve?

A Continuous Integration (CI) system solves several problems:

1. **Integration Conflicts**: By frequently merging code changes into a shared repository, CI reduces integration conflicts and makes them easier to handle.
2. **Early Bug Detection**: Regularly building and testing code helps in identifying and fixing bugs early in the development cycle.
3. **Automated Testing**: CI automates the testing process, ensuring that new code changes do not break existing functionality.
4. **Faster Release Cycles**: With automated testing and early bug detection, CI enables faster and more reliable release cycles.
5. **Increased Visibility and Communication**: Continuous integration fosters better communication among team members and increases visibility into the development process.

> Why is a CI system an essential part of both a SaaS software product and an ML system?

CI systems are crucial for both SaaS software products and ML systems because:

1. **Rapid Development and Deployment**: In the fast-paced SaaS environment, CI enables quick iteration and deployment of new features and fixes.
2. **Quality Assurance**: For ML systems, CI ensures that changes in models or algorithms do not degrade performance or accuracy.
3. **Experimentation and Adaptability**: Both fields require constant experimentation, and CI allows for safely testing and rolling out changes.
4. **Scalability**: CI supports scalability by automating the build and deployment processes, a key requirement for SaaS and ML systems.
5. **Compliance and Security**: Regular integration and testing can help in adhering to compliance standards and maintaining security, especially important in SaaS and ML applications.

> Why are cloud platforms the ideal target for analytics applications? How do data engineering and DataOps assist in building cloud-based analytics applications?

Cloud platforms are ideal for analytics applications due to:

1. **Scalability**: Cloud platforms can scale resources as per the analytics workload.
2. **Cost-Effectiveness**: They offer a pay-as-you-go model, reducing upfront investment.
3. **High Availability**: Cloud platforms provide robust and reliable infrastructure.
4. **Diverse Toolsets**: They offer a wide range of analytics and machine learning tools.

Data Engineering and DataOps play a crucial role:

1. **Data Preparation**: They help in cleaning, transforming, and structuring data for analysis.
2. **Pipeline Development**: Building robust data pipelines for efficient data flow.
3. **Automation**: Automating data workflows to ensure timely data availability.
4. **Performance Optimization**: They optimize data storage and processing for cost and efficiency.

> How does deep learning benefit from the cloud? Is deep learning feasible without cloud computing?

Deep learning benefits significantly from cloud computing:

1. **Resource Intensive**: Deep learning requires substantial computational resources, which cloud platforms readily provide.
2. **Flexibility**: The cloud offers flexibility to choose different types and amounts of resources as needed.
3. **Access to Advanced Tools**: Cloud platforms provide access to the latest deep learning frameworks and tools.

Deep learning without cloud computing:

1. **Feasible but Challenging**: It's possible but may require significant investment in hardware and infrastructure.
2. **Limited Scalability**: Scaling up resources without the cloud can be difficult and expensive.

> Explain what MLOps is and how it can enhance a machine learning engineering project.

MLOps, or Machine Learning Operations, refers to:
1. **Best Practices**: Incorporating best practices in software development into the machine learning lifecycle.
2. **Automation**: Automating the process of training, validating, deploying, and monitoring ML models.
3. **Continuous Integration and Delivery**: Applying CI/CD principles to ML to ensure regular and reliable deployment of models.
4. **Collaboration**: Facilitating better collaboration between data scientists, engineers, and operations teams.
5. **Enhancement**: MLOps enhances ML projects by improving model quality, speeding up deployment, and ensuring more reliable and efficient operations.