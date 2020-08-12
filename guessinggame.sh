#!/usr/bin/env bash
#File: guessinggame.sh
#Alwin Solanky

function Guess {
  if [[ $1 -gt $2 ]]
  then
    clear
    echo "Too HIGH Please Try again."
  elif [[ $1 -lt $2 ]]; then
    clear
    echo "Too LOW Please Try again"
  elif [[ $1 -eq $2 ]]; then
    echo "CORRECT"
    let flag=1
  else
    echo "Please Try again"
  fi
}

flag=0
clear
while [[ $flag -eq 0 ]]
do
  echo "Try to Guesshow many files there are:"
  read response
  count=$(ls | wc -l)
  Guess $response $count
done
