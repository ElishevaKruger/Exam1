# Convertor App

This application converts one or more images into a single PDF file.

## How to Build the Docker Image

To build the Docker image, run the following command:

```bash
docker build -t convertor-app .

# Convertor App

## Usage

To run the container and create a PDF from images in the `images` directory:

```bash
docker run --rm \
  -v $(pwd)/images:/app/images \
  -v $(pwd)/output:/app/output \
  -e PDF_NAME=my_custom_output \
  convertor-app /app/images

