# Python Linter GitHub Action

[![CI](https://github.com/ReasonSoftware/action-pylint/actions/workflows/release.yml/badge.svg)](https://github.com/ReasonSoftware/action-pylint/actions/workflows/release.yml)
[![Release](https://img.shields.io/github/v/release/ReasonSoftware/action-pylint)](https://github.com/ReasonSoftware/action-pylint/releases/latest)
[![Python](https://img.shields.io/badge/python-3.11.14-greenyellow.svg)](https://www.python.org/downloads/release/python-31114/)
[![Python](https://img.shields.io/badge/python-3.12.12-greenyellow.svg)](https://www.python.org/downloads/release/python-31212/)
[![Python](https://img.shields.io/badge/python-3.13.9-greenyellow.svg)](https://www.python.org/downloads/release/python-3139/)
[![Python](https://img.shields.io/badge/python-3.14.0-greenyellow.svg)](https://www.python.org/downloads/release/python-3140/)
[![Pylint](https://img.shields.io/badge/pylint-4.0.1-blue.svg)](https://pypi.org/project/pylint/)
[![Debian](https://img.shields.io/badge/debian-13.1-pink.svg)](https://www.debian.org/releases/trixie/)
[![Docker Pulls](https://img.shields.io/docker/pulls/reasonsoftware/action-pylint)](https://hub.docker.com/r/reasonsoftware/action-pylint)
[![License](https://img.shields.io/github/license/ReasonSoftware/action-pylint)](LICENSE.md)

## Overview

This **Pylint GitHub Action** runs pylint command and returns the score.  
Action fails if pylint score is less than 10.00/10.

```yaml
- name: Python linter
  id: pylint
  uses: docker://reasonsoftware/action-pylint:v3
```

Available tags:
- `v3` - latest stable release
- `v3-py3` - latest stable release with Python 3
- `v3-x.y.z-py3` - latest stable release with Python 3 and specific Pylint version
- `v3-py3.11`, `v3-py3.12`, `v3-py3.13`, `v3-py3.14` - latest stable release with selected Python version
- `v3-x.y.z-py3.11`, `v3-x.y.z-py3.12`, `v3-x.y.z-py3.13`, `v3-x.y.z-py3.14` - latest stable release with selected Python version and specific Pylint version
- `v3-x.y.z-py3.11.14`, `v3-x.y.z-py3.12.12`, `v3-x.y.z-py3.13.9`, `v3-x.y.z-py3.14.0` - latest stable release with locked versions

## Inputs

|       _Input_       |                   _Description_                   |                _Default_                 | _Required_ |
|:-------------------:|:-------------------------------------------------:|:----------------------------------------:|:----------:|
|     `filepaths`     | A list of all paths to test. ("\*/\*.py", "src/") |                   "."                    |     no     |
|      `options`      |                   Extra options                   | "--recursive=y --rcfile=/pyproject.toml" |     no     |
| `requirements_file` |             requirements.txt filepath             |                    ""                    |     no     |
|    `init_script`    |   Environment preparation shell script filepath   |                    ""                    |     no     |

## Outputs

<details>

| _Output_ |    _Description_     | _Example_  |
|:--------:|:--------------------:|:----------:|
| `score`  | Pylint checked score | "10.00/10" |

</details>

## Annotations

<details>
<summary>Pylint failed</summary>

:red_circle: Pylint score
9.18/10

</details>

<details>
<summary>Pylint passed</summary>

:grey_exclamation: Pylint score
10.00/10

</details>

## License

[Apache-2.0](LICENSE.md) © 2025 [Reason Cybersecurity Ltd.](https://www.reasonsecurity.com/)
