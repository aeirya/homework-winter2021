#!/bin/bash

pids=( )

# define cleanup function
cleanup() {
  for pid in "${pids[@]}"; do
    kill -0 "$pid" && kill "$pid" # kill process only if it's still running
  done
}

# and set that function to run before we exit, or specifically when we get a SIGTERM
trap cleanup EXIT TERM

python3 main.py root1 & pids+=( "$!" )
python3 main.py root2 & pids+=( "$!" )
python3 main.py root3 & pids+=( "$!" )

wait # sleep until all background processes have exited, or a trap fires


