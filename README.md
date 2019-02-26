# arch-assignment2
## How to run (on Mac OS)

1. Compile the java files by running `javac *.java`
2. Open terminal and start `rmiregistry` and wait for 10 seconds (**Note** This is a workaround to the original *EMStart.sh* script because some machines are unable to connect to rmiregistry using the script) 
3. Open a new terminal window and start the message manager by running `java MessageManager`
4. Open a new terminal window and run the environmental control system `./ECStart.sh`. This will also run the redundancy sensors and controllers.
5. Once the environmental control system starts, the system should be up and running, collecting, and displaying data.
