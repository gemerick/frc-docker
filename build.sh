#!/bin/sh

docker build --no-cache -t frc2022 --build-arg FRC_TOOLS_VERSION=2022.4.1 .
