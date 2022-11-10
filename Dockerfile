ARG YEAR=frc2022

FROM ubuntu:latest as build

ARG FRC_TOOLS_VERSION
ARG FRC_TOOLS_FILENAME=WPILib_Linux-$FRC_TOOLS_VERSION

ADD sw/$FRC_TOOLS_FILENAME.tar.gz /

RUN mkdir -p /artifacts && tar -xf /$FRC_TOOLS_FILENAME/$FRC_TOOLS_FILENAME-artifacts.tar.gz -C /artifacts


FROM ubuntu:latest

ARG YEAR

RUN apt-get update && apt-get -y install unzip less git ssh

RUN mkdir /root/$YEAR

COPY --from=build /artifacts /root/$YEAR

ENV JAVA_HOME /root/$YEAR/jdk

ADD sw/vendor/maven /root/$YEAR
ADD sw/vendor/vendordeps /root/$YEAR

WORKDIR /root/$YEAR

CMD ["/bin/bash"]
