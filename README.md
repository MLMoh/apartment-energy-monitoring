![Architecture Diagram](apartment-energy-iot-architecture.png)

## Project Overview

This project implements a real-time, cost-effective, and serverless data pipeline for monitoring apartment energy consumption using AWS-native services. An IoT-enabled energy meter sends readings to AWS IoT Core, which routes the data to an AWS Lambda function. The Lambda function performs lightweight processing and streams the data into Amazon S3 via Kinesis Data Firehose for storage and analysis.

### Key Features
- Real-time data ingestion and processing
- Fully serverless and scalable architecture
- Cost-optimized using native AWS services
- Secure with encryption in transit and at rest


## Service Choices

- **AWS IoT Core**  
  Chosen for secure, scalable ingestion of telemetry data from the energy meter. Supports MQTT for low-latency message delivery.

- **AWS Lambda**  
  Enables serverless compute for lightweight, event-driven processing. Reduces infrastructure management overhead and scales automatically.

- **Amazon Kinesis Data Firehose**  
  Handles real-time data delivery with built-in support for S3, minimizing operational complexity and providing near real-time delivery guarantees.

- **Amazon S3**  
  Used for durable, cost-effective object storage. S3 supports high availability and lifecycle policies for archival and data retention.

- **AWS IAM**  
  Ensures secure and restricted access to services. Roles and policies enforce least-privilege permissions for all components.

- **CloudWatch**  
  Used for monitoring Lambda execution logs, debugging, and operational visibility.


## Security & Cost Considerations

- **Encryption**  
  All data is encrypted in transit (using TLS via MQTT) and at rest (via S3-managed encryption and IAM roles).

- **IAM Roles**  
  Fine-grained permissions restrict access to only required resources. Lambda has permission to write to Firehose, and Firehose has permission to write to S3.

- **Serverless Cost Efficiency**  
  No need to provision EC2 instances or manage servers. Costs are based on usage:
  - Lambda charges per execution time.
  - Firehose charges per data volume ingested.
  - S3 charges based on storage used.

- **Scalability**  
  Automatically handles varying data volumes without manual intervention or provisioning limits.


## Terraform Deployment Instructions

### Prerequisites
- Terraform installed (v1.0+)
- AWS CLI configured with appropriate credentials and region
- IAM permissions to create IoT, Lambda, Firehose, and S3 resources

### Steps

1. **Clone the repository**
   ```bash
   git clone https://github.com/MLMoh/apartment-energy-monitoring.git
   cd apartment-energy-monitoring

2. **Initialize Terraform**

    ```bash
    terraform init
    ```

3. **Preview the infrastructure**

    ```bash
    terraform plan
    ```

4. **Deploy the infrastructure**

    ```bash
    terraform apply
    ```

5. **Destroy resources when done**

    ```bash
    terraform destroy
    ```


# apartment-energy-monitoring
IoT-based serverless data pipeline for monitoring apartment energy consumption using AWS services (IoT Core, Lambda, Firehose, S3).
