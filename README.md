PHD Students Stipend Planner
=

![GitHub last commit](https://img.shields.io/github/last-commit/CogDisResLab/phd_students)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/CogDisResLab/phd_students)
![GitHub](https://img.shields.io/github/license/CogDisResLab/phd_students)

![GitHub release (latest by date)](https://img.shields.io/github/v/release/CogDisResLab/phd_students)
![Docker Image Version (latest by date)](https://img.shields.io/docker/v/cdrl/phd_students?label=docker&logo=docker)
![Docker Image Size (latest semver)](https://img.shields.io/docker/image-size/cdrl/phd_students?logo=docker&sort=semver)

This is a simple visualizer for projecting changes in graduate student stipend
on the budget. This is built as an interactive document in R Markdown.

How to use
==

This project is distributed as  an R Markdown document and a Docker container.
The Docker container contains all the dependencies to run the project and is
the easiest way to get started.

Running the docker container
===

The docker container is publicly available on
[Docker Hub](https://hub.docker.com/r/cdrl/phd_students/).

To run the container, you need to have Docker installed on your machine.

```bash
# Run the container
docker run -p 3838:3838 cdrl/phd_students:latest
```

You can then access the project at [http://localhost:3838](http://localhost:3838).

Running the project locally
===

To run the project locally, you need to have [R](https://www.r-project.org/)
installed on your machine.
It would also be helpful to have [RStudio](https://www.rstudio.com/) installed.

Here are the steps to run the project locally:

1. Clone the repository
2. Open the `phd_students.Rproj` file in RStudio
3. Run `renv::restore()` to install the dependencies in the R Console
4. Use the `Run App` button in RStudio to run the project OR Run the following

   ```r
   rmarkdown::run('stipend_explorer.Rmd', shiny_args = list(port=3838, host='0.0.0.0'))
   ```

5. Open the project at [http://localhost:3838](http://localhost:3838).
