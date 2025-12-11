generate:
	rm -rf gen/go
	mkdir -p gen/go

	protoc --proto_path=proto \
	       --go_out=gen/go --go_opt=paths=source_relative \
	       --go-grpc_out=gen/go --go-grpc_opt=paths=source_relative \
	       proto/auth/auth.proto \
		   proto/games/games.proto \
		   proto/social/social.proto

	go mod tidy