# Exercise 4.1 — Log Archive and User Event Ledger

Curso: Optimizaciones y Desempeño — Cloud Deployment Automation

---

## Objetivo

Automatizar la capa de almacenamiento de una plataforma logística usando dos módulos Terraform reutilizables:

- `log-archive`: bucket S3 para archivo de logs.
- `user-events`: tabla DynamoDB para eventos de usuario.

---

## Arquitectura

```text
Root Module
├── modules/log-archive
│   └── S3 Bucket
│       ├── Versioning
│       ├── Lifecycle rule
│       ├── SSE-S3 encryption
│       └── SecureTransport policy
└── modules/user-events
    └── DynamoDB Table
        ├── PAY_PER_REQUEST
        ├── Composite key
        ├── GSI
        ├── TTL
        └── Server-side encryption
```
---

## Comandos
```bash
terraform init
terraform validate
terraform plan -var-file=terraform.tfvars
terraform apply -var-file=terraform.tfvars
```
Para destruir:

```bash
terraform destroy -var-file=terraform.tfvars
```
---

## Evidencia
### Terraform State List
```text
module.log_archive.data.aws_iam_policy_document.deny_insecure_transport
module.log_archive.aws_s3_bucket.this
module.log_archive.aws_s3_bucket_lifecycle_configuration.this
module.log_archive.aws_s3_bucket_policy.deny_insecure_transport
module.log_archive.aws_s3_bucket_server_side_encryption_configuration.this
module.log_archive.aws_s3_bucket_versioning.this
module.user_events.aws_dynamodb_table.this
```
### Terraform Outputs
```text
log_archive_bucket_arn = "arn:aws:s3:::sgsmith27-oyd-log-archive-dev"
log_archive_bucket_name = "sgsmith27-oyd-log-archive-dev"
user_events_table_arn = "arn:aws:dynamodb:us-west-2:577133972654:table/oyd-user-events-dev"
user_events_table_name = "oyd-user-events-dev"

```
---
## Conceptos aplicados
+ Terraform modules
+ S3 versioning
+ S3 lifecycle rules
+ SSE-S3 encryption
+ Bucket policies
+ SecureTransport enforcement
+ DynamoDB composite keys
+ DynamoDB Global Secondary Indexes
+ DynamoDB TTL
+ Server-side encryption
----

## Autor
Sergio Geovany García Smith
Carnet 25008130
----

