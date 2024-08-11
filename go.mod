module github.com/bazelbuild/remote-apis-sdks

go 1.21

replace github.com/bazelbuild/remote-apis => github.com/philwo/remote-apis v0.0.0-20240811100849-f6984257c0f1

require (
	cloud.google.com/go/longrunning v0.5.12
	github.com/bazelbuild/remote-apis v0.0.0-20240703191324-0d21f29acdb9
	github.com/golang/glog v1.2.2
	github.com/google/go-cmp v0.6.0
	github.com/google/uuid v1.6.0
	github.com/hectane/go-acl v0.0.0-20230122075934-ca0b05cb1adb
	github.com/klauspost/compress v1.17.9
	github.com/pkg/xattr v0.4.10
	golang.org/x/oauth2 v0.22.0
	golang.org/x/sync v0.8.0
	google.golang.org/api v0.191.0
	google.golang.org/genproto/googleapis/bytestream v0.0.0-20240808171019-573a1156607a
	google.golang.org/genproto/googleapis/rpc v0.0.0-20240808171019-573a1156607a
	google.golang.org/grpc v1.65.0
	google.golang.org/protobuf v1.34.2
)

require (
	cloud.google.com/go/compute/metadata v0.5.0 // indirect
	golang.org/x/net v0.28.0 // indirect
	golang.org/x/sys v0.24.0 // indirect
	golang.org/x/text v0.17.0 // indirect
	google.golang.org/genproto/googleapis/api v0.0.0-20240808171019-573a1156607a // indirect
)
