# start container
docker run -d --name n8n -p 5678:5678 -v n8n_data:/home/node/.n8n -v $(pwd)/data:/home/data n8nio/n8n