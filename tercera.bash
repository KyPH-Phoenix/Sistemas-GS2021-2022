#!/bin/bash

ls -l $1 | tail -n +2 | grep -E "^-\w{2}x"
