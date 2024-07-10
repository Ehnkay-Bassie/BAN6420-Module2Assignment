# Load necessary library
library(zip)

# Function to Unzip and Read the Employee Profile CSV

unzip_and_read <- function(zipfile) {
  unzip(zipfile, exdir = tempdir())
  csv_files <- list.files(tempdir(), pattern = "*.csv", full.names = TRUE)
  for (file in csv_files) {
    data <- read.csv(file)
    View(data)
  }
}

# Test the function
unzip_and_read('EmployeeProfile.zip')