FROM rocker/r-ver:4.2

RUN apt-get update && apt-get install -y --no-install-recommends \
    pandoc \
    curl \
    libxml2-dev \
    libcairo2-dev \
    libsqlite3-dev \
    libmariadbd-dev \
    libpq-dev \
    libssh2-1-dev \
    unixodbc-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY stipend_explorer.Rmd /app/
COPY renv.lock /app/

RUN Rscript -e 'install.packages("renv")'
RUN Rscript -e 'renv::consent(provided = TRUE)'
RUN Rscript -e 'renv::restore()'

EXPOSE 3838

CMD [ "R", "-e", "rmarkdown::run('stipend_explorer.Rmd', shiny_args = list(port=3838, host='0.0.0.0'))" ]