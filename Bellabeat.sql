--Find out if there are any null values
SELECT  
Id
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE Id IS NULL;
 
SELECT
ActivityDate
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE ActivityDate IS NULL;
 
SELECT
TotalSteps
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE TotalSteps IS NULL;
 
SELECT
TotalDistance
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE TotalDistance IS NULL;
 
SELECT
TrackerDistance
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE TrackerDistance IS NULL;
 
SELECT
LoggedActivitiesDistance
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE LoggedActivitiesDistance IS NULL;
 
SELECT
VeryActiveDistance
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE VeryActiveDistance IS NULL;
 
SELECT
ModeratelyActiveDistance    
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE ModeratelyActiveDistance   IS NULL;
 
SELECT
LightActiveDistance 
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE LightActiveDistance    IS NULL;
 
SELECT
SedentaryActiveDistance 
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE SedentaryActiveDistance    IS NULL;
 
SELECT
VeryActiveMinutes
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE VeryActiveMinutes  IS NULL;
 
SELECT
FairlyActiveMinutes
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE FairlyActiveMinutes    IS NULL;
 
SELECT
LightlyActiveMinutes
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE LightlyActiveMinutes   IS NULL;
 
SELECT
SedentaryMinutes
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE SedentaryMinutes   IS NULL;
 
SELECT
Calories
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged` 
WHERE Calories   IS NULL;
 
--Find out how many IDs the dataset has and how many times each ID has appeared.
SELECT Id, COUNT(Id)
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged`
GROUP BY Id
ORDER BY COUNT(Id);
 
--Find out how many dates the dataset has and how many times each date has appeared. 
SELECT ActivityDate, COUNT(Id)
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged`
GROUP BY ActivityDate
ORDER BY ActivityDate;
 
--Find out if any IDs have recorded the same date twice
SELECT Id, ActivityDate, COUNT(*)
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged`
GROUP BY Id, ActivityDate
HAVING COUNT(*) > 1;
 
--Find out if any users haven't recored any distance which makes the data unreliable
SELECT VeryActiveDistance, ModeratelyActiveDistance, LightActiveDistance, SedentaryActiveDistance
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged`
WHERE VeryActiveDistance = 0 AND ModeratelyActiveDistance = 0 AND LightActiveDistance = 0 AND SedentaryActiveDistance = 0;
 
--Find out if any users haven't recored any minutes which makes the data unreliable
SELECT VeryActiveMinutes, FairlyActiveMinutes, LightlyActiveMinutes, SedentaryMinutes   
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged`
WHERE VeryActiveMinutes = 0 AND FairlyActiveMinutes = 0 AND LightlyActiveMinutes = 0 AND SedentaryMinutes = 0;
 
--Find out the dates that the users had the longest distance and burned the highest calories
SELECT ActivityDate, VeryActiveDistance
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged`
ORDER BY VeryActiveDistance DESC;
 
SELECT ActivityDate, ModeratelyActiveDistance
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged`
ORDER BY ModeratelyActiveDistance DESC;
 
SELECT ActivityDate, LightActiveDistance
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged`
ORDER BY LightActiveDistance DESC;
 
SELECT ActivityDate, Calories
FROM `graphic-avenue-346601.FitBit.dailyActivity_merged`
ORDER BY Calories DESC;
