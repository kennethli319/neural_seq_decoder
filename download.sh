mkdir -p data && cd data

# Download the data (essential)
wget -O "README.md" https://datadryad.org/stash/downloads/file_stream/2547377
wget -O "competitionData_readme.txt" https://datadryad.org/stash/downloads/file_stream/2547362
wget -O "competitionData.tar.gz" https://datadryad.org/stash/downloads/file_stream/2547369
tar -xzf "competitionData.tar.gz"