# Toronto is Accommodating More People and Increasing Shelter Space Every Year

The data set is obtained from Opendatatoronto [@opendatatoronto], which focuses on daily shelter provided by the city and charities in Toronto. The overnight service keeps a record of the daily users accessing the shelter service with capacity and other important information. The data identifies the unique locations, the organizations involved, the various districts of the city, the types of programs, and the sector of the shelters.

> **Note**<br>
> The analysis is available at: [GitHub](https://github.com/saiyedgh/Shelters_Toronto/blob/main/outputs/paper/analysis.pdf).

## File Structure

The repo is structured as:
-   `input/data/raw` contains the raw data downloaded from Opendatatoronto.
-   `input/data/clean` contains the clean data sources used in analysis.
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper `outputs/paper/analysis.pdf`. 
-   `scripts` contains the R scripts used to simulate, download, clean and test data.

## Requirements

This project requires was created using the [R programming language](https://www.r-project.org/) with [Quarto](https://quarto.org/docs/get-started/).

## Data and Data Analysis Tools

The data used in project is from [Open Data Toronto - Daily Shelter & Overnight Service Occupancy & Capacity](https://open.toronto.ca/dataset/daily-shelter-overnight-service-occupancy-capacity/).

The main variables used from the data set:
* *`location_id`*
* *`occupancy_date`*
* *`city/district`*
* *`program`*
* *`sector`*
* *`service_user_count`*

The data was prepared, cleaned, and documented using a list of tools and packages:
* *`R`*, a statistical programming language.
* *`R Studio`*
* *`Quarto`* — a new version of *`R Markdown`*.
* *`here`* to access tabular files.
* *`Tidyverse`*, the main R library for data manipulation.
* *`dplyr`*, a part of Tidyverse to enable query-like syntax.
* *`janitor`* to clean names and data.
* *`ggplot`* to create graphs and charts.
* *`scales`* to customize ggplot graphs.
* *`knitr`* with *`kableExtra`* to create tables.
* *`lubridate`* to plot date data.


### Analysis Code and Findings/Research Papers

The core data analysis of this project occurs in the `outputs/paper/analysis.qmd` file, another Quarto document. Once you render `analysis.qmd`.


## Acknowledgments

Created by [Syed Hassan](https://sai-yed.com). It Contains information from [Open Data Toronto - Daily Shelter & Overnight Service Occupancy & Capacity](https://open.toronto.ca/dataset/daily-shelter-overnight-service-occupancy-capacity/), a gold awarded data set maintained by the city of Toronto. Created using [R](https://www.r-project.org/), an open-source statistical programming language.
