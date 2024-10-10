#!/bin/bash

# File 1: managed1-host-raihanarfi12.yml
output_file1="group_vars/managed1-host-raihanarfi12.yml"

# Start writing managed1 file
echo "list_user_ops_managed1:" > $output_file1

# Generate the ops[1-50] list for managed1
for i in {1..50}; do
  echo "  - ops$i" >> $output_file1
done

# Add separator for dev users in managed1
echo "" >> $output_file1
echo "list_user_dev_managed1:" >> $output_file1

# Generate the dev[1-50] list for managed1
for i in {1..50}; do
  echo "  - dev$i" >> $output_file1
done

# File 2: managed2-host-raihanarfi12.yml
output_file2="group_vars/managed2-host-raihanarfi12.yml"

# Start writing managed2 file
echo "list_user_ops_managed2:" > $output_file2

# Generate the ops[51-100] list for managed2
for i in {51..100}; do
  echo "  - ops$i" >> $output_file2
done

# Add separator for dev users in managed2
echo "" >> $output_file2
echo "list_user_dev_managed2:" >> $output_file2

# Generate the dev[51-100] list for managed2
for i in {51..100}; do
  echo "  - dev$i" >> $output_file2
done

# Notify the user
echo "YAML files created successfully:"
echo " - $output_file1"
echo " - $output_file2"
