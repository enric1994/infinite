#!/bin/bash

# Ensure the compressed_models directory exists
mkdir -p compressed_models

# Iterate over all .glb files in the models directory
for model in models/*.glb; 
do
  # Get the base name of the model file
  base_model=$(basename "$model")
  echo $base_model
  # Compress the model and save it to the compressed_models directory
  gltf-pipeline -i "$model" -o "compressed_models/$base_model" -d
done

echo "All models have been compressed and saved to the compressed_models directory."
