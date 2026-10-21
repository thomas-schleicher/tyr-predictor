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

This project uses [Poetry](https://github.com/python-poetry/poetry) to manage its dependencies. Python >= 3.15 is required.

Install Poetry by following the instructions in its repository: <https://github.com/python-poetry/poetry#installation>.

### Verify the installation

```bash
poetry --version
```

### Install dependencies

Run this once from the project root. It creates a `.venv` virtual environment in the project root and installs everything pinned in `poetry.lock`:

```bash
poetry install
```

### Use the environment

Prefix commands with `poetry run` to run them inside the virtual environment, e.g.:

```bash
poetry run python your_script.py
```

Or activate the environment for the current shell and run commands directly:

```bash
eval $(poetry env activate)
```

To add a dependency or refresh the lock file:

```bash
poetry add <package>
poetry update
```

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
