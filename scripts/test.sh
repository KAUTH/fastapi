#!/usr/bin/env bash

set -e
set -x

export PYTHONPATH=./docs_src
coverage run -m pytest --ignore=tests/test_ws_router.py -n 4 -v -o log_cli=true tests ${@}
## worked: coverage run -m pytest -n 2 tests --dist load --maxfail=1 ${@}

# Also worked
# coverage run -m pytest -m "not websocket" -n 1 -v -o log_cli=true tests --dist loadscope ${@}
# coverage run -m pytest -m "websocket"