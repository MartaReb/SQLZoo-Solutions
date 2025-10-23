--1. Show the matchid and player name for all goals scored by Germany.	
	
SELECT matchid, player	
FROM goal	
WHERE teamid = 'GER';

--2. Show id, stadium, team1, team2 for just game 1012.	
	
SELECT id,stadium,team1,team2	
FROM game	
WHERE id = 1012;	

--3. Show the player, teamid, stadium and mdate for every German goal.	
	
SELECT goal.player, goal.teamid, game.stadium, game.mdate	
FROM game	
JOIN goal	
ON game.id= goal.matchid	
WHERE goal.teamid = 'GER';	

--4. Show the team1, team2 and player for every goal scored by a player called Mario.		
		
SELECT game.team1, game.team2, goal.player		
FROM game		
JOIN goal		
ON game.id = goal.matchid		
WHERE goal.player LIKE 'Mario%';		