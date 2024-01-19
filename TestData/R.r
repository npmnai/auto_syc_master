# $SCE INPUT FILE ../data/input.txt
# $SCE OUTPUT FILE ./output.txt

output <- "./output.txt"
outFile <- file(output, "w+")
   writeLines("TESTING R Program ", outFile)
    writeLines(output, outFile)
 close(outFile)