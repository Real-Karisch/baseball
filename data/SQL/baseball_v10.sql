--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Ubuntu 12.3-1.pgdg18.04+1)
-- Dumped by pg_dump version 12.4

-- Started on 2020-10-25 15:43:46

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 9 (class 2615 OID 32923)
-- Name: major; Type: SCHEMA; Schema: -; Owner: karisch
--

CREATE SCHEMA major;


ALTER SCHEMA major OWNER TO karisch;

--
-- TOC entry 7 (class 2615 OID 33105)
-- Name: minor; Type: SCHEMA; Schema: -; Owner: karisch
--

CREATE SCHEMA minor;


ALTER SCHEMA minor OWNER TO karisch;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 204 (class 1259 OID 41249)
-- Name: actions; Type: TABLE; Schema: major; Owner: karisch
--

CREATE TABLE major.actions (
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


ALTER TABLE major.actions OWNER TO karisch;

--
-- TOC entry 205 (class 1259 OID 41255)
-- Name: atbats; Type: TABLE; Schema: major; Owner: karisch
--

CREATE TABLE major.atbats (
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


ALTER TABLE major.atbats OWNER TO karisch;

--
-- TOC entry 206 (class 1259 OID 41261)
-- Name: divisions; Type: TABLE; Schema: major; Owner: karisch
--

CREATE TABLE major.divisions (
    id integer NOT NULL,
    name character varying(100),
    "nameShort" character varying(50),
    abbrev character varying(50),
    "leagueId" integer,
    "hasWildcard" character varying(50)
);


ALTER TABLE major.divisions OWNER TO karisch;

--
-- TOC entry 207 (class 1259 OID 41264)
-- Name: games; Type: TABLE; Schema: major; Owner: karisch
--

CREATE TABLE major.games (
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


ALTER TABLE major.games OWNER TO karisch;

--
-- TOC entry 208 (class 1259 OID 41270)
-- Name: leagues; Type: TABLE; Schema: major; Owner: karisch
--

CREATE TABLE major.leagues (
    id integer NOT NULL,
    season integer NOT NULL,
    name character varying(50),
    abbrev character varying(50),
    "nameShort" character varying(50)
);


ALTER TABLE major.leagues OWNER TO karisch;

--
-- TOC entry 209 (class 1259 OID 41273)
-- Name: pitches; Type: TABLE; Schema: major; Owner: karisch
--

CREATE TABLE major.pitches (
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


ALTER TABLE major.pitches OWNER TO karisch;

--
-- TOC entry 210 (class 1259 OID 41279)
-- Name: players; Type: TABLE; Schema: major; Owner: karisch
--

CREATE TABLE major.players (
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


ALTER TABLE major.players OWNER TO karisch;

--
-- TOC entry 211 (class 1259 OID 41285)
-- Name: runners; Type: TABLE; Schema: major; Owner: karisch
--

CREATE TABLE major.runners (
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


ALTER TABLE major.runners OWNER TO karisch;

--
-- TOC entry 212 (class 1259 OID 41291)
-- Name: seasons; Type: TABLE; Schema: major; Owner: karisch
--

CREATE TABLE major.seasons (
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


ALTER TABLE major.seasons OWNER TO karisch;

--
-- TOC entry 213 (class 1259 OID 41294)
-- Name: teams; Type: TABLE; Schema: major; Owner: karisch
--

CREATE TABLE major.teams (
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


ALTER TABLE major.teams OWNER TO karisch;

--
-- TOC entry 214 (class 1259 OID 41297)
-- Name: venues; Type: TABLE; Schema: major; Owner: karisch
--

CREATE TABLE major.venues (
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


ALTER TABLE major.venues OWNER TO karisch;

--
-- TOC entry 215 (class 1259 OID 57478)
-- Name: actions; Type: TABLE; Schema: minor; Owner: karisch
--

CREATE TABLE minor.actions (
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


ALTER TABLE minor.actions OWNER TO karisch;

--
-- TOC entry 216 (class 1259 OID 57486)
-- Name: atbats; Type: TABLE; Schema: minor; Owner: karisch
--

CREATE TABLE minor.atbats (
    "gamePk" integer NOT NULL,
    "atBatIndex" integer NOT NULL,
    result character varying(50),
    "resultType" character varying(50),
    "resultDesc" character varying(1000),
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


ALTER TABLE minor.atbats OWNER TO karisch;


CREATE TABLE minor.games (
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

ALTER TABLE minor.games OWNER TO karisch;


CREATE TABLE minor.pitches (
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


ALTER TABLE minor.pitches OWNER TO karisch;

CREATE TABLE minor.runners (
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


ALTER TABLE minor.runners OWNER TO karisch;

--
-- TOC entry 2825 (class 2606 OID 41304)
-- Name: actions actions_pkey; Type: CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.actions
    ADD CONSTRAINT actions_pkey PRIMARY KEY ("gamePk", "atBatIndex", "actionIndex");


--
-- TOC entry 2827 (class 2606 OID 41306)
-- Name: atbats atBats_pkey; Type: CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.atbats
    ADD CONSTRAINT "atBats_pkey" PRIMARY KEY ("gamePk", "atBatIndex");


--
-- TOC entry 2829 (class 2606 OID 41308)
-- Name: divisions divisions_pkey; Type: CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.divisions
    ADD CONSTRAINT divisions_pkey PRIMARY KEY (id);


--
-- TOC entry 2831 (class 2606 OID 41310)
-- Name: games games_pkey; Type: CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (pk);


--
-- TOC entry 2833 (class 2606 OID 41312)
-- Name: leagues leagues_pkey; Type: CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.leagues
    ADD CONSTRAINT leagues_pkey PRIMARY KEY (id, season);


--
-- TOC entry 2835 (class 2606 OID 41314)
-- Name: pitches pitches_pkey; Type: CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.pitches
    ADD CONSTRAINT pitches_pkey PRIMARY KEY ("gamePk", "atBatIndex", "pitchIndex");


--
-- TOC entry 2837 (class 2606 OID 41316)
-- Name: players players_pkey; Type: CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (id);


--
-- TOC entry 2839 (class 2606 OID 41318)
-- Name: runners runners_pkey; Type: CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.runners
    ADD CONSTRAINT runners_pkey PRIMARY KEY ("gamePk", "atBatIndex", "runnerIndex");


--
-- TOC entry 2841 (class 2606 OID 41320)
-- Name: seasons seasons_pkey; Type: CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.seasons
    ADD CONSTRAINT seasons_pkey PRIMARY KEY ("seasonId");


--
-- TOC entry 2843 (class 2606 OID 41322)
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id, season);


--
-- TOC entry 2845 (class 2606 OID 41324)
-- Name: venues venues_pkey; Type: CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.venues
    ADD CONSTRAINT venues_pkey PRIMARY KEY (id);


--
-- TOC entry 2847 (class 2606 OID 57485)
-- Name: actions actions_pkey; Type: CONSTRAINT; Schema: minor; Owner: karisch
--

ALTER TABLE ONLY minor.actions
    ADD CONSTRAINT actions_pkey PRIMARY KEY ("gamePk", "atBatIndex", "actionIndex");


--
-- TOC entry 2849 (class 2606 OID 57493)
-- Name: atbats atbats_pkey; Type: CONSTRAINT; Schema: minor; Owner: karisch
--

ALTER TABLE ONLY minor.atbats
    ADD CONSTRAINT atbats_pkey PRIMARY KEY ("gamePk", "atBatIndex");


--
-- TOC entry 2852 (class 2606 OID 41325)
-- Name: games awayTeamFK_games->teams; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.games
    ADD CONSTRAINT "awayTeamFK_games->teams" FOREIGN KEY ("awayId", season) REFERENCES major.teams(id, season) NOT VALID;


--
-- TOC entry 2860 (class 2606 OID 41330)
-- Name: teams divisionFK_teams->divisions; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.teams
    ADD CONSTRAINT "divisionFK_teams->divisions" FOREIGN KEY ("divisionID") REFERENCES major.divisions(id) NOT VALID;


--
-- TOC entry 2850 (class 2606 OID 41335)
-- Name: actions gameFK_actions->games; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.actions
    ADD CONSTRAINT "gameFK_actions->games" FOREIGN KEY ("gamePk") REFERENCES major.games(pk) NOT VALID;


--
-- TOC entry 2857 (class 2606 OID 41340)
-- Name: pitches gameFK_pitches->games; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.pitches
    ADD CONSTRAINT "gameFK_pitches->games" FOREIGN KEY ("gamePk") REFERENCES major.games(pk) NOT VALID;


--
-- TOC entry 2858 (class 2606 OID 41345)
-- Name: runners gameFK_runners->games; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.runners
    ADD CONSTRAINT "gameFK_runners->games" FOREIGN KEY ("gamePk") REFERENCES major.games(pk) NOT VALID;


--
-- TOC entry 2853 (class 2606 OID 41350)
-- Name: games homeTeamFK_games->teams; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.games
    ADD CONSTRAINT "homeTeamFK_games->teams" FOREIGN KEY ("homeId", season) REFERENCES major.teams(id, season) NOT VALID;


--
-- TOC entry 2861 (class 2606 OID 41355)
-- Name: teams leagueFK_teams->leagues; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.teams
    ADD CONSTRAINT "leagueFK_teams->leagues" FOREIGN KEY ("leagueID", season) REFERENCES major.leagues(id, season) NOT VALID;


--
-- TOC entry 2851 (class 2606 OID 41360)
-- Name: actions playerFK_actions->players; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.actions
    ADD CONSTRAINT "playerFK_actions->players" FOREIGN KEY ("playerId") REFERENCES major.players(id) NOT VALID;


--
-- TOC entry 2859 (class 2606 OID 41365)
-- Name: runners runnerFK_runners->players; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.runners
    ADD CONSTRAINT "runnerFK_runners->players" FOREIGN KEY ("runnerId") REFERENCES major.players(id) NOT VALID;


--
-- TOC entry 2854 (class 2606 OID 41370)
-- Name: games seasonFK_games->seasons; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.games
    ADD CONSTRAINT "seasonFK_games->seasons" FOREIGN KEY (season) REFERENCES major.seasons("seasonId") NOT VALID;


--
-- TOC entry 2856 (class 2606 OID 41375)
-- Name: leagues seasonFK_leagues->seasons; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.leagues
    ADD CONSTRAINT "seasonFK_leagues->seasons" FOREIGN KEY (season) REFERENCES major.seasons("seasonId") NOT VALID;


--
-- TOC entry 2862 (class 2606 OID 41380)
-- Name: teams seasonFK_teams->seasons; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.teams
    ADD CONSTRAINT "seasonFK_teams->seasons" FOREIGN KEY (season) REFERENCES major.seasons("seasonId") NOT VALID;


--
-- TOC entry 2855 (class 2606 OID 41385)
-- Name: games venueFK_games->venues; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.games
    ADD CONSTRAINT "venueFK_games->venues" FOREIGN KEY ("venueID") REFERENCES major.venues(id) NOT VALID;


--
-- TOC entry 2863 (class 2606 OID 41390)
-- Name: teams venueFK_teams->venues; Type: FK CONSTRAINT; Schema: major; Owner: karisch
--

ALTER TABLE ONLY major.teams
    ADD CONSTRAINT "venueFK_teams->venues" FOREIGN KEY ("venueID") REFERENCES major.venues(id) NOT VALID;


-- Completed on 2020-10-25 15:43:48

--
-- PostgreSQL database dump complete
--

