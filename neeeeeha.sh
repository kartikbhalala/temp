#!/bin/bash



# Script Name: tobacco_nation



# Check for exactly 3 arguments

if [ "$#" -ne 3 ]; then

    echo "Usage: tobacco_nation 26618281.csv <year | country code> <Male | Female>"

    exit 1

fi



# Assign arguments to variables

DATA_FILE="$1"

SEARCH_TERM="$2"

GENDER="$3"



# Check if the data file exists and is not empty

if [ ! -s "$DATA_FILE" ]; then

    echo "The named input file $DATA_FILE does not exist or has zero length"

    exit 1

fi



# Determine if the second argument is a year or a country code

# Assuming country codes are always three letters (and years are not)

if [[ $SEARCH_TERM =~ ^[0-9]{4}$ ]]; then

    # It's a year

    MODE="year"

elif [[ $SEARCH_TERM =~ ^[A-Za-z]{3}$ ]]; then

    # It's a country code

    MODE="country"

else

    echo "Invalid search term: $SEARCH_TERM. Please provide a valid year or country code."

    exit 1

fi



# Convert gender to the format used in the file

if [ "$GENDER" == "Male" ]; then

    GENDER="Male"

elif [ "$GENDER" == "Female" ]; then

    GENDER="Female"

else

    echo "Invalid gender: $GENDER. Please specify Male or Female."

    exit 1

fi



# Process the file based on the mode

if [ "$MODE" == "country" ]; then

 

 	full_line=$(grep "$SEARCH_TERM" "$DATA_FILE" | grep "$GENDER" | LC_ALL=C sort -t, -k7rn | head -1)

 	if [ -n "$full_line" ]; then



    		country_name=$(echo "$full_line" | cut -d, -f4)

    		median_percentage=$(echo "$full_line" | cut -d, -f7)

    		year=$(echo "$full_line" | cut -d, -f5)

    		

    		echo "The global maximum percentage of tobacco users for $country_name ($SEARCH_TERM) was $median_percentage in $year"

    	else

    		echo "No data found for $2 and $3"

 	fi

 	

elif [ "$MODE" == "year" ]; then

 	full_line=$(grep "$SEARCH_TERM" "$DATA_FILE" | grep "$GENDER" | LC_ALL=C sort -t, -k7rn | head -1)

	 	if [ -n "$full_line" ]; then

			country_code=$(echo "$full_line" | cut -d, -f3)

	    		country_name=$(echo "$full_line" | cut -d, -f4)

	    		median_percentage=$(echo "$full_line" | cut -d, -f7)

	    		

	    		echo "The global maximum percentage of $3 tobacco users in $2 is predicted to be in $country_name ($country_code) at $median_percentage"

	    	else

	    		echo "No data found for $2 and $3"

	 	fi

fi