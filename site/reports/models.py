# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models

class Actions(models.Model):
    gamepk = models.ForeignKey('Games', models.CASCADE, db_column='gamePk')  # Field name made lowercase.
    atbatindex = models.ForeignKey('Atbats', models.CASCADE, db_column='atBatIndex')  # Field name made lowercase.
    actionindex = models.IntegerField(db_column='actionIndex')  # Field name made lowercase.
    eventtype = models.CharField(db_column='eventType', max_length=100, blank=True, null=True)  # Field name made lowercase.
    awayscore = models.IntegerField(db_column='awayScore', blank=True, null=True)  # Field name made lowercase.
    homescore = models.IntegerField(db_column='homeScore', blank=True, null=True)  # Field name made lowercase.
    isscoringplay = models.CharField(db_column='isScoringPlay', max_length=50, blank=True, null=True)  # Field name made lowercase.
    balls = models.IntegerField(blank=True, null=True)
    strikes = models.IntegerField(blank=True, null=True)
    outs = models.IntegerField(blank=True, null=True)
    ispitch = models.CharField(db_column='isPitch', max_length=50, blank=True, null=True)  # Field name made lowercase.
    playerid = models.ForeignKey('Players', models.CASCADE, db_column='playerId', blank=True, null=True)  # Field name made lowercase.
    eventdescription = models.CharField(db_column='eventDescription', max_length=1000, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'actions'
        unique_together = (('gamepk', 'atbatindex', 'actionindex'),)


class Atbats(models.Model):
    gamepk = models.ForeignKey('Games', models.CASCADE, db_column='gamePk')  # Field name made lowercase.
    atbatindex = models.IntegerField(db_column='atBatIndex')  # Field name made lowercase.
    result = models.CharField(max_length=50, blank=True, null=True)
    resulttype = models.CharField(db_column='resultType', max_length=50, blank=True, null=True)  # Field name made lowercase.
    resultdesc = models.CharField(db_column='resultDesc', max_length=500, blank=True, null=True)  # Field name made lowercase.
    rbi = models.IntegerField(blank=True, null=True)
    awayscore = models.IntegerField(db_column='awayScore', blank=True, null=True)  # Field name made lowercase.
    homescore = models.IntegerField(db_column='homeScore', blank=True, null=True)  # Field name made lowercase.
    istopinning = models.CharField(db_column='isTopInning', max_length=50, blank=True, null=True)  # Field name made lowercase.
    inning = models.IntegerField(blank=True, null=True)
    isscoringplay = models.CharField(db_column='isScoringPlay', max_length=50, blank=True, null=True)  # Field name made lowercase.
    hasreview = models.CharField(db_column='hasReview', max_length=50, blank=True, null=True)  # Field name made lowercase.
    hasout = models.CharField(db_column='hasOut', max_length=50, blank=True, null=True)  # Field name made lowercase.
    captivatingindex = models.IntegerField(db_column='captivatingIndex', blank=True, null=True)  # Field name made lowercase.
    batterid = models.ForeignKey('Players', models.CASCADE, db_column='batterID', blank=True, null=True, related_name='batters')  # Field name made lowercase.
    batsidecode = models.CharField(db_column='batSideCode', max_length=50, blank=True, null=True)  # Field name made lowercase.
    batsidedesc = models.CharField(db_column='batSideDesc', max_length=50, blank=True, null=True)  # Field name made lowercase.
    pitcherid = models.ForeignKey('Players', models.CASCADE, db_column='pitcherID', blank=True, null=True, related_name='pitchers')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'atbats'
        unique_together = (('gamepk', 'atbatindex'),)


class Divisions(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=100, blank=True, null=True)
    nameshort = models.CharField(db_column='nameShort', max_length=50, blank=True, null=True)  # Field name made lowercase.
    abbrev = models.CharField(max_length=50, blank=True, null=True)
    leagueid = models.ForeignKey('Leagues', models.CASCADE, db_column='leagueId', blank=True, null=True)  # Field name made lowercase.
    haswildcard = models.CharField(db_column='hasWildcard', max_length=50, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'divisions'


class Games(models.Model):
    gamePk = models.IntegerField(primary_key=True)
    type = models.CharField(max_length=50, blank=True, null=True)
    doubleheader = models.CharField(db_column='doubleHeader', max_length=50, blank=True, null=True)  # Field name made lowercase.
    id = models.CharField(max_length=50, blank=True, null=True)
    gamedaytype = models.CharField(db_column='gamedayType', max_length=50, blank=True, null=True)  # Field name made lowercase.
    tiebreaker = models.CharField(db_column='tieBreaker', max_length=50, blank=True, null=True)  # Field name made lowercase.
    calendareventid = models.CharField(db_column='calendarEventID', max_length=50, blank=True, null=True)  # Field name made lowercase.
    season = models.ForeignKey('Seasons', models.CASCADE, db_column='season', blank=True, null=True)
    seasondisplay = models.IntegerField(db_column='seasonDisplay', blank=True, null=True)  # Field name made lowercase.
    datetime = models.CharField(max_length=50, blank=True, null=True)
    originaldate = models.CharField(db_column='originalDate', max_length=50, blank=True, null=True)  # Field name made lowercase.
    daynight = models.CharField(db_column='dayNight', max_length=50, blank=True, null=True)  # Field name made lowercase.
    time = models.CharField(max_length=50, blank=True, null=True)
    ampm = models.CharField(max_length=50, blank=True, null=True)
    awaygamesplayed = models.IntegerField(db_column='awayGamesPlayed', blank=True, null=True)  # Field name made lowercase.
    awaywins = models.IntegerField(db_column='awayWins', blank=True, null=True)  # Field name made lowercase.
    awaylosses = models.IntegerField(db_column='awayLosses', blank=True, null=True)  # Field name made lowercase.
    awaydivisionleader = models.CharField(db_column='awayDivisionLeader', max_length=50, blank=True, null=True)  # Field name made lowercase.
    homegamesplayed = models.IntegerField(db_column='homeGamesPlayed', blank=True, null=True)  # Field name made lowercase.
    homewins = models.IntegerField(db_column='homeWins', blank=True, null=True)  # Field name made lowercase.
    homelosses = models.IntegerField(db_column='homeLosses', blank=True, null=True)  # Field name made lowercase.
    homedivisionleader = models.CharField(db_column='homeDivisionLeader', max_length=50, blank=True, null=True)  # Field name made lowercase.
    venueid = models.ForeignKey('Venues', models.DO_NOTHING, db_column='venueID', blank=True, null=True)  # Field name made lowercase.
    weatherconditions = models.CharField(db_column='weatherConditions', max_length=50, blank=True, null=True)  # Field name made lowercase.
    temp = models.IntegerField(blank=True, null=True)
    wind = models.CharField(max_length=50, blank=True, null=True)
    nohitter = models.CharField(db_column='noHitter', max_length=50, blank=True, null=True)  # Field name made lowercase.
    perfectgame = models.CharField(db_column='perfectGame', max_length=50, blank=True, null=True)  # Field name made lowercase.
    awayid = models.ForeignKey('Teams', models.CASCADE, db_column='awayId', blank=True, null=True, related_name='away')  # Field name made lowercase.
    homeid = models.ForeignKey('Teams', models.CASCADE, db_column='homeId', blank=True, null=True, related_name='home')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'games'


class Leagues(models.Model):
    id = models.IntegerField(primary_key=True)
    season = models.ForeignKey('Seasons', models.CASCADE, db_column='season')
    name = models.CharField(max_length=50, blank=True, null=True)
    abbrev = models.CharField(max_length=50, blank=True, null=True)
    nameshort = models.CharField(db_column='nameShort', max_length=50, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'leagues'
        unique_together = (('id', 'season'),)


class Pitches(models.Model):
    gamepk = models.ForeignKey('Games', models.CASCADE, db_column='gamePk')  # Field name made lowercase.
    atbatindex = models.ForeignKey('Atbats', models.CASCADE, db_column='atBatIndex')  # Field name made lowercase.
    pitchindex = models.IntegerField(db_column='pitchIndex')  # Field name made lowercase.
    callcode = models.CharField(db_column='callCode', max_length=50, blank=True, null=True)  # Field name made lowercase.
    calldesc = models.CharField(db_column='callDesc', max_length=50, blank=True, null=True)  # Field name made lowercase.
    isinplay = models.CharField(db_column='isInPlay', max_length=50, blank=True, null=True)  # Field name made lowercase.
    isstrike = models.CharField(db_column='isStrike', max_length=50, blank=True, null=True)  # Field name made lowercase.
    isball = models.CharField(db_column='isBall', max_length=50, blank=True, null=True)  # Field name made lowercase.
    typecode = models.CharField(db_column='typeCode', max_length=50, blank=True, null=True)  # Field name made lowercase.
    typedesc = models.CharField(db_column='typeDesc', max_length=100, blank=True, null=True)  # Field name made lowercase.
    hasreview = models.CharField(db_column='hasReview', max_length=50, blank=True, null=True)  # Field name made lowercase.
    countballs = models.IntegerField(db_column='countBalls', blank=True, null=True)  # Field name made lowercase.
    countstrikes = models.IntegerField(db_column='countStrikes', blank=True, null=True)  # Field name made lowercase.
    startspeed = models.DecimalField(db_column='startSpeed', max_digits=5, decimal_places=1, blank=True, null=True)  # Field name made lowercase.
    endspeed = models.DecimalField(db_column='endSpeed', max_digits=5, decimal_places=1, blank=True, null=True)  # Field name made lowercase.
    sztop = models.DecimalField(db_column='szTop', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    szbottom = models.DecimalField(db_column='szBottom', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    ax = models.DecimalField(db_column='aX', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    ay = models.DecimalField(db_column='aY', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    az = models.DecimalField(db_column='aZ', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    pfxx = models.DecimalField(db_column='pfxX', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    pfxz = models.DecimalField(db_column='pfxZ', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    px = models.DecimalField(db_column='pX', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    pz = models.DecimalField(db_column='pZ', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    vx0 = models.DecimalField(db_column='vX0', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    vy0 = models.DecimalField(db_column='vY0', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    vz0 = models.DecimalField(db_column='vZ0', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    x = models.DecimalField(max_digits=7, decimal_places=2, blank=True, null=True)
    y = models.DecimalField(max_digits=7, decimal_places=2, blank=True, null=True)
    x0 = models.DecimalField(max_digits=7, decimal_places=2, blank=True, null=True)
    y0 = models.DecimalField(max_digits=7, decimal_places=2, blank=True, null=True)
    z0 = models.DecimalField(max_digits=7, decimal_places=2, blank=True, null=True)
    breakangle = models.DecimalField(db_column='breakAngle', max_digits=7, decimal_places=1, blank=True, null=True)  # Field name made lowercase.
    breaklength = models.DecimalField(db_column='breakLength', max_digits=7, decimal_places=1, blank=True, null=True)  # Field name made lowercase.
    breaky = models.DecimalField(db_column='breakY', max_digits=7, decimal_places=1, blank=True, null=True)  # Field name made lowercase.
    spinrate = models.IntegerField(db_column='spinRate', blank=True, null=True)  # Field name made lowercase.
    spindirection = models.IntegerField(db_column='spinDirection', blank=True, null=True)  # Field name made lowercase.
    zone = models.IntegerField(blank=True, null=True)
    typeconfidence = models.DecimalField(db_column='typeConfidence', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    platetime = models.DecimalField(db_column='plateTime', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    extension = models.DecimalField(max_digits=7, decimal_places=2, blank=True, null=True)
    pitchnumber = models.IntegerField(db_column='pitchNumber', blank=True, null=True)  # Field name made lowercase.
    launchspeed = models.DecimalField(db_column='launchSpeed', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    launchangle = models.DecimalField(db_column='launchAngle', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    totaldistance = models.DecimalField(db_column='totalDistance', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    trajectory = models.CharField(max_length=50, blank=True, null=True)
    hardness = models.CharField(max_length=50, blank=True, null=True)
    location = models.IntegerField(blank=True, null=True)
    coordx = models.DecimalField(db_column='coordX', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.
    coordy = models.DecimalField(db_column='coordY', max_digits=7, decimal_places=2, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'pitches'
        unique_together = (('gamepk', 'atbatindex', 'pitchindex'),)


class Players(models.Model):
    id = models.IntegerField(primary_key=True)
    fullname = models.CharField(db_column='fullName', max_length=100, blank=True, null=True)  # Field name made lowercase.
    firstname = models.CharField(db_column='firstName', max_length=50, blank=True, null=True)  # Field name made lowercase.
    lastname = models.CharField(db_column='lastName', max_length=50, blank=True, null=True)  # Field name made lowercase.
    primarynumber = models.CharField(db_column='primaryNumber', max_length=50, blank=True, null=True)  # Field name made lowercase.
    birthdate = models.CharField(db_column='birthDate', max_length=50, blank=True, null=True)  # Field name made lowercase.
    birthcity = models.CharField(db_column='birthCity', max_length=50, blank=True, null=True)  # Field name made lowercase.
    birthcountry = models.CharField(db_column='birthCountry', max_length=50, blank=True, null=True)  # Field name made lowercase.
    height = models.CharField(max_length=50, blank=True, null=True)
    weight = models.IntegerField(blank=True, null=True)
    positioncode = models.CharField(db_column='positionCode', max_length=50, blank=True, null=True)  # Field name made lowercase.
    positionname = models.CharField(db_column='positionName', max_length=50, blank=True, null=True)  # Field name made lowercase.
    positiontype = models.CharField(db_column='positionType', max_length=50, blank=True, null=True)  # Field name made lowercase.
    positionabbrev = models.CharField(db_column='positionAbbrev', max_length=50, blank=True, null=True)  # Field name made lowercase.
    usename = models.CharField(db_column='useName', max_length=50, blank=True, null=True)  # Field name made lowercase.
    middlename = models.CharField(db_column='middleName', max_length=50, blank=True, null=True)  # Field name made lowercase.
    boxscorename = models.CharField(db_column='boxscoreName', max_length=100, blank=True, null=True)  # Field name made lowercase.
    isplayer = models.CharField(db_column='isPlayer', max_length=50, blank=True, null=True)  # Field name made lowercase.
    mlbdebutdate = models.CharField(db_column='mlbDebutDate', max_length=50, blank=True, null=True)  # Field name made lowercase.
    batsidecode = models.CharField(db_column='batSideCode', max_length=50, blank=True, null=True)  # Field name made lowercase.
    batsidedesc = models.CharField(db_column='batSideDesc', max_length=50, blank=True, null=True)  # Field name made lowercase.
    pitchhandcode = models.CharField(db_column='pitchHandCode', max_length=50, blank=True, null=True)  # Field name made lowercase.
    pitchhanddesc = models.CharField(db_column='pitchHandDesc', max_length=50, blank=True, null=True)  # Field name made lowercase.
    sztop = models.FloatField(db_column='szTop', blank=True, null=True)  # Field name made lowercase.
    szbottom = models.FloatField(db_column='szBottom', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'players'


class Runners(models.Model):
    gamepk = models.ForeignKey('Games', models.CASCADE, db_column='gamePk')  # Field name made lowercase.
    atbatindex = models.ForeignKey('Atbats', models.CASCADE, db_column='atBatIndex')  # Field name made lowercase.
    playindex = models.IntegerField(db_column='playIndex')  # Field name made lowercase.
    startbase = models.CharField(db_column='startBase', max_length=50, blank=True, null=True)  # Field name made lowercase.
    endbase = models.CharField(db_column='endBase', max_length=50, blank=True, null=True)  # Field name made lowercase.
    isout = models.CharField(db_column='isOut', max_length=50, blank=True, null=True)  # Field name made lowercase.
    outnumber = models.CharField(db_column='outNumber', max_length=50, blank=True, null=True)  # Field name made lowercase.
    eventtype = models.CharField(db_column='eventType', max_length=100, blank=True, null=True)  # Field name made lowercase.
    movementreason = models.CharField(db_column='movementReason', max_length=100, blank=True, null=True)  # Field name made lowercase.
    runnerid = models.ForeignKey(Players, models.CASCADE, db_column='runnerId', blank=True, null=True)  # Field name made lowercase.
    isscoringevent = models.CharField(db_column='isScoringEvent', max_length=50, blank=True, null=True)  # Field name made lowercase.
    rbi = models.CharField(max_length=50, blank=True, null=True)
    earned = models.CharField(max_length=50, blank=True, null=True)
    outbase = models.CharField(db_column='outBase', max_length=50, blank=True, null=True)  # Field name made lowercase.
    runnerindex = models.IntegerField(db_column='runnerIndex')  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'runners'
        unique_together = (('gamepk', 'atbatindex', 'runnerindex'),)


class Seasons(models.Model):
    seasonid = models.IntegerField(db_column='seasonId', primary_key=True)  # Field name made lowercase.
    regseasstartdate = models.CharField(db_column='regSeasStartDate', max_length=50, blank=True, null=True)  # Field name made lowercase.
    regseasenddate = models.CharField(db_column='regSeasEndDate', max_length=50, blank=True, null=True)  # Field name made lowercase.
    preseasstartdate = models.CharField(db_column='preSeasStartDate', max_length=50, blank=True, null=True)  # Field name made lowercase.
    preseasenddate = models.CharField(db_column='preSeasEndDate', max_length=50, blank=True, null=True)  # Field name made lowercase.
    postseasstartdate = models.CharField(db_column='postSeasStartDate', max_length=50, blank=True, null=True)  # Field name made lowercase.
    postseasenddate = models.CharField(db_column='postSeasEndDate', max_length=50, blank=True, null=True)  # Field name made lowercase.
    lastdate1sthalf = models.CharField(db_column='lastDate1stHalf', max_length=50, blank=True, null=True)  # Field name made lowercase.
    firstdate2ndhalf = models.CharField(db_column='firstDate2ndHalf', max_length=50, blank=True, null=True)  # Field name made lowercase.
    allstardate = models.CharField(db_column='allStarDate', max_length=50, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'seasons'


class Sports(models.Model):
    sportid = models.IntegerField(db_column='sportId', primary_key=True)  # Field name made lowercase.
    code = models.CharField(max_length=50, blank=True, null=True)
    name = models.CharField(max_length=100, blank=True, null=True)
    abbrev = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'sports'


class Teams(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=50, blank=True, null=True)
    season = models.ForeignKey(Seasons, models.CASCADE, db_column='season')
    venueid = models.ForeignKey('Venues', models.CASCADE, db_column='venueID', blank=True, null=True)  # Field name made lowercase.
    teamcode = models.CharField(db_column='teamCode', max_length=50, blank=True, null=True)  # Field name made lowercase.
    filecode = models.CharField(db_column='fileCode', max_length=50, blank=True, null=True)  # Field name made lowercase.
    abbrev = models.CharField(max_length=50, blank=True, null=True)
    teamname = models.CharField(db_column='teamName', max_length=50, blank=True, null=True)  # Field name made lowercase.
    locationname = models.CharField(db_column='locationName', max_length=50, blank=True, null=True)  # Field name made lowercase.
    firstyearofplay = models.IntegerField(db_column='firstYearOfPlay', blank=True, null=True)  # Field name made lowercase.
    leagueid = models.ForeignKey(Leagues, models.CASCADE, db_column='leagueID', blank=True, null=True)  # Field name made lowercase.
    divisionid = models.ForeignKey(Divisions, models.CASCADE, db_column='divisionID', blank=True, null=True)  # Field name made lowercase.
    shortname = models.CharField(db_column='shortName', max_length=50, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'teams'
        unique_together = (('id', 'season'),)


class Venues(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=100, blank=True, null=True)
    city = models.CharField(max_length=50, blank=True, null=True)
    state = models.CharField(max_length=50, blank=True, null=True)
    latitude = models.CharField(max_length=50, blank=True, null=True)
    longitude = models.CharField(max_length=50, blank=True, null=True)
    tzoffset = models.CharField(db_column='tzOffset', max_length=50, blank=True, null=True)  # Field name made lowercase.
    tzname = models.CharField(db_column='tzName', max_length=50, blank=True, null=True)  # Field name made lowercase.
    capacity = models.IntegerField(blank=True, null=True)
    turftype = models.CharField(db_column='turfType', max_length=50, blank=True, null=True)  # Field name made lowercase.
    rooftype = models.CharField(db_column='roofType', max_length=50, blank=True, null=True)  # Field name made lowercase.
    leftline = models.IntegerField(db_column='leftLine', blank=True, null=True)  # Field name made lowercase.
    leftcenter = models.IntegerField(db_column='leftCenter', blank=True, null=True)  # Field name made lowercase.
    center = models.IntegerField(blank=True, null=True)
    rightcenter = models.IntegerField(db_column='rightCenter', blank=True, null=True)  # Field name made lowercase.
    rightline = models.IntegerField(db_column='rightLine', blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = False
        db_table = 'venues'
