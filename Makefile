.PHONY: venv venv-win install-reqs install-reqs-win install-reqs-dev run run-win run-dev clean

# Create virtual environment
venv:
	$(shell pyenv which python) -m venv venv
venv-win:
	python -m venv venv

# Install requirements
install-reqs: venv
	. venv/bin/activate && python -m pip install --upgrade pip
	. venv/bin/activate && pip install -r requirements.txt
install-reqs-win: venv-win
	.\venv\Scripts\activate && venv\Scripts\python.exe -m pip install --upgrade pip
	.\venv\Scripts\activate && pip install -r requirements.txt
install-reqs-dev:
	python -m poetry env use $(shell pyenv which python)
	python -m poetry install --no-root

# Run application
run: install-reqs
	. venv/bin/activate && jupyter-lab
run-win: install-reqs-win
	.\venv\Scripts\activate && jupyter-lab
run-dev: install-reqs-dev
	python -m poetry run jupyter-lab

# Clean up cache and compiled Python files
clean:
	find . -type f -name "*.pyc" -delete
	find . -type d -name "__pycache__" -delete
