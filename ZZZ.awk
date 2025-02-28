BEGIN {
    FS = " ";
    paragraph = 1;
}

(PASS == 1) {
    topWords[$1] = 1;
    next;
}

(PASS == 2) {
    # If the line is blank then we know we need more rows
    if (NF == 0) {
        paragraph++;
        next;
    }

    # Iterating through the lines of the file
    for (i = 1; i <= NF; i++) {
        word = $i;
        if (word in topWords) {
            count[paragraph, word]++;
        }
    }

}
END {
    # Printing out the first row of the table
    for (word in topWords) {
        printf "%s,", word
    }
    
    # Getting a new line
    print "";

    # Iterating through paragraphs and getting the numbers
    for (p = 1; p <= paragraph; p++) {
        for (word in topWords) {
            printf "%s,", count[p, word] + 0;
        }
        print "";
    }
}