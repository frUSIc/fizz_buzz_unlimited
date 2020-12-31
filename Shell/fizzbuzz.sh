#!/bin/bash

: <<'EOF'
Run with ./fizzbuzz.sh
EOF

# Logic
function divisible () {
    i=$1
    if [ $(( i % 3 )) -eq 0 -a $(( i % 5 )) -eq 0 ]
    then
        echo 'fizzBuzz'
    elif [ $(( i % 3 )) -eq 0 ]
    then
        echo 'fizz'
    elif [ $(( i % 5 )) -eq 0 ]
    then
        echo 'Buzz'
    else
        echo $i
    fi
}

function main () {
    printf "Please enter max number: "
    read MAXNUM
    for ((i=1; i<=$MAXNUM; i++))
    do
        echo $( divisible $i)
    done
}

main
