# Dagster University

This is a forked [Dagster](https://dagster.io/) project made to accompany Dagster University coursework. The difference with this fork is that it uses `uv` for Python package management and has a `Dockerfile` to build a Docker image and run a container for local development. This repository accompanies a write-up and instructions to follow along.
- [Docker & uv: A Streamlined Approach to Managing Local Dagster Environments ](https://medium.com/@jairus-m/docker-uv-a-streamlined-approach-to-managing-local-dagster-environments-dd55e0e90b3a)

## Branches 

| Branch name | Description |
|-------------|-------------|
| `main`       | [Dagster Essentials](https://courses.dagster.io/courses/dagster-essentials) finished project |
| `module/dagster-and-dbt` | [Dagster + dbt](https://courses.dagster.io/courses/dagster-dbt) finished project |
| `module/dagster-and-dbt-starter` | Starter project for [Dagster + dbt](https://courses.dagster.io/courses/dagster-dbt) |

## Getting Started

#### Once in the Docker Container, within VS Code:

Duplicate the `.env.example` file and rename it to `.env`. Then, fill in the values for the environment variables in the file.

Then, start the Dagster UI web server:

```bash
dagster dev
```

Open http://localhost:3000 with your browser to see the project.


## Development


### Adding new Python dependencies

You can specify new Python dependencies with `uv` via `uv add <python-package>`

### Unit testing

Tests are in the `dagster_university_tests` directory and you can run tests using `pytest`:

```bash
pytest dagster_university_tests
```

### Schedules and sensors

If you want to enable Dagster [Schedules](https://docs.dagster.io/concepts/partitions-schedules-sensors/schedules) or [Sensors](https://docs.dagster.io/concepts/partitions-schedules-sensors/sensors) for your jobs, the [Dagster Daemon](https://docs.dagster.io/deployment/dagster-daemon) process must be running. This is done automatically when you run `dagster dev`.

Once your Dagster Daemon is running, you can start turning on schedules and sensors for your jobs.

## Deploy on Dagster Cloud

The easiest way to deploy your Dagster project is to use Dagster Cloud.

Check out the [Dagster Cloud Documentation](https://docs.dagster.cloud) to learn more. 
