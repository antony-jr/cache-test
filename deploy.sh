#!/usr/bin/env bash
cp "$HOME/dist/job1" job1
chmod +x job1
cp "$HOME/dist/job2" job2
chmod +x job2
./job1
./job2

