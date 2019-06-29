#!/usr/bin/env bash

if [ "$JOB" == "Job1" ]
        then
                gcc -o job1 job1.c
                eval "cp job1 $HOME/dist/job1"
fi

if [ "$JOB" == "Job2" ]
        then
                gcc -o job2 job2.c
                cp job2 "$HOME/dist/job2"
fi

if [ "$JOB" == "UseJobs" ]
        then
                cp "$HOME/dist/job1" job1
                chmod +x job1
                cp "$HOME/dist/job2" job2
                chomd +x job2

                ./job1
                ./job2
fi

