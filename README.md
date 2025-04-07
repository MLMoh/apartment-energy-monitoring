![Architecture Diagram](apartment-energy-iot-architecture.png)

## Project Overview

This project implements a real-time, cost-effective, and serverless data pipeline for monitoring apartment energy consumption using AWS-native services. An IoT-enabled energy meter sends readings to AWS IoT Core, which routes the data to an AWS Lambda function. The Lambda function performs lightweight processing and streams the data into Amazon S3 via Kinesis Data Firehose for storage and analysis.

### Key Features
- Real-time data ingestion and processing
- Fully serverless and scalable architecture
- Cost-optimized using native AWS services
- Secure with encryption in transit and at rest


# apartment-energy-monitoring
IoT-based serverless data pipeline for monitoring apartment energy consumption using AWS services (IoT Core, Lambda, Firehose, S3).
