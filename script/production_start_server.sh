#!/bin/bash

set -x

thin stop
thin -d -p 3220 -e production start
