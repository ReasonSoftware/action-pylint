#!/bin/sh

input_filepaths=${1:-${INPUT_FILEPATHS}}
filepaths=${input_filepaths:-.}
input_options=${2:-"${INPUT_OPTIONS}"}
options=${input_options:-"--recursive=y --rcfile=/pyproject.toml"}
input_requirements_file=${3:-"${INPUT_REQUIREMENTS_FILE}"}
requirements_file=${input_requirements_file:-""}
input_init_script=${4:-"${INPUT_INIT_SCRIPT}"}
init_script=${input_init_script:-""}

if [ -n "${init_script}" ]; then
  echo "Running user's shell script"
  /bin/sh "${init_script}"
fi

if [ -n "${requirements_file}" ]; then
  echo "Installing pip requirements"
  pip install -r "${requirements_file}"
fi

echo Running: pylint ${options} ${filepaths}

result=$(pylint ${options} ${filepaths})
exit_code=$?

echo "${result}"

score=$(echo "${result}" | sed -nr 's/Your code has been rated at ([0-9\.]+\/10).*/\1/p')

if [ "${GITHUB_OUTPUT}" ]; then
  echo "score=${score}" >>"${GITHUB_OUTPUT}"
fi

if [ ${exit_code} -ne 0 ]; then
  echo "::error title=Pylint score::${score}"
else
  echo "::notice title=Pylint score::${score}"
fi

exit ${exit_code}
