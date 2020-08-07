dashboardPage(
    dashboardHeader(title='Expectations Game'),
    dashboardSidebar(
        sidebarUserPanel('Market Valution Approaches and Tools'),
    sidebarMenu(
        menuItem('Treasury Securities', tabName = 't10y2y'),
        # menuItem('10 Year Treasury', tabName = 'treasury'),
        menuItem('Equity Risk Premium', tabName = 'erp'),
        # menuItem('S&P 500 Earnings Yield (%) / Multiple (x)', tabName = 'sp_earn'),
        # menuItem('Shiller Trailing 10 Year Yield', tabName = 'shiller'),
        menuItem('Allocation-Based Returns', tabName = 'exposures'),
        menuItem('S&P 500 Price and Total Return', tabName = 'sp_price_tr'),
        menuItem('S&P 500 Dividend Yield', tabName = 'sp_divi'),
        menuItem('S&P 500 Earnings Yield', tabName = 'sp_eyld')
    )
    ),
    dashboardBody(
        tabItems(
            tabItem(tabName = 't10y2y',
                    tabsetPanel(type = 'tabs',
                                tabPanel('Graph Output', 
                                         fluidRow(column(width = 12, dygraphOutput('dygraph0')))
                                ),
                                tabPanel('Data Support',
                                         fluidRow(box(DT::dataTableOutput('table0'), width = 12))       
                                )
                                )
                    ),
            # tabItem(tabName = 'treasury',
            #         tabsetPanel(type = 'tabs',
            #                     tabPanel('Graph Output', 
            #                              fluidRow(column(width = 12, dygraphOutput('dygraph1')))
            #                     ),
            #                     tabPanel('Data Support',
            #                              fluidRow(box(DT::dataTableOutput('table1'), width = 12))       
            #                     )
            #                     )
            #         ),
            tabItem(tabName = 'erp',
                    tabsetPanel(type = 'tabs',
                                tabPanel('Graph Output', 
                                         fluidRow(column(width = 12, dygraphOutput('dygraph3')))
                                ),
                                tabPanel('Data Support',
                                         fluidRow(box(DT::dataTableOutput('table3'), width = 12))       
                                )
                                )
                    ),
            # tabItem(tabName = 'shiller',
            #         tabsetPanel(type = 'tabs',
            #                     tabPanel('Graph Output', 
            #                              fluidRow(column(width = 12, dygraphOutput('dygraph4')))
            #                     ),
            #                     tabPanel('Data Support',
            #                              fluidRow(box(DT::dataTableOutput('table4'), width = 12))       
            #                     )
            #                     )
            #         ),
            tabItem(tabName = 'exposures',
                    tabsetPanel(type = 'tabs',
                                tabPanel('Graph', 
                                        fluidRow(column(width = 12, dygraphOutput('dygraph5a')))
                                ),
                                tabPanel('Graph', 
                                         fluidRow(column(width = 12, dygraphOutput('dygraph5b')))
                                ),
                                tabPanel('Data Support',
                                         fluidRow(box(DT::dataTableOutput('table5'), width = 12))       
                                )
                                )
            
                    ),
            tabItem(tabName = 'sp_price_tr',
                    tabsetPanel(type = 'tabs',
                                tabPanel('Graph', 
                                         fluidRow(column(width = 12, dygraphOutput('dygraph6')))
                                ),
                                tabPanel('Data Support',
                                         fluidRow(box(DT::dataTableOutput('table6'), width = 12))       
                                )
                                )
                    
                    ),
            tabItem(tabName = 'sp_eyld',
                    tabsetPanel(type = 'tabs',
                                tabPanel('Graph', 
                                         fluidRow(column(width = 12, dygraphOutput('dygraph7')))
                                ),
                                tabPanel('Data Support',
                                         fluidRow(box(DT::dataTableOutput('table7'), width = 12))       
                                )
                                )
                    
                    ),
            tabItem(tabName = 'sp_divi',
                    tabsetPanel(type = 'tabs',
                                tabPanel('Graph Output', 
                                         fluidRow(column(width = 12, dygraphOutput('dygraph2')))
                                ),
                                tabPanel('Data Support',
                                         fluidRow(box(DT::dataTableOutput('table2'), width = 12))       
                                )
                                )
                    )
                    )
                    )
)