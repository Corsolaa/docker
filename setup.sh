#!/bin/bash

echo "Creating Network..."
docker network create infra-network || true

echo "Creating External Volumes..."
docker volume create n8n || true
docker volume create ollama || true
docker volume create superset_home || true

echo "All set! You can now run docker-compose in your folders."