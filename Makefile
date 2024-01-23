install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C src/main.py

format:
	black *.py

test:
	python -m pytest -vv tests/test_main.py

load-test:
	locust -f locustfile.py --headless --users 10 --spawn-rate 1 --run-time 60s --host http://localhost:5000
