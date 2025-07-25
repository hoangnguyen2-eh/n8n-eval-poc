# n8n-eval-poc

This project is a proof-of-concept environment for running [n8n](https://n8n.io/) workflows to evaluate skyvern new prompt , with persistent data storage and evaluation datasets.

## Project Structure

- **data/**  
  Contains evaluation datasets in Excel format:
  - `dataset_eval.xlsx`: The main evaluation dataset.
  - `dataset_eval_processed.xlsx`: A processed version of the evaluation dataset.

- **n8n-data/**  
  Persistent storage for n8n, including:
  - `database.sqlite`: n8n's main database (SQLite).
  - `n8nEventLog-*.log`: Event logs generated by n8n.
  - `config`: Configuration file for n8n.
  - `binaryData/`, `data/`, `git/`, `ssh/`: Subdirectories for n8n's internal use.

- **setup.sh**  
  Shell script to start the n8n container with the correct volume mounts for persistent data and dataset access.

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/) installed on your system.

### Setup

To start the n8n environment with persistent storage and access to the evaluation datasets, run:

```sh
bash setup.sh
```

This will:

- Start an n8n container in detached mode.
- Expose n8n on port 5678.
- Mount `n8n-data/` as the persistent n8n data directory.
- Mount `data/` as a shared directory for evaluation datasets.

### Accessing n8n

Once the container is running, access the n8n editor at:  
[http://localhost:5678](http://localhost:5678)

## Data & Persistence

- All workflow data, credentials, and logs are stored in `n8n-data/` and will persist across container restarts.
- Evaluation datasets are available in the `data/` directory and are accessible from within the n8n container.

## Notes

- To stop or remove the container, use standard Docker commands:
  ```sh
  docker stop n8n
  docker rm n8n
  ```
- You can add or update datasets in the `data/` directory as needed.


The pipeline: (Will have to add key for OpenAI and skyvern in order to work)
<img width="1600" height="454" alt="image" src="https://github.com/user-attachments/assets/ca836a0b-6e87-4401-b6c0-6276f7313ac5" />


