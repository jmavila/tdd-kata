echo "Downloading repository"

git clone https://github.com/jmavila/tdd-kata.git

cd tdd

echo "Set up virtualenv"

virtualenv tdd_venv

source tdd_venv/bin/activate

pip install -r tdd-kata/requirements.txt

#$1 should be the team number
git checkout -b team_%1