print("Testing WDI...")
tryCatch(
    {
        dat <- WDI::WDI(country = "US", indicator = "SP.POP.TOTL", start = 2020, end = 2020, extra = TRUE)
        print("WDI Success")
        print(head(dat))
        print(names(dat))
    },
    error = function(e) {
        print(paste("WDI Fail:", e$message))
    }
)
