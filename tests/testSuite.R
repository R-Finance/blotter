# RUnit blotter port/framework by Ben McCann

# Set working directory to this directory before running

# Load deps
library(RUnit)
library(quantmod)
library(blotter)

#Load blotter files.  When is this necessary?
for (file in list.files("../R", pattern="*.R$", full.names=TRUE)) {
  source(file)
}

# Tests
testsuite.blotter <- defineTestSuite("blotter", 
                                     dirs = ".",
                                     testFileRegexp = "^runit\\+.R$",
                                     testFuncRegexp = "^test.+")
testResult <- runTestSuite(testsuite.blotter)
runTestFile( "/home/efm/1CurrentProjects/TradeAnalytics/blotter/pkg/blotter/tests/testSuite.R")
printTextProtocol(testResult)
