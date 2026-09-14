CXX			:= gcc

MSG_START	:= "Build Started"
MSG_END		:= "Build Complete"
MSG_CLEAN	:= "Cleaning up"

BUILD_DIR	:= ./bin


TARGET		:= ./bin/sampleapp.bin

SRC			:= main.c

all: build

build:
	mkdir -p ${BUILD_DIR}
	@echo ${MSG_START}
	${CXX} -o ${TARGET} ${SRC} -I.
	${CXX} -S ${TARGET} ${SRC} -I.
	@echo ${MSG_END}
	./${TARGET}

clean:
	@echo ${MSG_CLEAN}
	rm ${TARGET}