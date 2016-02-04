ustreasuries
============

[![DOI](https://zenodo.org/badge/5738/grfiv/ustreasuries.svg)](https://zenodo.org/badge/latestdoi/5738/grfiv/ustreasuries)

### Treasury Rates

*ustreasuries* is an R-language package which downloads daily Constant-Maturity Treasury (CMT) yields from 1962 to the most-recently completed business day.

Historical data from 1962 to 2015 was sourced from the Federal Reserve's H15 dataset; data from 2016 onward is pulled in real time from an XML feed provided by the US Treasury Department.

### Derivative Pricing

Drawing primarily on **Hull, 7th edition** *ustreasuries* includes many options-pricing models, all the greeks and a number of utility functions.

------------------------------------------------------------------------

### Wiki

See the [GitHub Wiki](https://github.com/grfiv/ustreasuries/wiki) for examples of the use of all the functions.

### Functions

-   **Treasury Rates**
    -   **USTreasuryRates** downloads a data.frame with daily data from 1962
    -   **PrintYieldCurves** prints one or more yield curves
    -   **APY** converts Constant-Maturity Treasury (CMT) yields to Annualized Percentage Yields (APY)
-   **Black-Scholes-Merton**
    -   **EuroCall** Calculate the price of a European call option with or without dividends
    -   **EuroPut** Calculate the price of a European put option with or without dividends
    -   **EuroCallVol** Implied Volatility for a European Call option
    -   **EuroPutlVol** Implied Volatility for a European Put option
-   **Greeks**
    -   **DeltaCall** Amount call-option price changes given a change in asset price
    -   **DeltaPut** Amount put-option price changes given a change in asset price
    -   **ThetaCall** the decay in the value of a call or a portfolio of calls as time passes
    -   **ThetaPut** the decay in the value of a put or a portfolio of puts as time passes
    -   **OptionGamma** the change in Delta with respect to asset price
    -   **Vega** the sensitivity to changes in the volatility of the underlying
    -   **RhoCall** the sensitivity to changes in the risk-free rate of return
    -   **RhoPut** the sensitivity to changes in the risk-free rate of return
-   **Utility Functions**
    -   **CAGR**
        -   **CAGRd** Calculate discrete Compound Annual Growth Rate
        -   **r\_continuous** Convert from discrete to continuous CAGR
        -   **r\_discrete** Convert from continuous to discrete CAGR
    -   **Put/Call Parity**
        -   **CallParity** Convert from a put-option price using put/call parity
        -   **PutParity** Convert from a call-option price using put/call parity
    -   **Risk Neutral/Forwards**
        -   **RiskNeutralProb** Binomial tree risk-neutral probability
        -   **ForwardPrice** Forward price with or without income or yield
        -   **ForwardRate** Forward rate from Time1 to Time2 (discrete compounding)
    -   **Options**
        -   **IntrinsicValueCall** / **IntrinsicValuePut** the in-the-money portion of an option's premium
        -   **TimeValueCall** / **TimeValuePut** Price = Intrinsic + Time
        -   **InTheMoneyCall** / **InTheMoneyPut** Is an option in the money?
-   **Installed but not yet tested or undocumented**
    -   Digital
        -   **CashCall**
        -   **CashPut**
        -   **AssetCall**
        -   **AssetPut**
    -   Greeks
        -   **RhoFuturesCall**
        -   **RhoFuturesPut**
        -   **RhoFXCall**
        -   **RhoFXPut**
    -   American
        -   **American\_Put\_Binomial**
        -   **American\_Call\_Dividend**

#### Many of the functions have examples drawn from **[Hull, 7th edition](http://raudys.com/kursas/Options,%20Futures%20and%20Other%20Derivatives%207th%20John%20Hull.pdf)** to demonstrate their correctness.

See <https://github.com/grfiv/BlackScholesMerton> for these functions written in Python and Excel VBA

See also <http://www.philadelphia-reflections.com/topic/230.htm>

Installation
------------

We're not on CRAN yet; get the development version from GitHub:

``` r
# see https://github.com/hadley/devtools for the
# best procedure to install *devtools* on your
# system; Windows in particular has somewhat
# complicated requirements

devtools::install_github("grfiv/treasuries")

# Notes: 
#    1. Add 'build_vignettes=TRUE' to include vignettes 
#       (recommended, but a current version of pandoc is required)
#    2. add 'auth_token="..."' if you get a 404
#       contact the author for this
#    3. if you receive a message about corrupt databases or fetch(key), 
#       restarting R will fix the problem;
#       these appear to be issues with devtools 1.10.0.9000
```

John Hull citation
------------------

    @Book{hull2008options,   
      Title                    = {Options, Futures and Other Derivatives},   
      Author                   = {Hull, J.},   
      Publisher                = {Pearson/Prentice Hall},   
      Year                     = {2008},   
      Edition                  = {Seventh Edition},   
      Series                   = {Options, Futures and Other Derivatives},   
       
      ISBN                     = {9780136015864},   
      Url                      = {http://www.amazon.com/Options-Futures-Other-Derivatives-Derivagem/dp/0136015867/ref=sr_1_7?s=books&ie=UTF8&qid=1454527583&sr=1-7}   
    }
