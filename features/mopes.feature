Feature: Mopes
  # Mopes detection

  Scenario: Simple mopa detection
    Given we have an initialized game with two teams
    And the team 1 has a score of 9 points
    And the team 2 has a score of 0 points
    When the team 1 scores a goal
    Then the game is over
    And the winner team is the team 1
    And the team 1 is mopper
    And the team 2 is mopped
    And the game is a mopa

  Scenario: Advanced mopa detection in sequence with multiple color balls
    Given we have an initialized game with two teams
    And the next sequence of score actions:
      | team | ball   |
      | 1    | white  |
      | 2    | white  |
      | 1    | blue   |
      | 1    | blue   |
      | 1    | blue   |
      | 1    | blue   |
      | 2    | yellow |
      | 1    | white  |
    Then the game is over
      And the winner team is the team 1
      And the team 1 is mopper
      And the team 2 is mopped
      And the game is a mopaFeature: Scores # features/scores.feature:1

  Scenario: Basic scoring                            # features/scores.feature:3
    Given we have an initialized game with two teams # features/steps/mopes_steps.py:45
      Traceback (most recent call last):
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1456, in run
          match.run(runner.context)
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1903, in run
          self.func(context, *args, **kwargs)
        File "features/steps/mopes_steps.py", line 47, in step_impl
          raise NotImplementedError(u'STEP: Given we have an initialized game with two teams')
      NotImplementedError: STEP: Given we have an initialized game with two teams

    And the current ball color is white              # None
    When the team 1 scores a goal                    # None
    Then the team 1 should have a score of 1 points  # None
    And the team 2 should have a score of 0 points   # None

  Scenario: Advanced scoring with single color ball  # features/scores.feature:10
    Given we have an initialized game with two teams # features/steps/mopes_steps.py:45
      Traceback (most recent call last):
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1456, in run
          match.run(runner.context)
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1903, in run
          self.func(context, *args, **kwargs)
        File "features/steps/mopes_steps.py", line 47, in step_impl
          raise NotImplementedError(u'STEP: Given we have an initialized game with two teams')
      NotImplementedError: STEP: Given we have an initialized game with two teams

    And the next sequence of score actions           # None
      | team | ball  |
      | 1    | white |
      | 2    | white |
      | 1    | white |
    Then the team 1 should have a score of 2 points  # None
    And the team 2 should have a score of 1 points   # None

  Scenario: Advanced scoring with multiple color balls  # features/scores.feature:20
    Given we have an initialized game with two teams    # features/steps/mopes_steps.py:45
      Traceback (most recent call last):
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1456, in run
          match.run(runner.context)
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1903, in run
          self.func(context, *args, **kwargs)
        File "features/steps/mopes_steps.py", line 47, in step_impl
          raise NotImplementedError(u'STEP: Given we have an initialized game with two teams')
      NotImplementedError: STEP: Given we have an initialized game with two teams

    And the next sequence of score actions              # None
      | team | ball   |
      | 1    | white  |
      | 2    | blue   |
      | 1    | yellow |
    Then the team 1 should have a score of 0 points     # None
    And the team 2 should have a score of 2 points      # None

  Scenario: Game completion                          # features/scores.feature:30
    Given we have an initialized game with two teams # features/steps/mopes_steps.py:45
      Traceback (most recent call last):
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1456, in run
          match.run(runner.context)
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1903, in run
          self.func(context, *args, **kwargs)
        File "features/steps/mopes_steps.py", line 47, in step_impl
          raise NotImplementedError(u'STEP: Given we have an initialized game with two teams')
      NotImplementedError: STEP: Given we have an initialized game with two teams

    And the team 1 has a score of 9 points           # None
    And the team 2 has a score of 9 points           # None
    When the team 1 scores a goal                    # None
    Then the game is over                            # None
    And the winner team is the team 1                # None

  Scenario: Stop scoring when ten goals reached      # features/scores.feature:38
    Given we have an initialized game with two teams # features/steps/mopes_steps.py:45
      Traceback (most recent call last):
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1456, in run
          match.run(runner.context)
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1903, in run
          self.func(context, *args, **kwargs)
        File "features/steps/mopes_steps.py", line 47, in step_impl
          raise NotImplementedError(u'STEP: Given we have an initialized game with two teams')
      NotImplementedError: STEP: Given we have an initialized game with two teams

    And the team 1 has a score of 9 points           # None
    And the team 2 has a score of 0 points           # None
    When the team 1 scores a goal                    # None
    And the team 1 scores a goal                     # None
    Then the game is over                            # None
    And the team 1 should have a score of 10 points  # None

  Scenario: Auto goal with a white ball              # features/scores.feature:47
    Given we have an initialized game with two teams # features/steps/mopes_steps.py:45
      Traceback (most recent call last):
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1456, in run
          match.run(runner.context)
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1903, in run
          self.func(context, *args, **kwargs)
        File "features/steps/mopes_steps.py", line 47, in step_impl
          raise NotImplementedError(u'STEP: Given we have an initialized game with two teams')
      NotImplementedError: STEP: Given we have an initialized game with two teams

    And the team 1 has a score of 9 points           # None
    When the team 1 scores an autogoal               # None
    Then the team 1 should have a score of 8 points  # None

  Scenario: Auto goal with a yellow ball             # features/scores.feature:53
    Given we have an initialized game with two teams # features/steps/mopes_steps.py:45
      Traceback (most recent call last):
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1456, in run
          match.run(runner.context)
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1903, in run
          self.func(context, *args, **kwargs)
        File "features/steps/mopes_steps.py", line 47, in step_impl
          raise NotImplementedError(u'STEP: Given we have an initialized game with two teams')
      NotImplementedError: STEP: Given we have an initialized game with two teams

    And the team 1 has a score of 1 points           # None
    And the current ball color is yellow             # None
    When the team 1 scores an autogoal               # None
    Then the team 1 should have a score of -1 points # None

  Scenario: Auto goal with a blue ball               # features/scores.feature:60
    Given we have an initialized game with two teams # features/steps/mopes_steps.py:45
      Traceback (most recent call last):
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1456, in run
          match.run(runner.context)
        File "/home/jemromerol/workspace/tdd-kata/tdd_venv/local/lib/python2.7/site-packages/behave/model.py", line 1903, in run
          self.func(context, *args, **kwargs)
        File "features/steps/mopes_steps.py", line 47, in step_impl
          raise NotImplementedError(u'STEP: Given we have an initialized game with two teams')
      NotImplementedError: STEP: Given we have an initialized game with two teams

    And the team 1 has a score of 1 points           # None
    And the current ball color is blue               # None
    When the team 1 scores an autogoal               # None
    Then the team 1 should have a score of -1 points # None


Failing scenarios:
  features/scores.feature:3  Basic scoring
  features/scores.feature:10  Advanced scoring with single color ball
  features/scores.feature:20  Advanced scoring with multiple color balls
  features/scores.feature:30  Game completion
  features/scores.feature:38  Stop scoring when ten goals reached
  features/scores.feature:47  Auto goal with a white ball
  features/scores.feature:53  Auto goal with a yellow ball
  features/scores.feature:60  Auto goal with a blue ball

0 features passed, 1 failed, 0 skipped
0 scenarios passed, 8 failed, 0 skipped
0 steps passed, 8 failed, 2 skipped, 30 undefined
Took 0m0.001s
