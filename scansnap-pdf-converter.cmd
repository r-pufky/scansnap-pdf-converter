:: Finds all pdfs in a given directory and changes Creator label to
:: 'PFU ScanSnap Organizer' to enable use in ScanSnap.
:: %%~dpnxF -- expands to d‎rive, p‎ath, base‎n‎ame and e‎x‎tension of file.
::
:: Set input and output directories accordingly. Import to ScanSnap Organizer after running.

SET input="c:\Users\USERNAME\Documents\to-convert"
SET output="c:\Users\USERNAME\Documents\converted"

for %%F in (%input%\*.pdf) do (
  "c:\Program Files (x86)\BeCyPDFMetaEdit\BeCyPDFMetaEdit.exe" "%%~dpnxF" -Creator "PFU ScanSnap Organizer"
  move "%%~dpnxF" "%output%"
)