# tyr-predictor

Win prediction for the game **Tyr**. Before a match, each team chooses its tanks and the map is set; this project uses that information to predict which team will win.

Three machine learning models, each from a different model family, are trained on historical match data and compared on the same prediction task.

## Team

| Name | Email |
|------|-------|
| Thomas Schleicher | [thschleicher@edu.aau.at](mailto:thschleicher@edu.aau.at) |
| Raphael Walcher | [rawalcher@edu.aau.at](mailto:rawalcher@edu.aau.at) |
| Jakob Stornig | [jastornig@edu.aau.at](mailto:jastornig@edu.aau.at) |

## Setup

This project uses [uv](https://docs.astral.sh/uv/) to manage its dependencies. Python >= 3.15 is required.

Install uv by following the instructions in its documentation: <https://docs.astral.sh/uv/getting-started/installation/>.

### Verify the installation

```bash
uv --version
```

### Install dependencies

Run this once from the project root. It creates a `.venv` virtual environment in the project root and installs everything pinned in `uv.lock`, including the `dev` dependency group:

```bash
uv sync
```

### Use the environment

Prefix commands with `uv run` to run them inside the virtual environment, e.g.:

```bash
uv run python your_script.py
```

Or activate the environment for the current shell and run commands directly:

```bash
source .venv/bin/activate
```

To add a dependency or refresh the lock file:

```bash
uv add <package>
uv lock --upgrade
```

### Jupyter notebooks

Run JupyterLab against the project environment without adding Jupyter to the project dependencies:

```bash
uv run --with jupyter jupyter lab
```

Notebooks can then import project modules (`src/`, etc.) directly. To install packages from inside a notebook, register a dedicated kernel once:

```bash
uv run ipython kernel install --user --env VIRTUAL_ENV $(pwd)/.venv --name=tyr-predictor
```

Select the `tyr-predictor` kernel in the notebook, then use `!uv add <package>` to add a dependency (updates `pyproject.toml` and `uv.lock`) or `!uv pip install <package>` to install it only into `.venv`.

## Large files (Git LFS)

Datasets and Weights & Biases data are stored with [Git LFS](https://git-lfs.com/). Install it once per machine:

Install Git LFS by following the instructions in its repository: <https://github.com/git-lfs/git-lfs?utm_source=gitlfs_site&utm_medium=installation_link&utm_campaign=gitlfs#installing>.

Then run:

```bash
git lfs install
```

Files matching `data/**` are managed by LFS (see `.gitattributes`). After cloning, fetch them with:

```bash
git lfs pull
```

## AI usage

See [AI_USAGE.md](./AI_USAGE.md) for how AI was used in this project.
