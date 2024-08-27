#!/bin/bash

echo "------- Starting Script1 -------"

################

echo "Mild Demented"

cd MildDemented

counter=0
for file in *.jpg
do
	mv "$file" "temp_temp.jpg" -f
	mv "temp_temp.jpg" "mild_demented_$counter.jpg"
	((counter++))
done

cd ..

tput el1
tput cuu1

################

echo "Moderate Demented"

cd ModerateDemented

counter=0
for file in *.jpg
do
	mv "$file" "temp_temp.jpg" -f
	mv "temp_temp.jpg" "moderate_demented_$counter.jpg"
	((counter++))
done

cd ..

tput el1
tput cuu1

################

echo "Non Demented"

cd NonDemented

counter=0
for file in *.jpg
do
	mv "$file" "temp_temp.jpg" -f
	mv "temp_temp.jpg" "non_demented_$counter.jpg"
	((counter++))
done

cd ..

tput el1
tput cuu1

################

echo "Very Mild Demented"

cd VeryMildDemented

counter=0
for file in *.jpg
do
	mv "$file" "temp_temp.jpg" -f
	mv "temp_temp.jpg" "very_mild_demented_$counter.jpg"
	((counter++))
done

cd ..

tput el1
tput cuu1

################

echo "Done"

################

echo "------- End Script1 -------"