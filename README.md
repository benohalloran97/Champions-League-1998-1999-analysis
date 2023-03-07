# Champions-League-1998-1999-analysis
Table that holds the fixtures and results of the UEFA Champions League from the 1998-1999 season with some analysis.


I took the fixtures and results from the UEFA website: https://www.uefa.com/uefachampionsleague/history/seasons/1998/matches/ 

I then input these into a table I created with columns for the row ID, home team, away team, home score, away score and the result which was either H for home team win, A for away team win and D for draw.

I then ran some select queries:

The first one was a concatenate to present the information in a clearer way.
The second one was working out if there was a home team advantage by counting how many result ended in a home team victory.
The third one used a sum function to work out the total goals scored in the competition.
I then used the AVG function to work out average goals per game, average home team score, average away team score.
I calculated how many teams were in the competition and average goals per team.
I worked out the  the highest scoring game, who were the teams and what was the score.
I have also written some code that can be used to work out how many total goals a specific team has scored in the competition.
Finally I selected the matches that did not finish in a draw, ordered by away team wins and limited to the first 5 results.
