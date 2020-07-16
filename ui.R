# ui.R
# Author: Jeffrey M. Hunter
# Date: 28-JUL-2019
# Description: Shiny UI, Coursera Data Science Capstone Final Project
# GitHub: https://github.com/oraclejavanet/coursera-data-science-capstone

library(shiny)
library(shinythemes)
library(markdown)
library(dplyr)
library(tm)

shinyUI(
    navbarPage("Kiril Spiridonov",
               theme = shinytheme("spacelab"),
               tabPanel("Home",
                        fluidPage(
                            titlePanel("Home"),
                            sidebarLayout(
                                sidebarPanel(
                                    textInput("userInput",
                                              "Enter a word or phrase:",
                                              value =  "",
                                              placeholder = "Enter text here"),
                                    br(),
                                    sliderInput("numPredictions", "Number of Predictions:",
                                                value = 1.0, min = 1.0, max = 3.0, step = 1.0)
                                ),
                                mainPanel(
                                    h4("Input text"),
                                    verbatimTextOutput("userSentence"),
                                    br(),
                                    h4("Predicted words"),
                                    verbatimTextOutput("prediction1"),
                                    verbatimTextOutput("prediction2"),
                                    verbatimTextOutput("prediction3")
                                )
                            )
                        )
               ),
               tabPanel("About",
                        h3("About Next Word Predict"),
                        br(),
                        div(
                            br(),
                            br(),
                            "The predicted next word will show when the app
                            detects that you have finished typing.",
                            br(),
                            br(),
                            "Use the slider tool to select up to three next
                            word predictions.",
                            br(),
                            br(),

                            br(),
                            br(),

                            ),
                        br(),

               )
    )
)
