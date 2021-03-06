tabPanel(
  'Student Debt by State',
  img(src = 'logo.png', height = 72, width = 250),
  h6('All data on this page was taken from College-insight.org.'),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        'Year',
        label = 'Choose a year',
        choices = c('2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013')
      )
    ),
    mainPanel(
      tabsetPanel(
        tabPanel('Plot', plotOutput('histPlot1'),p("Choose a year to view the average debt for every state for that year.")),
        tabPanel('Data Table', dataTableOutput('table1')),
        tabPanel('Summary Statistics', tableOutput('table2')),
        tabPanel('Conclusion', p("The main takeaway from this state debt data is that the distribution
                                      of the state averages of debt upon graduation has shifted to the right
                                      by approximately $10,000 over the last decade. This marks a stead increase
                                      in the debt university graduates have faced, and most likely will continue
                                      to face in the future."))
      )
    )
  )
)

