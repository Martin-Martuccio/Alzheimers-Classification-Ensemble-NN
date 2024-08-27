#!/bin/bash

echo "------- Starting Script2 -------"

################

declare -A file_hashes  # Array associativo per memorizzare gli hash dei file
duplicates=0  # Contatore per i duplicati trovati

# Trova tutti i file nella cartella specificata e nelle sue sotto-cartelle
while IFS= read -r -d '' file
do
    # Calcola l'hash del file
    hash=$(md5sum "$file" | awk '{print $1}')

    # Controlla se l'hash esiste già nell'array dei file
    if [[ -n ${file_hashes[$hash]} ]]
	then
        #echo "Duplicato trovato: $file (già presente come ${file_hashes[$hash]})"
		rm "$file"
        ((duplicates++))
    else
        # Memorizza l'hash del file nell'array
        file_hashes[$hash]="$file"
    fi
done < <(find . -type f -iname "*.jpg" -print0)

# Stampa il numero totale di duplicati trovati
echo "Totale duplicati trovati: $duplicates"

################

echo "------- End Script2 -------"