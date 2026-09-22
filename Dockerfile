# Use AWS Lambda Python 3.12 base image for x86_64 (not arm64) — AL2023-based, fewer inherited CVEs than the AL2-based 3.9 image
FROM --platform=linux/amd64 public.ecr.aws/lambda/python:3.12

# Set working directory to /var/task (AWS Lambda default)
WORKDIR /var/task

# Copy application files into the container
COPY lambda_function.py .
COPY requirements.txt .


# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt


# Set the entry point and handler correctly
ENTRYPOINT ["/var/lang/bin/python3.12", "-m", "awslambdaric"]
CMD ["lambda_function.lambda_handler"]

#running test 2 - 2026-09-22


#running new test for test-run



## test run for screen recording

#this is a test for this screen recording
