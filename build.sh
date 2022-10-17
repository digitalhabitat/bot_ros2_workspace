#!/bin/bash
set -e

# Set the default build type
BUILD_TYPE=RelWithDebInfo
colcon build \
        --merge-install \
        --symlink-install \
        --packages-select roboclaw \
        --executor sequential \
        --continue-on-error \
        --executor sequential \
        --cmake-args "-DCMAKE_BUILD_TYPE=$BUILD_TYPE" "-DCMAKE_EXPORT_COMPILE_COMMANDS=On" \
        -Wall -Wextra -Wpedantic
