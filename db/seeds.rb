# Examples:
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

mass_health_file = Rails.root.join('db/data/mass_health_data.csv')

#TownHealthRecord.destroy_all

CSV.foreach(mass_health_file, headers: true) do |row|
    row.each do |field|
        field[1].to_s.gsub!(/[$,\s]/,'') #for some reason field is an array with the header and the value of the index (ie town for geography)
        if field.last.to_s.downcase == 'na'
            field.pop
            field << 0 #nil
        end
    end

    town_health_record = TownHealthRecord.find_or_initialize_by(geography: row[0]) do |city_data|
        city_data[:geography] = row[0]
        city_data[:total_pop_year_2005] = row[1]
        city_data[:age_0_19_year_2005] = row[2]
        city_data[:age_65_up_year_2005] = row[3]
        city_data[:per_capita_income_year_2000] = row[4]
        city_data[:persons_below_200pct_poverty_yr_2000] = row[5]
        city_data[:pct_all_persons_below_200pct_poverty_year_2000] = row[6]
        city_data[:pct_adequacy_prenatal_care_kotelchuck] = row[7]
        city_data[:pct_c_sections_2005_2008] = row[8]
        city_data[:num_infant_deaths_2005_2008] = row[9]
        city_data[:infant_mortality_rate_2005_2008] = row[10]
        city_data[:pct_low_birthweight_2005_2008] = row[11]
        city_data[:pct_multiple_births_2005_2008] = row[12]
        city_data[:pct_publicly_financed_prenatal_care_2005_2008] = row[13]
        city_data[:pct_teen_births_2005_2008] = row[14]
    end
    town_health_record.save
end
