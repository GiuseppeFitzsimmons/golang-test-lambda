GOARCH=amd64 GOOS=linux go build -o golanglambda/golangtest ./golangtest.go
aws cloudformation package --template-file template.yaml --output-template-file packaged.yaml --s3-bucket wwdd-build-bucket-us-east-1
aws cloudformation deploy --template-file packaged.yaml --stack-name golangtest  --region us-east-1 --capabilities CAPABILITY_NAMED_IAM CAPABILITY_AUTO_EXPAND --force-upload