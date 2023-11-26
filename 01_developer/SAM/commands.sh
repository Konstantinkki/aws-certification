#create an S3 bucket
aws s3 mb s3://kos-code-sam2

#package cloudformation
aws cloudformation package --s3-bucket kos-code-sam2 --template-file template.yaml --output-template-file gen/template-generated.yaml
# sam package ...
# deploy ...
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM