# -- FILE: features/steps/mopes_steps.py
from behave import given, when, then, step
from mopes import Game, Team, Player, Ball

@given(u'we have an empty game')
def step_impl(context):
    context.game = Game() 

@given(u'we have team {team_id:d} with players {player1_name} and {player2_name}')
def step_impl(context, team_id, player1_name, player2_name):
    player1 = Player(player1_name)
    player2 = Player(player2_name)
    if team_id == 1:
        context.team1 = Team(player1, player2)
    elif team_id == 2:
        context.team2 = Team(player1, player2)
    else:
        raise ValueError("team id not valid")

#@given(u'we have team 2 with players player3 and player4')
#def step_impl(context):
#    raise NotImplementedError(u'STEP: Given we have team 2 with players player3 and player4')

@when(u'we add the team {team_id:d} to the game')
def step_impl(context, team_id):
    if team_id == 1:
        context.game.add(context.team1)
    elif team_id == 2:
        context.game.add(context.team2)
    else:
        raise ValueError("invalid team id")

#@when(u'we add the team 2 to the game')
#def step_impl(context):
#    raise NotImplementedError(u'STEP: When we add the team 2 to the game')

@then(u'the team {team_id:d} should have a score of {score:d} points')
def step_impl(context, team_id, score):
    if team_id == 1:
        assert context.game.team_list[0].score == score
    elif team_id == 2:
        assert context.game.team_list[1].score == score
    else:
        raise ValueError("Y U NO VALID TEAM")
    

#@then(u'the team 2 should have a score of 0 points')
#def step_impl(context):
#    raise NotImplementedError(u'STEP: Then the team 2 should have a score of 0 points')

@given(u'we have an initialized game with two teams')
def step_impl(context):
    context.game = Game(Team(Player('pepe'), Player('juan')), Team(Player('manolo'), Player('francisco')))
    assert len(context.game.team_list) == 2
    

@given(u'the current ball color is white')
def step_impl(context):
    context.current_ball = Ball()

@when(u'the team {team_id:d} scores a goal')
def step_impl(context, team_id):
    context.game.set_goal(team_id, context.current_ball)

@given(u'the next sequence of score actions')
def step_impl(context):
    for row in context.table:
        context.game.set_goal(row['team'], Ball(row['ball']))

@given(u'the team {team_id:d} has a score of {points:d} points')
def step_impl(context, team_id, points):
    context.game.team_list[team_id-1].score = points

#@given(u'the team 2 has a score of 9 points')
#def step_impl(context):
#    raise NotImplementedError(u'STEP: Given the team 2 has a score of 9 points')

@then(u'the game is over')
def step_impl(context):
    assert context.game.is_over()

@then(u'the winner team is the team {team_id:d}')
def step_impl(context, team_id):
    assert context.game.winner() == team_id

#@given(u'the team 2 has a score of 0 points')
#def step_impl(context):
#    raise NotImplementedError(u'STEP: Given the team 2 has a score of 0 points')

@when(u'the team 1 scores an autogoal')
def step_impl(context):
    raise NotImplementedError(u'STEP: When the team 1 scores an autogoal')

@given(u'the team 1 has a score of 1 points')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given the team 1 has a score of 1 points')

@given(u'the current ball color is yellow')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given the current ball color is yellow')

@given(u'the current ball color is blue')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given the current ball color is blue')

