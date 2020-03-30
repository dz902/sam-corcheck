
aws dynamodb create-table \
	--endpoint-url http://localhost:8800 \
	--table-name SampleTable \
	--key-schema "$(cat keys.json)" \
	--attribute-definitions "$(cat schema.json)" \
	--provisioned-throughput=ReadCapacityUnits=1,WriteCapacityUnits=1 