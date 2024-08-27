#!/bin/bash

echo "------- Starting Script3 -------"

################

declare -A printed_dimensions  # Array associativo per memorizzare il conteggio per ciascuna dimensone delle immagini

# Trova tutti i file JPEG nella cartella corrente e nelle sotto-cartelle
while IFS= read -r -d '' file
do
    # Ottieni le dimensioni dell'immagine utilizzando il comando identify di ImageMagick
    dimensions=$(file "$file" | grep -oP ", \d+x\d+" | awk '{print substr($0, 3)}')

    # Salva le dimensioni solo se non sono già state stampate precedentemente
    if [[ ! "${!printed_dimensions[@]}" =~ "${dimensions}" ]]
	then
		#echo "($dimensions): $file"
		printed_dimensions[$dimensions]=1
	else
		((printed_dimensions[$dimensions]++))
    fi
done < <(find . -type f -iname "*.jpg" -print0)

for dimensions in "${!printed_dimensions[@]}"
do
	echo "($dimensions): ${printed_dimensions[$dimensions]}"
done

################

echo "------- End Script3 -------"