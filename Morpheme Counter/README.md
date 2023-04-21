**What is Morpheme Counter**

Morpheme Counter is an advanced function designed to count the number of morphemes in a word.

**Technical Details**
- The function initializes a variable "num_morphemes" to 1, as every word has at least one morpheme.
- It then checks if the word starts with any of the prefixes in the "prefixes" vector, and increments "num_morphemes" by the number of matches found using "sum()" and "startsWith()".
- It also checks if the word ends with any of the suffixes in the "suffixes" vector, and increments "num_morphemes" by the number of matches found using "sum()" and "endsWith()".
- The "sapply()" function is used to apply the prefix and suffix checking to each element in the "prefixes" and "suffixes" vectors respectively.
- Finally, the function returns the value of "num_morphemes" as the output.

**Here are instructions for using the "morpheme_counter" code:**

1. In R Studio, open the project containing the forked repository.
2. In the RStudio file pane, navigate to the folder where the "morpheme_counter" code is located.
3. Open the file containing the "morpheme_counter" code and run it.
4. Call the function by typing "morpheme_counter" followed by parentheses.
5. Inside the parentheses, provide the word you want to analyze as a character string (in quotes). 
- For example, to analyze the word "unhappy", type: morpheme_counter("unhappy")

The function will then output the number of morphemes in the word you provided. 
