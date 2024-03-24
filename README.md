# Lava Auto Commit

This repository contains a GitHub Actions workflow for automatically fetching data from multiple blockchain networks (Ethereum, NEAR, StarkNet, and Axelar) and committing the changes to the repository.

## Usage

### Get Started

To use this workflow, follow these steps:

1. **Use this template**: Click on the "Use this template" button on the GitHub repository page to create a new repository based on this template.

2. **Name your repository**: Give your new repository a name of your choice.

3. **Configure workflow**: After creating the repository, navigate to the Actions tab and click on "Set up a workflow yourself". Copy and paste the content of the `main.yml` file from this repository into the editor.

4. **Set user email and name**: Update the `GIT_USER_EMAIL` and `GIT_USER_NAME` environment variables in the workflow file (`main.yml`) to reflect your GitHub account details.

5. **Update RPC URLs**: Update the RPC URLs in each script file (`ethereum.sh`, `near.sh`, `starknet.sh`, and `axelar.sh`) with the corresponding URLs of your blockchain networks.

6. **Run the workflow**: The workflow is triggered automatically on a schedule (every 15-20 minutes) and can also be manually triggered from the GitHub UI.

### Manual Trigger

You can manually trigger the workflow from the GitHub UI by selecting the "Run workflow" option.

## Files

- **ethereum.sh**: Script to fetch data from the Ethereum network.
- **near.sh**: Script to fetch data from the NEAR network.
- **starknet.sh**: Script to fetch data from the StarkNet network.
- **axelar.sh**: Script to fetch data from the Axelar network.

## Workflow

The workflow consists of multiple jobs, each corresponding to a different blockchain network. The jobs are executed sequentially, with each job depending on the completion of the previous job.

- **ethereum_auto_commit**: Fetches data from the Ethereum network and commits the changes to the repository.
- **near_auto_commit**: Fetches data from the NEAR network and commits the changes to the repository.
- **starknet_auto_commit**: Fetches data from the StarkNet network and commits the changes to the repository.
- **axelar_auto_commit**: Fetches data from the Axelar network and commits the changes to the repository.
