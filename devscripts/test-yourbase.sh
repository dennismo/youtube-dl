#!/bin/bash

# Only run in docker container
# Run initial test with nosetest and yourbase
echo "---------Running initial test------------"
/app/devscripts/run_tests.sh

# Edit some files
#echo "---------Editing files------------"
#echo "print('Hello World')" >> youtube_dl/extractor/buzzfeed.py

sed -i 's/assert(True)/assert(False)/g' youtube_dl/utils.py
echo "printing the file youtube_dl/utils.py"
cat youtube_dl/utils.py

# Run test again
echo "--------Running test again------------"
/app/devscripts/run_tests.sh
