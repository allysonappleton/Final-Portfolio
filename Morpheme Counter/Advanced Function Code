morpheme_counter <- function(word) {
  prefixes <- c("anti", "de", "dis", "ex", "in", "pre", "re", "un")
  suffixes <- c("able", "al", "ed", "en", "er", "ful", "ing", "ion", "ish", "less", "ly", "ment", "ness", "ous", "s")
  num_morphemes <- 1 #initialize the counter at 1, because every word has at least one morpheme
  
  #apply the prefix and suffix checking to each element in the prefixes and suffixes vectors respectively.
  num_morphemes <- num_morphemes + sum(sapply(prefixes, function(x) startsWith(word, x))) #sapply() will iterate over the user input (i.e the word) and apply morpheme_counter() to that element.
  num_morphemes <- num_morphemes + sum(sapply(suffixes, function(x) endsWith(word, x)))
  
  return(num_morphemes)
}
