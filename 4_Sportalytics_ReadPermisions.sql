BEGIN
  -- Granting read access to PLAYERS,COACHES,MANAGERS on "TRAINING_VIEW" 
  EXECUTE IMMEDIATE 'GRANT CREATE SESSION, CONNECT TO PLAYERS,COACHES,MANAGERS';
  EXECUTE IMMEDIATE 'GRANT SELECT ON TRAINING_VIEW TO PLAYERS,COACHES,MANAGERS';
  DBMS_OUTPUT.PUT_LINE('Read access granted successfully.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Read permission given');
END;
/
 
BEGIN
  -- Granting read access to PLAYERS and MEDICALSTAFFS on "PLAYER_HEALTH_RECORD_VIEW" 
  EXECUTE IMMEDIATE 'GRANT CREATE SESSION, CONNECT TO PLAYERS,MEDICALSTAFFS';
  EXECUTE IMMEDIATE 'GRANT SELECT ON PLAYER_HEALTH_RECORD_VIEW TO PLAYERS,MEDICALSTAFFS';
  DBMS_OUTPUT.PUT_LINE('Read access granted successfully.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Read permission given');
END;
/
BEGIN
  -- Granting read access to PLAYERS,MANAGERS and COACHES on "TEAM_PLAYER_SCHEDULE_VIEW" 
  EXECUTE IMMEDIATE 'GRANT CREATE SESSION, CONNECT TO PLAYERS,MANAGERS,COACHES';
  EXECUTE IMMEDIATE 'GRANT SELECT ON TEAM_PLAYER_SCHEDULE_VIEW TO PLAYERS,MANAGERS,COACHES';
  DBMS_OUTPUT.PUT_LINE('Read access granted successfully.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Read permission given');
END;
/
 
BEGIN
 -- Granting read access to PLAYERS and MANAGERS on "TEAM_PLAYER_SCHEDULE_VIEW" 
  EXECUTE IMMEDIATE 'GRANT CREATE SESSION, CONNECT TO PLAYERS,MANAGERS';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SPONSORSHIPS_SPORTS_TEAM_VIEW TO PLAYERS,MANAGERS';
  DBMS_OUTPUT.PUT_LINE('Read access granted successfully.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Read permission given');
END;
/