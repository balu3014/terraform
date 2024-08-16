+---------------------+          +---------------------+
|      Local State    |          |    Remote State     |
| (terraform.tfstate) |          | (e.g., S3 bucket)   |
+---------------------+          +---------------------+
          |                              |
          |                              |
          V                              V
+------------------+           +-------------------+
| Terraform CLI    |           | Terraform CLI     |
| (Local File Op)  |           | (Remote Backend)  |
+------------------+           +-------------------+
          |                              |
          |                              |
          V                              V
+------------------+           +-------------------+
|    Infrastructure|           |    Infrastructure |
| (Local Management)|           | (Remote Management)|
+------------------+           +-------------------+



