morpheme_counter <- function(word) {
  prefixes <- c("anti", "de", "dis", "ex", "in", "pre", "re", "un")
  suffixes <- c("able", "al", "ed", "en", "er", "ful", "ing", "ion", "ish", "less", "ly", "ment", "ness", "ous", "s")
  num_morphemes <- 1 #initialize the counter at 1, because every word has at least one morpheme
  for (prefix in prefixes) { #Check if the word contains any of the common prefixes or suffixes, then add to the counter accordingly
    if (startsWith(word, prefix)) {
      num_morphemes <- num_morphemes + 1
      word <- substring(word, nchar(prefix) + 1) 
      #substring() is used to remove a prefix from the beginning of the word variable if a prefix is found
      #this allows the function to continue iterating through the remaining prefixes and suffixes to count the total number of morphemes in the word
    }
  }
  for (suffix in suffixes) {
    if (endsWith(word, suffix)) {
      num_morphemes <- num_morphemes + 1
      word <- substring(word, 1, nchar(word) - nchar(suffix))
    }
  }
  return(num_morphemes)
}

morpheme_counter("dogs")

morpheme_counter <- function(word) {
  prefixes <- c("anti", "de", "dis", "ex", "in", "pre", "re", "un")
  suffixes <- c("able", "al", "ed", "en", "er", "ful", "ing", "ion", "ish", "less", "ly", "ment", "ness", "ous", "s")
  num_morphemes <- 1 #initialize the counter at 1, because every word has at least one morpheme
  
  #apply the prefix and suffix checking to each element in the prefixes and suffixes vectors respectively.
  num_morphemes <- num_morphemes + sum(sapply(prefixes, function(x) startsWith(word, x))) #sapply() will iterate over the user input (i.e the word) and apply morpheme_counter() to that element.
  num_morphemes <- num_morphemes + sum(sapply(suffixes, function(x) endsWith(word, x)))
  
  return(num_morphemes)
}




