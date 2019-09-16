  #!/usr/bin/env bash
# Test script for hello, to be executed by Travis CI
# Aftre provision and build

test_output=$(./hello)

# output of hello Gp progamm should be "hello"
if [ "${test_output}" == "hello" ]
then
	echo "OK : test is passed"
else
	echo "FAIL : test is failed"
	exit 1
fi