SELECT * 
FROM breach_users;

-- Most common channel for aquiring users
SELECT 
	channel,
	COUNT(channel) AS channel_count
FROM breach_users
GROUP BY channel
ORDER BY channel_count DESC
LIMIT 2;


-- The day of the week with the highest signup
SELECT
	weekday,
	COUNT(weekday) AS weekday_count
FROM breach_users
GROUP BY weekday
ORDER BY weekday_count DESC
LIMIT 1;


-- The day of the week with the least signup
SELECT
	weekday,
	COUNT(weekday) AS weekday_count
FROM breach_users
GROUP BY weekday
ORDER BY weekday_count ASC
LIMIT 1;


-- Country with the most signups
SELECT 
	country,
	COUNT(country) country_count
FROM breach_users
GROUP BY country
ORDER BY country_count DESC
LIMIT 1;


-- Identify how the referral channel translates to users
SELECT 
	country,
	COUNT(country) AS country_count
FROM breach_users
WHERE channel LIKE 'referral'
GROUP BY country
ORDER BY country_count DESC;


-- Identify the relationship between users gotten from referrals and newsletters 
SELECT
	read_the_newsletter,
	COUNT(read_the_newsletter)
FROM breach_users
WHERE channel LIKE 'referral'
GROUP BY read_the_newsletter;


SELECT
	country,
	channel,
	COUNT(channel) Ar
FROM breach_users
GROUP BY country,channel
ORDER BY Ar DESC;


-- Identifying the country with the most conversion rate
SELECT 
	country,
	COUNT(country)country_count,
	ROUND(CAST(COUNT(country)AS DECIMAL)/(count_data) * 100,2) country_conversion
FROM breach_users
GROUP BY country,count_data
ORDER BY country_conversion DESC;


SELECT 
	channel,
	COUNT(channel)channel_count,
	ROUND(CAST(COUNT(channel)AS DECIMAL)/(count_data) * 100,2) channel_conversion
FROM breach_users
GROUP BY channel,count_data
ORDER BY channel_conversion DESC;


SELECT 
	read_the_newsletter,
	COUNT(read_the_newsletter)newsletter_count,
	ROUND(CAST(COUNT(read_the_newsletter)AS DECIMAL)/(count_data) * 100,2) newsletter_conversion
FROM breach_users
GROUP BY read_the_newsletter,count_data
ORDER BY newsletter_conversion DESC;




