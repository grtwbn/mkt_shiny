library(shiny)
library(dygraphs)
library(shinydashboard)
library(tidyr)
library(dplyr)
library(DT)
library(xts)
library(RColorBrewer)

# 1. 10 year treasury 
t10y2y = read.csv('t10y2y.csv')

# # 2. 10 year treasury 
# t10 = read.csv('10_year_treasury_constant_maturity_dgs10.csv')

# 2. S&P 500 dividend yield
div_yield = read.csv('sp500_dividend_yield.csv')

# 3. ERP
erp = read.csv('erp.csv')

# # 4. Shiller P/E 10
# shiller_yld10 = read.csv('shiller_pe10_yield.csv')

# 5a and 5b. Allocation-Based Returns
exposures = read.csv('allocation-based_stock_market_returns.csv')