#!/bin/bash
# Environmental Control System start-up script
echo -n -e "\033]0;ECS CONSOLE\007"
echo "Starting TemperatureController 0"
java TemperatureController 0 &
echo "Starting HumidityController 0"
java HumidityController 0 &
echo "Starting TemperatureSensor"
java TemperatureSensor &
echo "Starting HumiditySensor"
java HumiditySensor &

# start redundant sensors and controllers
sleep 5
echo "Starting TemperatureController 1"
java TemperatureController 1 &
sleep 5
echo "Starting HumidityController 1"
java HumidityController 1 &

echo "Starting ECSConsole"
java ECSConsole
