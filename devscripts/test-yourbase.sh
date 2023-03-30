#!/bin/bash

# Only run in docker container
# Run initial test with nosetest and yourbase
echo "---------Running initial test------------"
/app/devscripts/run_tests.sh

# Edit some files
echo "---------Editing files------------"
#echo "print('Hello World')" >> youtube_dl/extractor/buzzfeed.py

#sed -i 's/assert(True)/assert(False)/g' youtube_dl/aes.py
#cat youtube_dl/aes.py

sed -i 's/assert(True)/assert(False)/g' test/test_verbose_output.py
echo "printing the file test/test/test_verbose_output.py"
cat test/test_verbose_output.py

# Run test again
echo "--------Running test again------------"
/app/devscripts/run_tests.sh
