#!/bin/bash

read -p "This will create tiaRepo and visalRepo folders. Continue? (y/N): " confirm

if [[ "$confirm" =~ ^[Yy]$ ]]; then

  cd ..

  git clone git@github.com:ymedaghri/git-practices.git tiaRepo
  cd tiaRepo
  git config user.name "Tia"
  
  cd ..

  git clone git@github.com:ymedaghri/git-practices.git visalRepo
  cd visalRepo
  git config user.name "Visal"

  cd ..

  clear
  echo "Repositories created successfully."

else

  clear
  echo "Examples :"
  echo "----------"
  echo "echo \"mlapse-712\" > docker-compose-dev.txt"
  echo "echo \"mlapse-390\" > litellm.txt"
  echo "echo \"mlapse-410\" > question_extractions.txt"

fi
