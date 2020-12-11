#!/bin/bash

killall -q polybar

polybar main --config=~/.config/polybar/config.ini
