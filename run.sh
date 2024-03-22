#This is the script to run all of the compilation commands
#To change permissions use: chmod u+x run.sh
#To run these commands: ./run.sh
bison -d gvlogo.y
flex gvlogo.l
gcc *.c -lfl -lSDL2 -lm
