library(shiny)
shinyUI(pageWithSidebar(
headerPanel("EMI Calculation Program"),

sidebarPanel(
     h2('Enter your loan particulars'),

     numericInput('id1', 'Principle Amount',0),
    numericInput('id2', 'Monthly Interest Rate',0),
     sliderInput('id3', 'No of Monthly instalments',value = 12, min = 0, max = 100, step = 1,),
     submitButton('Submit'),

h3('Notes to User:'),
h4('This tool will help users to calculate EMI(equated monthly instalments). To know the EMI, user has to provide the principle amount, monthly interest rate (Example monthly intrest as 1 for 12 percent per annum interest (Example: monthly rate= yearly Rate/months = 12/12 = 1) and number of instalments to repay the loan. This tool displays the user provided values for verification. Finally the result (EMI to be paid) will appear on screen under monthly EMI column.')
     

),

     mainPanel(
     h1('Your loan EMI'),
  h4('Principle You entered'),
  verbatimTextOutput("oid1"),
  h4('Monthly Intrest Rate You entered'),
  verbatimTextOutput("oid2"),
  h4('No of Monthly instalments You entered'),
   verbatimTextOutput("oid3"),

h2('Monthly EMI'),
verbatimTextOutput("prediction")

)
))
