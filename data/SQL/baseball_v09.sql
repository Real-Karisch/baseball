PGDMP     2                	    x           baseball     12.3 (Ubuntu 12.3-1.pgdg18.04+1)    12.4 *    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16389    baseball    DATABASE     r   CREATE DATABASE baseball WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE baseball;
                karisch    false            	            2615    32923    major    SCHEMA        CREATE SCHEMA major;
    DROP SCHEMA major;
                karisch    false                        2615    33105    minor    SCHEMA        CREATE SCHEMA minor;
    DROP SCHEMA minor;
                karisch    false            ?            1259    41249    actions    TABLE     ?  CREATE TABLE major.actions (
    "gamePk" integer NOT NULL,
    "atBatIndex" integer NOT NULL,
    "actionIndex" integer NOT NULL,
    "eventType" character varying(100),
    "awayScore" integer,
    "homeScore" integer,
    "isScoringPlay" character varying(50),
    balls integer,
    strikes integer,
    outs integer,
    "isPitch" character varying(50),
    "playerId" integer,
    "eventDescription" character varying(1000)
);
    DROP TABLE major.actions;
       major         heap    karisch    false    9            ?            1259    41255    atbats    TABLE     l  CREATE TABLE major.atbats (
    "gamePk" integer NOT NULL,
    "atBatIndex" integer NOT NULL,
    result character varying(50),
    "resultType" character varying(50),
    "resultDesc" character varying(500),
    rbi integer,
    "awayScore" integer,
    "homeScore" integer,
    "isTopInning" character varying(50),
    inning integer,
    "isScoringPlay" character varying(50),
    "hasReview" character varying(50),
    "hasOut" character varying(50),
    "captivatingIndex" integer,
    "batterID" integer,
    "batSideCode" character varying(50),
    "batSideDesc" character varying(50),
    "pitcherID" integer
);
    DROP TABLE major.atbats;
       major         heap    karisch    false    9            ?            1259    41261 	   divisions    TABLE     ?   CREATE TABLE major.divisions (
    id integer NOT NULL,
    name character varying(100),
    "nameShort" character varying(50),
    abbrev character varying(50),
    "leagueId" integer,
    "hasWildcard" character varying(50)
);
    DROP TABLE major.divisions;
       major         heap    karisch    false    9            ?            1259    41264    games    TABLE     ?  CREATE TABLE major.games (
    pk integer NOT NULL,
    type character varying(50),
    "doubleHeader" character varying(50),
    id character varying(50),
    "gamedayType" character varying(50),
    "tieBreaker" character varying(50),
    "calendarEventID" character varying(50),
    season integer,
    "seasonDisplay" integer,
    datetime character varying(50),
    "originalDate" character varying(50),
    "dayNight" character varying(50),
    "time" character varying(50),
    ampm character varying(50),
    "awayGamesPlayed" integer,
    "awayWins" integer,
    "awayLosses" integer,
    "awayDivisionLeader" character varying(50),
    "homeGamesPlayed" integer,
    "homeWins" integer,
    "homeLosses" integer,
    "homeDivisionLeader" character varying(50),
    "venueID" integer,
    "weatherConditions" character varying(50),
    temp integer,
    wind character varying(50),
    "noHitter" character varying(50),
    "perfectGame" character varying(50),
    "awayId" integer,
    "homeId" integer
);
    DROP TABLE major.games;
       major         heap    karisch    false    9            ?            1259    41270    leagues    TABLE     ?   CREATE TABLE major.leagues (
    id integer NOT NULL,
    season integer NOT NULL,
    name character varying(50),
    abbrev character varying(50),
    "nameShort" character varying(50)
);
    DROP TABLE major.leagues;
       major         heap    karisch    false    9            ?            1259    41273    pitches    TABLE     ?  CREATE TABLE major.pitches (
    "gamePk" integer NOT NULL,
    "atBatIndex" integer NOT NULL,
    "pitchIndex" integer NOT NULL,
    "callCode" character varying(50),
    "callDesc" character varying(50),
    "isInPlay" character varying(50),
    "isStrike" character varying(50),
    "isBall" character varying(50),
    "typeCode" character varying(50),
    "typeDesc" character varying(100),
    "hasReview" character varying(50),
    "countBalls" integer,
    "countStrikes" integer,
    "startSpeed" numeric(5,1),
    "endSpeed" numeric(5,1),
    "szTop" numeric(7,2),
    "szBottom" numeric(7,2),
    "aX" numeric(7,2),
    "aY" numeric(7,2),
    "aZ" numeric(7,2),
    "pfxX" numeric(7,2),
    "pfxZ" numeric(7,2),
    "pX" numeric(7,2),
    "pZ" numeric(7,2),
    "vX0" numeric(7,2),
    "vY0" numeric(7,2),
    "vZ0" numeric(7,2),
    x numeric(7,2),
    y numeric(7,2),
    x0 numeric(7,2),
    y0 numeric(7,2),
    z0 numeric(7,2),
    "breakAngle" numeric(7,1),
    "breakLength" numeric(7,1),
    "breakY" numeric(7,1),
    "spinRate" integer,
    "spinDirection" integer,
    zone integer,
    "typeConfidence" numeric(7,2),
    "plateTime" numeric(7,2),
    extension numeric(7,2),
    "pitchNumber" integer,
    "launchSpeed" numeric(7,2),
    "launchAngle" numeric(7,2),
    "totalDistance" numeric(7,2),
    trajectory character varying(50),
    hardness character varying(50),
    location integer,
    "coordX" numeric(7,2),
    "coordY" numeric(7,2)
);
    DROP TABLE major.pitches;
       major         heap    karisch    false    9            ?            1259    41279    players    TABLE     ?  CREATE TABLE major.players (
    id integer NOT NULL,
    "fullName" character varying(100),
    "firstName" character varying(50),
    "lastName" character varying(50),
    "primaryNumber" character varying(50),
    "birthDate" character varying(50),
    "birthCity" character varying(50),
    "birthCountry" character varying(50),
    height character varying(50),
    weight integer,
    "positionCode" character varying(50),
    "positionName" character varying(50),
    "positionType" character varying(50),
    "positionAbbrev" character varying(50),
    "useName" character varying(50),
    "middleName" character varying(50),
    "boxscoreName" character varying(100),
    "isPlayer" character varying(50),
    "mlbDebutDate" character varying(50),
    "batSideCode" character varying(50),
    "batSideDesc" character varying(50),
    "pitchHandCode" character varying(50),
    "pitchHandDesc" character varying(50),
    "szTop" double precision,
    "szBottom" double precision
);
    DROP TABLE major.players;
       major         heap    karisch    false    9            ?            1259    41285    runners    TABLE     <  CREATE TABLE major.runners (
    "gamePk" integer NOT NULL,
    "atBatIndex" integer NOT NULL,
    "playIndex" integer NOT NULL,
    "startBase" character varying(50),
    "endBase" character varying(50),
    "isOut" character varying(50),
    "outNumber" character varying(50),
    "eventType" character varying(100),
    "movementReason" character varying(100),
    "runnerId" integer,
    "isScoringEvent" character varying(50),
    rbi character varying(50),
    earned character varying(50),
    "outBase" character varying(50),
    "runnerIndex" integer NOT NULL
);
    DROP TABLE major.runners;
       major         heap    karisch    false    9            ?            1259    41291    seasons    TABLE     ?  CREATE TABLE major.seasons (
    "seasonId" integer NOT NULL,
    "regSeasStartDate" character varying(50),
    "regSeasEndDate" character varying(50),
    "preSeasStartDate" character varying(50),
    "preSeasEndDate" character varying(50),
    "postSeasStartDate" character varying(50),
    "postSeasEndDate" character varying(50),
    "lastDate1stHalf" character varying(50),
    "firstDate2ndHalf" character varying(50),
    "allStarDate" character varying(50)
);
    DROP TABLE major.seasons;
       major         heap    karisch    false    9            ?            1259    41294    teams    TABLE     ?  CREATE TABLE major.teams (
    id integer NOT NULL,
    name character varying(50),
    season integer NOT NULL,
    "venueID" integer,
    "teamCode" character varying(50),
    "fileCode" character varying(50),
    abbrev character varying(50),
    "teamName" character varying(50),
    "locationName" character varying(50),
    "firstYearOfPlay" integer,
    "leagueID" integer,
    "divisionID" integer,
    "shortName" character varying(50)
);
    DROP TABLE major.teams;
       major         heap    karisch    false    9            ?            1259    41297    venues    TABLE       CREATE TABLE major.venues (
    id integer NOT NULL,
    name character varying(100),
    city character varying(50),
    state character varying(50),
    latitude character varying(50),
    longitude character varying(50),
    "tzOffset" character varying(50),
    "tzName" character varying(50),
    capacity integer,
    "turfType" character varying(50),
    "roofType" character varying(50),
    "leftLine" integer,
    "leftCenter" integer,
    center integer,
    "rightCenter" integer,
    "rightLine" integer
);
    DROP TABLE major.venues;
       major         heap    karisch    false    9            ?
           2606    41304    actions actions_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY major.actions
    ADD CONSTRAINT actions_pkey PRIMARY KEY ("gamePk", "atBatIndex", "actionIndex");
 =   ALTER TABLE ONLY major.actions DROP CONSTRAINT actions_pkey;
       major            karisch    false    204    204    204                       2606    41306    atbats atBats_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY major.atbats
    ADD CONSTRAINT "atBats_pkey" PRIMARY KEY ("gamePk", "atBatIndex");
 =   ALTER TABLE ONLY major.atbats DROP CONSTRAINT "atBats_pkey";
       major            karisch    false    205    205                       2606    41308    divisions divisions_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY major.divisions
    ADD CONSTRAINT divisions_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY major.divisions DROP CONSTRAINT divisions_pkey;
       major            karisch    false    206                       2606    41310    games games_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY major.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (pk);
 9   ALTER TABLE ONLY major.games DROP CONSTRAINT games_pkey;
       major            karisch    false    207                       2606    41312    leagues leagues_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY major.leagues
    ADD CONSTRAINT leagues_pkey PRIMARY KEY (id, season);
 =   ALTER TABLE ONLY major.leagues DROP CONSTRAINT leagues_pkey;
       major            karisch    false    208    208            	           2606    41314    pitches pitches_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY major.pitches
    ADD CONSTRAINT pitches_pkey PRIMARY KEY ("gamePk", "atBatIndex", "pitchIndex");
 =   ALTER TABLE ONLY major.pitches DROP CONSTRAINT pitches_pkey;
       major            karisch    false    209    209    209                       2606    41316    players players_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY major.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);
 =   ALTER TABLE ONLY major.players DROP CONSTRAINT players_pkey;
       major            karisch    false    210                       2606    41318    runners runners_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY major.runners
    ADD CONSTRAINT runners_pkey PRIMARY KEY ("gamePk", "atBatIndex", "runnerIndex");
 =   ALTER TABLE ONLY major.runners DROP CONSTRAINT runners_pkey;
       major            karisch    false    211    211    211                       2606    41320    seasons seasons_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY major.seasons
    ADD CONSTRAINT seasons_pkey PRIMARY KEY ("seasonId");
 =   ALTER TABLE ONLY major.seasons DROP CONSTRAINT seasons_pkey;
       major            karisch    false    212                       2606    41322    teams teams_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY major.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id, season);
 9   ALTER TABLE ONLY major.teams DROP CONSTRAINT teams_pkey;
       major            karisch    false    213    213                       2606    41324    venues venues_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY major.venues
    ADD CONSTRAINT venues_pkey PRIMARY KEY (id);
 ;   ALTER TABLE ONLY major.venues DROP CONSTRAINT venues_pkey;
       major            karisch    false    214                       2606    41325    games awayTeamFK_games->teams    FK CONSTRAINT     ?   ALTER TABLE ONLY major.games
    ADD CONSTRAINT "awayTeamFK_games->teams" FOREIGN KEY ("awayId", season) REFERENCES major.teams(id, season) NOT VALID;
 H   ALTER TABLE ONLY major.games DROP CONSTRAINT "awayTeamFK_games->teams";
       major          karisch    false    207    213    213    2833    207                       2606    41330 !   teams divisionFK_teams->divisions    FK CONSTRAINT     ?   ALTER TABLE ONLY major.teams
    ADD CONSTRAINT "divisionFK_teams->divisions" FOREIGN KEY ("divisionID") REFERENCES major.divisions(id) NOT VALID;
 L   ALTER TABLE ONLY major.teams DROP CONSTRAINT "divisionFK_teams->divisions";
       major          karisch    false    2819    206    213                       2606    41335    actions gameFK_actions->games    FK CONSTRAINT     ?   ALTER TABLE ONLY major.actions
    ADD CONSTRAINT "gameFK_actions->games" FOREIGN KEY ("gamePk") REFERENCES major.games(pk) NOT VALID;
 H   ALTER TABLE ONLY major.actions DROP CONSTRAINT "gameFK_actions->games";
       major          karisch    false    2821    207    204                       2606    41340    pitches gameFK_pitches->games    FK CONSTRAINT     ?   ALTER TABLE ONLY major.pitches
    ADD CONSTRAINT "gameFK_pitches->games" FOREIGN KEY ("gamePk") REFERENCES major.games(pk) NOT VALID;
 H   ALTER TABLE ONLY major.pitches DROP CONSTRAINT "gameFK_pitches->games";
       major          karisch    false    2821    207    209                       2606    41345    runners gameFK_runners->games    FK CONSTRAINT     ?   ALTER TABLE ONLY major.runners
    ADD CONSTRAINT "gameFK_runners->games" FOREIGN KEY ("gamePk") REFERENCES major.games(pk) NOT VALID;
 H   ALTER TABLE ONLY major.runners DROP CONSTRAINT "gameFK_runners->games";
       major          karisch    false    211    2821    207                       2606    41350    games homeTeamFK_games->teams    FK CONSTRAINT     ?   ALTER TABLE ONLY major.games
    ADD CONSTRAINT "homeTeamFK_games->teams" FOREIGN KEY ("homeId", season) REFERENCES major.teams(id, season) NOT VALID;
 H   ALTER TABLE ONLY major.games DROP CONSTRAINT "homeTeamFK_games->teams";
       major          karisch    false    213    2833    213    207    207                       2606    41355    teams leagueFK_teams->leagues    FK CONSTRAINT     ?   ALTER TABLE ONLY major.teams
    ADD CONSTRAINT "leagueFK_teams->leagues" FOREIGN KEY ("leagueID", season) REFERENCES major.leagues(id, season) NOT VALID;
 H   ALTER TABLE ONLY major.teams DROP CONSTRAINT "leagueFK_teams->leagues";
       major          karisch    false    213    208    2823    213    208                       2606    41360 !   actions playerFK_actions->players    FK CONSTRAINT     ?   ALTER TABLE ONLY major.actions
    ADD CONSTRAINT "playerFK_actions->players" FOREIGN KEY ("playerId") REFERENCES major.players(id) NOT VALID;
 L   ALTER TABLE ONLY major.actions DROP CONSTRAINT "playerFK_actions->players";
       major          karisch    false    2827    210    204                       2606    41365 !   runners runnerFK_runners->players    FK CONSTRAINT     ?   ALTER TABLE ONLY major.runners
    ADD CONSTRAINT "runnerFK_runners->players" FOREIGN KEY ("runnerId") REFERENCES major.players(id) NOT VALID;
 L   ALTER TABLE ONLY major.runners DROP CONSTRAINT "runnerFK_runners->players";
       major          karisch    false    210    2827    211                       2606    41370    games seasonFK_games->seasons    FK CONSTRAINT     ?   ALTER TABLE ONLY major.games
    ADD CONSTRAINT "seasonFK_games->seasons" FOREIGN KEY (season) REFERENCES major.seasons("seasonId") NOT VALID;
 H   ALTER TABLE ONLY major.games DROP CONSTRAINT "seasonFK_games->seasons";
       major          karisch    false    2831    212    207                       2606    41375 !   leagues seasonFK_leagues->seasons    FK CONSTRAINT     ?   ALTER TABLE ONLY major.leagues
    ADD CONSTRAINT "seasonFK_leagues->seasons" FOREIGN KEY (season) REFERENCES major.seasons("seasonId") NOT VALID;
 L   ALTER TABLE ONLY major.leagues DROP CONSTRAINT "seasonFK_leagues->seasons";
       major          karisch    false    2831    212    208                        2606    41380    teams seasonFK_teams->seasons    FK CONSTRAINT     ?   ALTER TABLE ONLY major.teams
    ADD CONSTRAINT "seasonFK_teams->seasons" FOREIGN KEY (season) REFERENCES major.seasons("seasonId") NOT VALID;
 H   ALTER TABLE ONLY major.teams DROP CONSTRAINT "seasonFK_teams->seasons";
       major          karisch    false    2831    212    213                       2606    41385    games venueFK_games->venues    FK CONSTRAINT     ?   ALTER TABLE ONLY major.games
    ADD CONSTRAINT "venueFK_games->venues" FOREIGN KEY ("venueID") REFERENCES major.venues(id) NOT VALID;
 F   ALTER TABLE ONLY major.games DROP CONSTRAINT "venueFK_games->venues";
       major          karisch    false    214    207    2835            !           2606    41390    teams venueFK_teams->venues    FK CONSTRAINT     ?   ALTER TABLE ONLY major.teams
    ADD CONSTRAINT "venueFK_teams->venues" FOREIGN KEY ("venueID") REFERENCES major.venues(id) NOT VALID;
 F   ALTER TABLE ONLY major.teams DROP CONSTRAINT "venueFK_teams->venues";
       major          karisch    false    2835    213    214           