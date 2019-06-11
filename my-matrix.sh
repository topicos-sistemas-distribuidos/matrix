#!/bin/bash

# test the hadoop cluster by running wordcount
mvn "-Dmyproperty=MatrixMultiply" clean && mvn compile "-Dmyproperty=MatrixMultiply" && mvn package "-Dmyproperty=MatrixMultiply"

# create input files 
mkdir input$1
echo "My MatrixMultiply - Try $1"
cp /root/matrix/input/* input$1

# create input directory on HDFS
hadoop fs -mkdir -p input$1

# put input files to HDFS
hdfs dfs -put ./input$1/* input$1

# run wordcount 
hadoop jar /root/matrix/target/matrix-1.0.0.jar input$1 output$1

# print the output of wordcount
echo -e "\nMatrixMultiply output:"
hdfs dfs -cat output$1/part-r-00000
