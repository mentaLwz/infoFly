.PHONY: build

SERVICE := main
CUR_PWD := $(shell pwd)

DEMO_PATH := $(CUR_PWD)
DEMO_BIN := $(CUR_PWD)/infoFly

AUTHOR := $(shell git log --pretty=format:"%an"|head -n 1)
VERSION := $(shell git rev-list HEAD | head -1)
BUILD_INFO := $(shell git log --pretty=format:"%s" | head -1)
BUILD_DATE := $(shell date +%Y-%m-%d\ %H:%M:%S)

export GO111MODULE=on

LD_FLAGS = '-X "$(SERVICE).Version=$(VERSION)" -X "$(SERVICE).Author=$(AUTHOR)" -X "$(SERVICE).BuildInfo=$(BUILD_INFO)" -X "$(SERVICE).BuildDate=$(BUILD_DATE)" '

default: build

build:
	go build -ldflags $(LD_FLAGS) -o $(DEMO_BIN) $(DEMO_PATH)/main.go

clean:
	rm $(DEMO_BIN)




