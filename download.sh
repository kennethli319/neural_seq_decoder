mkdir -p data && cd data

# # Download the data (essential)
wget -O "README.md" https://datadryad.org/stash/downloads/file_stream/2547377
wget -O "competitionData_readme.txt" https://datadryad.org/stash/downloads/file_stream/2547362
wget -O "competitionData.tar.gz" https://datadryad.org/stash/downloads/file_stream/2547369
tar -xzf "competitionData.tar.gz"

# wget -O "languageModel_readme.txt" https://datadryad.org/stash/downloads/file_stream/2547360
# wget -O "languageModel.tar.gz" https://datadryad.org/stash/downloads/file_stream/2547356
# tar -xzf "languageModel.tar.gz"
# wget -O "languageModel_5gram.tar.gz" https://datadryad.org/stash/downloads/file_stream/2547359
# tar -xzf "languageModel_5gram.tar.gz"