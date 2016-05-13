class Game(object):
    def __init__(self, *args):
        self.team_list = list(args)

    def add(self, team):
        self.team_list.append(team)

    def set_goal(self, team_id, ball):
        self.team_list[team_id-1].score += ball.value()

    def set_autogoal(self, team_id, ball):
        self.team_list[team_id-1].score -= ball.value()

    def is_over(self):
        self.team_list[0].score == 9 or self.team_list[1].score == 9
    
    def winner(self):
        if self.is_over():
            return self.team_list.index(sorted(self.team_list, key=lambda x: x.score))
        return None

class Player(object):
    def __init__(self, name):
        self.name = name

class Team(object):
    def __init__(self, player1, player2):
        self.score = 0
        self.player1 = player1
        self.player2 = player2

class Ball(object):
    def __init__(self, color="white"):
        self.color = color

    def value(self):
        if self.color == 'white' or self.color == 'yellow':
            return 1
        elif self.color == 'blue':
            return 2
        else:
            raise "Invalid ball"
