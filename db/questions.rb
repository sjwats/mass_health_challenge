#What 3 towns have the highest population of
#citizens that are 65 years and older?
TownHealthRecord.select('geography','age_65_up_year_2005').order('age_65_up_year_2005 DESC').limit(3)


#What 3 towns have the highest population of
#citizens that are 19 years and younger?
TownHealthRecord.select('geography','age_0_19_year_2005').order('age_0_19_year_2005 DESC').limit(3)


#What 5 towns have the lowest per capita income?
TownHealthRecord.select('geography','per_capita_income_year_2000').order('per_capita_income_year_2000').limit(5)


#Omitting Boston, Becket, and Beverly, what
#town has the highest percentage of teen births?
TownHealthRecord.select('geography','pct_teen_births_2005_2008').where("geography != ?", 'Boston').where("geography != ?", 'Becket').where("geography != ?", 'Beverly').order('pct_teen_births_2005_2008 DESC').first


#Omitting Boston, what town has the highest
#number of infant mortalities?
TownHealthRecord.select('geography','infant_mortality_rate_2005_2008').where("geography != ?", 'Boston').order('infant_mortality_rate_2005_2008 DESC').first
