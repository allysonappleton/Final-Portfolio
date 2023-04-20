library(shiny)
library(stringr)

ui <- fluidPage(
  theme = bslib::bs_theme(bootswatch = "quartz"),
  titlePanel("Consonant Cluster Hunter"),
  h3("Find word initial, word medial & word final consonant clusters in your text"),
  sidebarLayout(
    sidebarPanel(
      textInput("text_input", "Enter a string of text:"),
      radioButtons("function_input", "Select a function:",
                   c("Count" = "str_count",
                     "Extract" = "str_extract",
                     "Match" = "str_match")
      )
    ),
    mainPanel( #the main panel contains 4 tabs: word initial, word medial, word final, and about this app
      tabsetPanel(
        type = "tabs",
        tabPanel("Word Initial", verbatimTextOutput("word_initial_output")),
        tabPanel("Word Medial", verbatimTextOutput("word_medial_output")),
        tabPanel("Word Final", verbatimTextOutput("word_final_output")),
        tabPanel("About this App",
                 fluidRow(
                   column(
                     width = 12,
                     h4("Welcome to Consonant Cluster Hunter!"),
                     p("This app was created to help users find word initial, word medial, and word final consonant clusters in text using regular expressions."),
                     p("The stringr package was utilized to apply regular expressions, by using the following functions: str_count, str_extract, and str_match. These functions are helpful for pattern matching and extracting relevant information from the text."),
                     p("Created by Allyson Appleton")
                 ))
      )
    )
  )
))

server <- function(input, output) {
  #The following code chunk determines the output displayed in the "Word Initial" tab based on the user's selected function.
  # If the "Count" radio button is selected, it counts the number of word initial consonant clusters in the input text using str_count.
  # If the "Extract" radio button is selected, it extracts all word initial consonant clusters from the input text using str_extract_all.
  # If the "Match" radio button is selected, it matches all word initial consonant clusters in the input text using str_match_all.
  output$word_initial_output <- renderPrint({
    if (input$function_input == "str_count") {
      str_count(input$text_input, "\\b[bcdfghjklmnpqrstvwyz][bcdfghjklmnpqrstvwyz]")
    } else if (input$function_input == "str_extract") {
      str_extract_all(input$text_input, "\\b[bcdfghjklmnpqrstvwyz][bcdfghjklmnpqrstvwyz]")
    } else if (input$function_input == "str_match") {
      str_match_all(input$text_input, "\\b[bcdfghjklmnpqrstvwyz][bcdfghjklmnpqrstvwyz]")
    } 
  })
  # The following code chunk determines the output displayed in the "Word Medial" tab based on the user's selected function.
  # If the "Count" radio button is selected, it counts the number of word medial consonant clusters in the input text using str_count.
  # If the "Extract" radio button is selected, it extracts all word medial consonant clusters from the input text using str_extract_all.
  # If the "Match" radio button is selected, it matches all word medial consonant clusters in the input text using str_match_all.
  output$word_medial_output <- renderPrint({
    if (input$function_input == "str_count") {
      str_count(input$text_input, "[a-z][bcdfghjklmnpqrstvwyz][bcdfghjklmnpqrstvwyz][a-z]")
    } else if (input$function_input == "str_extract") {
      str_extract_all(input$text_input, "[a-z][bcdfghjklmnpqrstvwyz][bcdfghjklmnpqrstvwyz][a-z]")
    } else if (input$function_input == "str_match") {
      str_match_all(input$text_input, "[a-z][bcdfghjklmnpqrstvwyz][bcdfghjklmnpqrstvwyz][a-z]")
    }
  })
  # The following code chunk determines the output displayed in the "Word Final" tab based on the user's selected function.
  # If the "Count" radio button is selected, it counts the number of word final consonant clusters in the input text using str_count.
  # If the "Extract" radio button is selected, it extracts all word final consonant clusters from the input text using str_extract_all.
  # If the "Match" radio button is selected, it matches all word final consonant clusters in the input text using str_match_all.
  output$word_final_output <- renderPrint({
    if (input$function_input == "str_count") {
      str_count(input$text_input, "[bcdfghjklmnpqrstvwyz][bcdfghjklmnpqrstvwyz]\\b")
    } else if (input$function_input == "str_extract") {
      str_extract_all(input$text_input, "[bcdfghjklmnpqrstvwyz][bcdfghjklmnpqrstvwyz]\\b")
    } else if (input$function_input == "str_match") {
      str_match_all(input$text_input, "[bcdfghjklmnpqrstvwyz][bcdfghjklmnpqrstvwyz]\\b")
    }
  })
}
shinyApp(ui, server)

