# Provision GCP Bucket (Terraform Remote Backend) on GitLab CI/CD

## Configuration

* Download a GCP [service account JSON key file](https://cloud.google.com/iam/docs/creating-managing-service-account-keys) for an account with [permissions](https://cloud.google.com/storage/docs/buckets) to provision [buckets](https://cloud.google.com/storage/docs/buckets)

* Encode the contents of the file:

```
cat key-file.json | base64 
```

* Save the output to a [GitLab pipeline variable](https://docs.gitlab.com/ee/ci/variables/#for-a-group) called ```GOOGLE_CREDENTIALS_B64```

* Update the GCP project ID under ```terraform.tfvars```