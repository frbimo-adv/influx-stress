
all: build

build:
	go build github.com/frbimo-adv/influx-stress/cmd/influx-stress

linux:
	CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-s" github.com/frbimo-adv/influx-stress/cmd/influx-stress
