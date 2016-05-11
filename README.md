# TDD bi4group labday: _"Game of Mopes kata"_

## Installation instructions

### 1. Clone the repo
```
git clone https://github.com/jmavila/tdd-kata.git
```

### 2. Create virtualenv
```
cd tdd
virtualenv tdd_venv
source tdd_venv/bin/activate
```

### 3. Install requirements
```
pip install -r requirements.txt
```

### 4. Create your own branch
```
git branch team_1
```


## Make the features pass!

### 1. Start by running behave for the first feature: 'create_game'
```
 behave features/create_game.feature
```

### 2. Implement the steps for the scenarios in mopes_steps.py
```
 vim features/steps/mopes_steps
```

### 3. Develop code to fix the steps in mopes.py
```
 vim mopes.py
```

### 4. When first feature is done, continue with 'scores.feature'
```
 behave features/scores.feature
```

### 5. Finally finish with last feature: 'mopes.feature'
```
 behave features/mopes.feature
```

### 6. When all your features/scenarios passes, push your branch
```
 git push --set-upstream origin team_1
```

### 7. Then create a new pull request and check Travis to see it in action!

### 8. Congrats! You did your first TDD development :)
