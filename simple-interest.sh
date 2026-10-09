#!/bin/bash

read -r -p "Enter principal amount: " principal
read -r -p "Enter annual interest rate (%): " rate
read -r -p "Enter time period in years: " time

interest=$(awk -v p="$principal" -v r="$rate" -v t="$time" 'BEGIN { printf "%.2f", p * r * t / 100 }')

echo "Simple interest: $interest"
