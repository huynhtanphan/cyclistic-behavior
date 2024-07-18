# Cyclistic Data Analysis

This repository contains SQL and R scripts for analyzing Cyclistic bike-sharing data. The project includes SQL queries to create summary tables and generate statistical summaries, as well as R code for additional data manipulation and visualization.

## Files

### 1. `sql_scripts.sql`

This SQL script includes the following sections:

- **Creating the Summary Table**: This section creates a table named `all_trip` to store combined data from multiple sources with columns such as `ride_id`, `rideable_type`, `day_of_week`, `started_at`, `ended_at`, `ride_length`, `start_station_name`, `start_station_id`, `end_station_name`, `end_station_id`, `start_lat`, `start_lng`, `end_lat`, `end_lng`, and `member_casual`.
  
- **Inserting Data**: This section inserts data into the `all_trip` table, transforming the day of the week from numeric to string format, calculating the ride length in seconds, and ensuring data from multiple sources is combined.
  
- **Filtering Data**: This part filters out invalid data where the `day_of_week` is not recognized or the `ride_length` is less than 1 second.

- **Creating Summary Statistics**: This section includes several queries to generate statistical summaries:
  - Average, maximum, and minimum ride length.
  - Count of rides grouped by user type (`member_casual`).
  - Average ride length grouped by user type.
  - Most common day of the week for rides.
  - Most common day of the week for rides for each month (optional).
  - Number of riders and average ride time for each day of the week.
  - Average ride length for each user type on each day of the week.
  - Number of riders for each user type on each day of the week.
  - Number of riders and average ride time for each month (optional).

### 2. `Cyclistic.Rmd`

This R Markdown file includes the following sections:

- **Loading and Cleaning Data**: This section covers loading the Cyclistic bike-sharing data into R, cleaning it by handling missing values, and converting data types as necessary.
  
- **Exploratory Data Analysis (EDA)**: This part includes visualizations and descriptive statistics to understand the distribution of ride lengths, the number of rides per day, the distribution of user types, and other exploratory analyses.
  
- **Statistical Analysis**: This section includes statistical tests and models to analyze differences between user types, seasonal patterns, and other relevant aspects of the data.
  
- **Visualizations**: This part generates plots to visualize trends, comparisons, and patterns in the data, such as ride frequency by day of the week, ride length distribution, and more.

## How to Use

1. Clone the repository to your local machine:
    ```sh
    git clone https://github.com/yourusername/cyclistic-data-analysis.git
    ```
2. Run the SQL script (`sql_scripts.sql`) in your preferred SQL database environment to create the summary table and generate statistical summaries.
3. Open and run the R Markdown file (`Cyclistic.Rmd`) in RStudio or any R environment to perform data cleaning, exploratory analysis, and visualizations.

## Requirements

- SQL database environment (e.g., MySQL, PostgreSQL)
- R and RStudio (for `Cyclistic.Rmd`)
- R packages: `dplyr`, `ggplot2`, `lubridate`, `tidyr`, etc. (See `Cyclistic.Rmd` for the complete list of required packages)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
