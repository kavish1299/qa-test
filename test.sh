#!/bin/bash

# Check if Maven is installed
if ! command -v mvn &> /dev/null
then
    echo "Maven is not installed. Please install Maven and try again."
    exit 1
fi

# Navigate to the project directory
cd qa-test

# Run Maven clean
echo "Running Maven clean..."
mvn clean

if [ $? -ne 0 ]; then
    echo "Maven clean failed. Exiting."
    exit 1
fi

# Run Maven install
echo "Running Maven install..."
mvn install

if [ $? -ne 0 ]; then
    echo "Maven install failed. Exiting."
    exit 1
fi

# Run the specific test
echo "Running the specified test..."
mvn test -Dtest=com.example.HelloWorldTest

if [ $? -ne 0 ]; then
    echo "Maven test failed. Exiting."
    exit 1
fi

echo "Maven build and test completed successfully."
