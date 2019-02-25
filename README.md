# arch-assignment2
## How to run (on Mac OS)

1. Clone the master branch found here:
2. Go to the source folder and compile the applications by typing: javac \*.java, before that make sure you: rm \*.class
3. Open terminal and start ‘rmiregistry’ and wait for 10 seconds (this is to ensure that rmiregistry is set up for connections on slower machines)
4. Open a new terminal window and start the message manager (java MessageManager)
5. Open a new terminal window and run the environmental control system (./ECStart). This will run the redundancy sensors and controllers.
6. Once the environmental control system starts, the system should be up and running, collecting, and displaying data.
