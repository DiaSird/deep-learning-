default: run

run:
		poetry run python ./src/run.py

run-simpl:
		poetry run python ./src/simpl_pcept.py

run-neu3:
		poetry run python ./src/neural3.py

run-sigm:
		poetry run python ./src/stepsig.py

install-dev:
		poetry install

install:
		poetry install --no-interaction


lint:
    # stop the build if there are Python syntax errors or undefined names
		poetry run flake8 ./src ./tests --count --select=E9,F63,F7,F82 --show-source --statistics
    # exit-zero treats all errors as warnings. The width of the GitHub editor is 127 characters.
		poetry run flake8 ./src ./tests  --count --exit-zero --max-complexity=10 --max-line-length=100 --statistics

test:
		poetry run python -m unittest

clean:
		rm -rf  **/__pycache__ **/**/__pycache__


.PHONY: clean test
