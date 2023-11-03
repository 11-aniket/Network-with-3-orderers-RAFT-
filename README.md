# BE_RESEARCH_HF - Hyperledger Fabric Research Repository

Welcome to the BE_RESEARCH_HF repository! This is a research project repository for Hyperledger Fabric. Please take a moment to read this README to understand how to work with this project.

## Branches

  **Important**: Do not push any changes to the master branch, as it is the foundation of the code.

  **Important**: Do not push sensitive information such as IDs, keys, or private variables. You can remove these using `./networkDown.sh` or add them in `.gitignore`

  **Important**: Please follow proper coding standards and maintain consistent file and folder naming to ensure code readability.

- **Master Branch**: The master branch serves as the base of the project, containing network configuration and Caliper connection details. To clone it, use the following command:

  ```shell
  git clone -b master https://github.com/Nilesh0711/BE_RESEARCH_HF.git
  ```

### Kafka, Raft, Solo Branches

- Create separate branches for Kafka, Raft, and Solo configurations.

### Test Network Branches

- For each test network and benchmark with Caliper reports, create new branches.
- Each branch must include network configurations and Caliper benchmark reports in PDF format.


## Chaincode

The chaincode of the project remains the same for all benchmarks.

## Caliper
 
- Write test scripts for all functions in your chaincode. In the base branch, I have only included test scripts for CreateAsset and ReadAsset. Expand your testing to cover all functions.

- Refer to the Hyperledger Caliper tutorials linked in the "Resources" section for a clear understanding of how to write benchmark scripts using Caliper.

- Before starting the Docker containers for Caliper, ensure that you include the crypto-config file in the network folder of Caliper. This is essential for configuring the network properly.


## Crypto Materials

- Cryptogen is used for generating cryptographic materials. The Certificate Authority (CA) is not used in this project.

## Resources

For a better understanding of Hyperledger Fabric and Hyperledger Caliper, you can check out the following resources:

- **Hyperledger Fabric Tutorial Playlist**:
 [Watch Here](https://youtube.com/playlist?list=PLSBNVhWU6KjW4qo1RlmR7cvvV8XIILub6)

- **Hyperledger Caliper Tutorials**:
 - [Part 1](https://youtu.be/my7kZXvgbBY?si=lrWrVknJ84QP6QDF)
 - [Part 2](https://youtu.be/ypF36RGaG1Q?si=nSjB2A3R4Te4Kvjw)

Please feel free to explore the repository and create branches for your specific use cases. If you have any questions or need assistance, don't hesitate to reach out to the project maintainers.

Happy researching and coding! 👩‍💻👨‍💻