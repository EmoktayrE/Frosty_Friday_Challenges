CREATE OR REPLACE STAGE frosty_aws_stage
  URL = 's3://frostyfridaychallenges/';

LIST @FROSTY_AWS_STAGE/challenge_84/
;

CREATE OR REPLACE STAGE week84;

copy files into @week84
from @frosty_aws_stage/challenge_84
pattern = '.*__.*'
;

list @week84;

--deleting contents in the stage for regex testing
REMOVE @week84 pattern='.*';
