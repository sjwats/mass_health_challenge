-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT town_health_records.geography, town_health_records.age_65_up_year_2005 FROM town_health_records ORDER BY town_health_records.age_65_up_year_2005 DESC LIMIT 3;

--What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT town_health_records.geography, town_health_records.age_0_19_year_2005 FROM town_health_records ORDER BY town_health_records.age_0_19_year_2005 DESC LIMIT 3;

--What 5 towns have the lowest per capita income?
SELECT town_health_records.geography, town_health_records.per_capita_income_year_2000 FROM town_health_records ORDER BY town_health_records.per_capita_income_year_2000 LIMIT 5;

--Omitting Boston, Becket, and Beverly, what town has the
--highest percentage of teen births?
SELECT town_health_records.geography, town_health_records.pct_teen_births_2005_2008 FROM town_health_records WHERE town_health_records.geography!='Boston' AND town_health_records.geography!='Becket' AND town_health_records.geography!='Beverly'  ORDER BY town_health_records.pct_teen_births_2005_2008 DESC;

--Omitting Boston, what town has the highest
--number of infant mortalities?

SELECT town_health_records.geography, town_health_records.num_infant_deaths_2005_2008 FROM town_health_records WHERE town_health_records.geography!='Boston'  ORDER BY town_health_records.num_infant_deaths_2005_2008 DESC;
