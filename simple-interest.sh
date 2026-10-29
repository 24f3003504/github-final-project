#!/bin/bash
# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100

echo "-------------------------------------"
echo "      Simple Interest Calculator     "
echo "-------------------------------------"

read -p "Enter the principal amount (P): " p
read -p "Enter the annual interest rate in % (R): " r
read -p "Enter the time period in years (T): " t

# Calculation using bc for floating-point support
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc)
total=$(echo "scale=2; $p + $interest" | bc)

echo "-------------------------------------"
echo "Simple Interest: $interest"
echo "Total Amount:    $total"
echo "-------------------------------------"
