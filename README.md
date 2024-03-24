# Lava Auto Commit

This repository contains a GitHub Actions workflow for automatically fetching data from multiple blockchain networks (Ethereum, NEAR, StarkNet, and Axelar) and committing the changes to the repository.

## Usage

### Configuration

Before running the workflow, make sure to configure the following parameters:

1. **User Email and Name**: Update the `user.email` and `user.name` in `main.yml` to reflect your GitHub account details.

2. **RPC URLs**: Update the RPC URLs in each script file (`ethereum.sh`, `near.sh`, `starknet.sh`, and `axelar.sh`) with the corresponding URLs of your blockchain networks.

### Execution

The workflow is triggered automatically on a schedule (every 10 minutes) and can also be manually triggered from the GitHub UI.

1. **Automatic Trigger**: The workflow is automatically triggered based on the schedule defined in the workflow file (`main.yml`). It fetches data from each blockchain network and commits the changes to the repository.

2. **Manual Trigger**: You can manually trigger the workflow from the GitHub UI by selecting the "Run workflow" option.

### Files

- **ethereum.sh**: Script to fetch data from the Ethereum network.
- **near.sh**: Script to fetch data from the NEAR network.
- **starknet.sh**: Script to fetch data from the StarkNet network.
- **axelar.sh**: Script to fetch data from the Axelar network.

### Workflow

The workflow consists of multiple jobs, each corresponding to a different blockchain network. The jobs are executed sequentially, with each job depending on the completion of the previous job.

- **ethereum_auto_commit**: Fetches data from the Ethereum network and commits the changes to the repository.
- **near_auto_commit**: Fetches data from the NEAR network and commits the changes to the repository.
- **starknet_auto_commit**: Fetches data from the StarkNet network and commits the changes to the repository.
- **axelar_auto_commit**: Fetches data from the Axelar network and commits the changes to the repository.