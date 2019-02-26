# arch-assignment2

This implementation is a proof of concept to illustrate recovery from certain component failures.

## Assumptions

We created the following assumptions to narrow our scope and efficiently using our resources in distinct separations of concerns.

* Our system will only run on one local machine, where each sensor, controller, and message manager are running on the same machine. Distributed capabilities were not considered in our implementation as we wanted this to be a proof of concept, rather than product ready code.
* Controller/Sensor failures require that the message manager is up and running.
* Message manger failures require that the console is up and running.

**Note** The system may have unexpected behavior if these assumptions are not met.

## How to run (on Mac OS)

1. Compile the java files by running `javac *.java`
2. Open terminal and start `rmiregistry` and wait for 10 seconds (**Note** This is a workaround to the original *EMStart.sh* script because some machines are unable to connect to rmiregistry using the script) 
3. Open a new terminal window and start the message manager by running `java MessageManager`
4. Open a new terminal window and run the environmental control system `./ECStart.sh`. This will also run the redundancy sensors and controllers.
5. Once the environmental control system starts, the system should be up and running, collecting, and displaying data.
