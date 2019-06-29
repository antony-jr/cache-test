#!/usr/bin/env bash

if [ "$JOB" == "Job1" ]
	then
		gcc -o job1 job1.c
		sudo cp job1 "$CACHED_DIR/job1"
fi

if [ "$JOB" == "Job2" ]
	then
		gcc -o job2 job2.c
		sudo cp job2 "$CACHED_DIR/job2"
fi

if [ "$JOB" == "UseJobs" ]
	then
		sudo cp "$CACHED_DIR/job1" job1
		chmod +x job1
		sudo cp "$CACHED_DIR/job2" job2
		chomd +x job2

		./job1
		./job2
fi
