**What is Consonant Cluster Hunter**

The Consonant Cluster Hunter app is designed to assist users in locating consonant clusters in their text, such as those found at the beginning, middle, or end of a word. By entering a string of text into the app, users can choose to count the number of consonant clusters found, extract them for closer examination, or match them. 

**Technical Details**

Consonant Cluster Hunter was made with *R*'s programming language, using the *shiny*, *stringr*, and *bslib* packages. The user interface was designed using *Shiny*'s built-in user interface elements and the *bslib* package was used to apply a pre-built theme called "quartz". The functionality of the app was implemented using the *stringr* package. 

The app utilizes reactive elements. The app takes user input through a text input field and uses radio buttons to select between three stringr functions: str_count, str_extract, and str_match. The app then applies the selected function to the input text and displays the output in the app's main panel. I used tabs to organize the output of the three different functions for finding word initial, word medial, and word final consonant clusters. The use of tabs enhances the user experience by making it easier to view the outputs of the different functions without having to scroll through a long list of results. 

**Instructions for using Consonant Cluster Hunter**
1. In R Studio, open the project containing the forked repository.
2. Open the Consonant Cluster Hunter file, then "app.R"
3. Click "Run App" in the upper-right corner.
4. The app will then open!
