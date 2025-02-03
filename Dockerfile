# Use Python 3.12 as the base image
FROM python:3.12-slim

# Install uv & git
RUN pip install uv
RUN apt-get update && apt-get install -y git

# Sets up the working directory
WORKDIR /dagster_proj

# Copy all project files into the image
COPY . /dagster_proj

# Create the virtual environment and install dependencies using uv
RUN uv venv /dagster_proj/.venv
ENV PATH="/dagster_proj/.venv/bin:$PATH"
RUN uv pip install --system -e ".[dev]"

# Expose the Dagster webserver port
EXPOSE 3000

# Keeps the container running indefinitely to attach 
# to VS Code via the Remote Explorer Extension
CMD [ "sleep", "infinity" ]