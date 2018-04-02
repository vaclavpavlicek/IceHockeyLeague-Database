USE extraliga;
INSERT INTO Arenas (name, latitude, longitude) VALUES ("Tipsport arena", 50.0403822, 15.7732385), ("ČPP aréna", 50.2065181, 15.8308505);
INSERT INTO Teams (name) VALUES ("HC Dynamo Pardubice"), ("HK Mountfield Hradec Králové");
INSERT INTO Seasons (code, startDate, endDate) VALUES ("2017/2018", STR_TO_DATE('1-09-2017', '%d-%m-%Y'), STR_TO_DATE('28-04-2018', '%d-%m-%Y'));
INSERT INTO Leagues (name) VALUES ("Extraliga");
INSERT INTO LeaguesSeasons (leagueId, seasonId) VALUES (1, 1);
INSERT INTO TeamsLeaguesSeasons (teamsId, leagueId, seasonId) VALUES (1, 1, 1), (2, 1, 1);
INSERT INTO Countries (countryCode, name) VALUES ("CZ", "Česká republika");
INSERT INTO People (name, surname, gender, countryCode) VALUES ("Miloš", "Holaň", "MALE", "CZ"), ("Václav", "Sýkora", "MALE", "CZ"), ("Martin", "Kaut", "MALE", "CZ"), ("Petr", "Sýkora", "MALE", "CZ"), ("Jaroslav", "Bednář", "MALE", "CZ"), ("Petr", "Koukal", "MALE", "CZ"), ("René", "Hrabal", "MALE", "CZ"), ("Vladimír", "Hejduk", "MALE", "CZ");
INSERT INTO RealizationTeam (position, teamId, peopleId) VALUES ('MAIN COACH', 1, 1), ('MAIN COACH', 2, 2);
INSERT INTO Referees (position, peopleId) VALUES ('MAIN', 7), ('LINE', 8);
INSERT INTO Players (number, salary, position, peopleId) VALUES (21, 1000000, 'FORWARD', 3), (37, 2000000, 'FORWARD', 4), (38, 1500000, 'FORWARD', 5), (42, 500000, 'FORWARD', 6);
INSERT INTO TeamsPlayers (teamId, playerId, contractStart) VALUES (1, 1, STR_TO_DATE('1-09-2017', '%d-%m-%Y')), (1, 2, STR_TO_DATE('1-09-2017', '%d-%m-%Y')), (2, 4, STR_TO_DATE('1-09-2017', '%d-%m-%Y')), (2, 3, STR_TO_DATE('1-09-2017', '%d-%m-%Y'));
INSERT INTO Matches (teamHomeId, teamAwayId, goalsHome, goalsAway, arenaId, endType, datetime) VALUES (1, 2, 10, 0, 1, 'BASIC TIME', '2017-09-01 18:00:00'), (2, 1, 0, 9, 2, 'BASIC TIME', '2018-01-07 18:00:00');
INSERT INTO Goals (playerId, time) VALUES (2, "00:00:10"), (1, "00:10:10"), (2, "00:11:10"), (1, "00:20:10"), (1, "00:21:10"), (2, "00:22:10"), (1, "00:30:10"), (1, "00:40:10"), (2, "00:50:10"), (2, "00:59:10"), (1, "00:00:30"), (2, "00:01:10"), (1, "00:20:10"), (1, "00:21:10"), (2, "00:25:10"), (1, "00:30:10"), (1, "00:35:10"), (2, "00:40:10"), (2, "00:49:10");
INSERT INTO Passes (goalId, playerId, `order`) VALUES (1, 1, 0), (5, 2, 0);
INSERT INTO PenaltiesTypes (name) VALUES ("Sekání"), ("Hra vysokou holí");
INSERT INTO Penalties (matchId, playerId, time, duration, typeId) VALUES (1, 3, "00:05:00", "00:02:00", 1), (1, 4, "00:15:00", "00:02:00", 2);
INSERT INTO RefereesMatches (refereeId, matchId) VALUES (1, 1), (2, 1), (1, 2), (2, 2);