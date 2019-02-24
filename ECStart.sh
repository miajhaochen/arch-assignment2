#!/bin/bash
# Environmental Control System start-up script
echo -n -e "\033]0;ECS CONSOLE\007"
echo "Starting TemperatureController"
java TemperatureController &
echo "Starting HumidityController"
java HumidityController &
echo "Starting TemperatureSensor"
java TemperatureSensor &
echo "Starting HumiditySensor"
java HumiditySensor &
echo "Starting ECSConsole"
java ECSConsole