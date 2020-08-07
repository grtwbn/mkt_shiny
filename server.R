function(input,output){

    #treasury (t10y2y)
    output$dygraph0 = renderDygraph({
        xts(t10y2y[, -1], as.Date(t10y2y[, 1], format = '%m/%d/%Y')) %>%
            dygraph(main = 'Constant Maturity Treasury Yields: 10Y, 2Y, and 10Y-2Y',
                    ylab = 'Yield (%)') %>%
            dyHighlight(highlightSeriesOpts = list(strokeWidth = 2)) %>%
            dyShading(from = '1980-1-1', to = '1980-7-1', color = '#DEBDBD') %>%
            dyShading(from = '1981-7-1', to = '1982-11-1', color = '#DEBDBD') %>%
            dyShading(from = '1990-7-1', to = '1991-3-1', color = '#DEBDBD') %>%
            dyShading(from = '2001-3-1', to = '2001-11-1', color = '#DEBDBD') %>%
            dyShading(from = '2007-12-1', to = '2009-06-1', color = '#DEBDBD') %>%
            dyShading(from = '2020-2-1', to = '2020-07-31', color = '#DEBDBD') %>%
            dyEvent('1978-8-18', 'Inversion', labelLoc = 'bottom') %>%
            dyEvent('1980-9-12') %>%
            dyEvent('1981-12-28') %>%
            dyEvent('1988-12-13') %>%
            dyEvent('1989-8-11') %>%
            dyEvent('1990-3-8') %>%
            dyEvent('1998-5-25') %>%
            dyEvent('2000-2-2') %>%
            dyEvent('2005-12-27') %>%
            dyEvent('2006-6-8') %>%
            dyEvent('2019-8-27') %>%
            dyAxis('x', drawGrid = TRUE) %>%
            dySeries('DGS10', label = 'DGS10') %>%
            dySeries('DGS2', label = 'DGS2') %>%
            dySeries('T10Y2Y', label = 'T10Y2Y') %>%
            dyAxis('y', valueRange = c('-5', '20')) %>% 
            dyRangeSelector(height = 20) %>%
            dyOptions(colors = brewer.pal(n = 8, name = "Dark2"))
    })
    
    output$table0 = DT::renderDataTable({
        datatable(t10y2y, rownames=FALSE) 
    })
    
    # #treasury (10 year)
    # output$dygraph1 = renderDygraph({
    #     xts(t10[, -1], as.Date(t10[, 1], format = '%m/%d/%Y')) %>%
    #     dygraph(main = '10 Year Treasury Yield (Constant Maturity)',
    #             ylab = 'Yield (%)') %>%
    #         dyAxis('x', drawGrid = TRUE) %>%
    #         dySeries('V1', label = 'Yield') %>%
    #         dyAxis('y', valueRange = c('0', '17')) %>% 
    #         dyRangeSelector(height = 20) %>%
    #         dyOptions(colors = brewer.pal(n = 8, name = "Dark2"))
    # })
    # 
    # output$table1 = DT::renderDataTable({
    #     datatable(t10, rownames=FALSE) 
    # })
    
    #spx_divi
    output$dygraph2 = renderDygraph({
        xts(div_yield[, -1], as.Date(div_yield[, 1], format = '%m/%d/%Y')) %>%
            dygraph(main = 'S&P 500 Dividend Yield',
                    ylab = 'Yield (%)') %>%
            dyAxis('x', drawGrid = TRUE) %>%
            dySeries('V1', label = 'Yield') %>%
            dyAxis('y', valueRange = c('0', '15')) %>% 
            dyRangeSelector(height = 20) %>%
            dyOptions(colors = brewer.pal(n = 8, name = "Dark2"))
    })
    
    output$table2 = DT::renderDataTable({
        datatable(div_yield, rownames=FALSE) 
    })
    
    # #shiller
    # output$dygraph4 = renderDygraph({
    #     xts(shiller_yld10[, -1], as.Date(shiller_yld10[, 1], format = '%m/%d/%Y')) %>%
    #         dygraph(main = 'Shiller Yield 10',
    #                 ylab = 'Yield (%)') %>%
    #         dyShading(from = '1882-3-1', to = '1885-5-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1887-3-1', to = '1888-4-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1890-7-1', to = '1891-5-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1893-1-1', to = '1894-6-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1895-12-1', to = '1897-6-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1899-6-1', to = '1900-12-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1902-9-1', to = '1904-8-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1907-5-1', to = '1908-6-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1910-1-1', to = '1912-1-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1913-1-1', to = '1914-12-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1918-8-1', to = '1919-3-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1920-1-1', to = '1921-7-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1923-5-1', to = '1924-6-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1926-10-1', to = '1927-11-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1929-8-1', to = '1933-3-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1937-5-1', to = '1938-6-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1945-2-1', to = '1945-10-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1948-11-1', to = '1949-10-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1953-7-1', to = '1954-5-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1957-8-1', to = '1958-4-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1960-4-1', to = '1961-2-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1969-12-1', to = '1970-11-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1973-11-1', to = '1975-3-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1980-1-1', to = '1980-7-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1981-7-1', to = '1982-11-1', color = '#DEBDBD') %>%
    #         dyShading(from = '1990-7-1', to = '1991-3-1', color = '#DEBDBD') %>%
    #         dyShading(from = '2001-3-1', to = '2001-11-1', color = '#DEBDBD') %>%
    #         dyShading(from = '2007-12-1', to = '2009-06-1', color = '#DEBDBD') %>%
    #         dyShading(from = '2020-2-1', to = '2020-07-31', color = '#DEBDBD') %>%
    #         dyAxis('x', drawGrid = TRUE) %>%
    #         dySeries('V1', label = 'Yield') %>%
    #         dyAxis('y', valueRange = c('0', '22.5')) %>% 
    #         dyRangeSelector(height = 20) %>%
    #         dyOptions(colors = brewer.pal(n = 8, name = "Dark2"))
    # })
    # 
    # output$table4 = DT::renderDataTable({
    #     datatable(shiller_yld10, rownames=FALSE) 
    # })
    
    #erp
    output$dygraph3 = renderDygraph({
        xts(erp[, -1], as.Date(erp[, 1], format = '%m/%d/%Y')) %>%
            dygraph(main = 'Equity Risk Premium ("ERP")',
                    ylab = 'Percent Premium to Treasury Bond (%)') %>%
            dyHighlight(highlightSeriesOpts = list(strokeWidth = 2)) %>%
            dyShading(from = '1969-12-1', to = '1970-11-1', color = '#DEBDBD') %>%
            dyShading(from = '1973-11-1', to = '1975-3-1', color = '#DEBDBD') %>%
            dyShading(from = '1980-1-1', to = '1980-7-1', color = '#DEBDBD') %>%
            dyShading(from = '1981-7-1', to = '1982-11-1', color = '#DEBDBD') %>%
            dyShading(from = '1990-7-1', to = '1991-3-1', color = '#DEBDBD') %>%
            dyShading(from = '2001-3-1', to = '2001-11-1', color = '#DEBDBD') %>%
            dyShading(from = '2007-12-1', to = '2009-06-1', color = '#DEBDBD') %>%
            dyShading(from = '2020-2-1', to = '2020-07-31', color = '#DEBDBD') %>%
            dyEvent('2008-9-1', 'Monthly Data', labelLoc = 'bottom') %>%
            dyAxis('x', drawGrid = TRUE) %>%
            dySeries('ERP', label = 'ERP') %>%
            dySeries('DGS10', label = '10 Yr Bond') %>%
            dySeries('ERP10', label = 'ERP + 10 Yr Bond') %>%
            dyAxis('y', valueRange = c('0', '25')) %>% 
            dyRangeSelector(height = 20) %>%
            dyOptions(colors = brewer.pal(n = 8, name = "Dark2")) #, stackedGraph = TRUE)
    })
    
    output$table3 = DT::renderDataTable({
        datatable(erp, rownames=FALSE) 
    })
    
    #exposures
    output$dygraph5b = renderDygraph({
        xts(exposures[, -1], as.Date(exposures[, 1], format = '%m/%d/%Y')) %>%
            dygraph(main = 'Inverse Relationship between Market Returns and Market Exposure') %>%
            dyHighlight(highlightSeriesOpts = list(strokeWidth = 2)) %>%
            dyAxis('x', drawGrid = TRUE) %>%
            dyAxis('y',
                   label = 'INVERTED: S&P500 10 Year Annualized Total Return (%)', 
                   valueRange = c('20', '-5'), 
                   independentTicks = TRUE,
                   drawGrid = TRUE) %>% 
            dySeries('TR10A',
                     axis = ('y'),
                     label = 'INVERTED: S&P 10Yr Anualized Tot Ret.') %>%
            dyAxis('y2',
                   label = 'Market Expsoure (%)', 
                   valueRange = c('21.5', '52.5'),
                   independentTicks = TRUE,
                   drawGrid = FALSE) %>%
            dySeries('EXP', axis = ('y2'), label = 'Market Expsoure') %>%
            dyRangeSelector(height = 20) %>%
            dyOptions(colors = brewer.pal(n = 8, name = "Dark2"))
    })
    
    output$table5 = DT::renderDataTable({
        datatable(exposures, rownames=FALSE) 
    })
    
}
