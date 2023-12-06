# Python Linter GitHub Action

[![CI](https://github.com/ReasonSoftware/action-pylint/actions/workflows/release.yml/badge.svg)](https://github.com/ReasonSoftware/action-pylint/actions/workflows/release.yml)
[![Release](https://img.shields.io/github/v/release/ReasonSoftware/action-pylint)](https://github.com/ReasonSoftware/action-pylint/releases/latest)
[![Python 3.12.0](https://img.shields.io/badge/python-3.12.0-greenyellow.svg)](https://www.python.org/downloads/release/python-3120/)
[![Pylint 3.0.2](https://img.shields.io/badge/pylint-3.0.2-blue.svg)](https://pypi.org/project/pylint/)
[![Alpine 3.18](https://img.shields.io/badge/alpine-3.18-lightblue.svg)](https://hub.docker.com/_/alpine)
[![License](https://img.shields.io/github/license/ReasonSoftware/action-pylint)](LICENSE.md)

## Overview

This **Pylint GitHub Action** runs pylint command and returns the score.  
Action fails if pylint score is less than 10.00/10.

```yaml
- name: Python linter
  id: pylint
  uses: docker://reasonsoftware/action-pylint:v1
```

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

[Apache-2.0](LICENSE.md) © 2023 [Reason Cybersecurity Ltd.](https://www.reasonsecurity.com/)
