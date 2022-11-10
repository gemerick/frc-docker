#!/bin/sh

wpilib=2022.4.1
ctrePath=5.21.3.0
ctreZip=5.21.3
# max=1.4.0
rev=2022.1.1

mkdir -p sw
cd sw


# https://wpilib.screenstepslive.com/s/currentCS/m/cpp/l/1027500-installing-c-and-java-development-tools-for-frc
# https://github.com/wpilibsuite/vscode-wpilib/releases
wget -q https://github.com/wpilibsuite/allwpilib/releases/download/v${wpilib}/WPILib_Linux-${wpilib}.tar.gz

#https://wpilib.screenstepslive.com/s/currentCS/m/cpp/l/1035723-3rd-party-libraries
# http://www.ctr-electronics.com/control-system/hro.html#product_tabs_technical_resources
wget -q https://github.com/CrossTheRoadElec/Phoenix-Releases/releases/download/v${ctrePath}/CTRE_Phoenix_FRC_Linux_${ctreZip}.zip
# wget https://github.com/CrossTheRoadElec/Phoenix-Releases/releases/download/Phoenix_v${ctrePath}/CTRE_Phoenix_FRC_nonWindows_${ctreZip}.zip

#http://www.revrobotics.com/sparkmax-software/
# https://docs.revrobotics.com/sparkmax/software-resources/spark-max-api-information
# wget http://www.revrobotics.com/content/sw/max/sdk/SPARK-MAX-SDK-v${max}.zip -O SPARK-MAX-SDK-v${max}.zip
wget -q https://github.com/REVrobotics/REV-Software-Binaries/releases/download/revlib-${rev}/REVLib-offline-v${rev}.zip

mkdir vendor
cd vendor
unzip -o ../CTRE_Phoenix_FRC_Linux_${ctreZip}.zip

unzip -o ../REVLib-offline-v${rev}.zip

cd ..

#https://github.com/wpilibsuite/GradleRIO
#https://wpilib.screenstepslive.com/s/currentCS/m/getting_started/l/480793-offline-installation-preparation