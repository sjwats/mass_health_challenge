class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
     t.string :geography
     t.integer :total_pop_year_2005
     t.integer :age_0_19_year_2005
     t.integer :age_65_up_year_2005
     t.integer :per_capita_income_year_2000
     t.integer :persons_below_200pct_poverty_yr_2000
     t.float :pct_all_persons_below_200pct_poverty_year_2000
     t.float :pct_adequacy_prenatal_care_kotelchuck
     t.float :pct_c_sections_2005_2008
     t.integer :num_infant_deaths_2005_2008
     t.float :infant_mortality_rate_2005_2008
     t.float :pct_low_birthweight_2005_2008
     t.float :pct_multiple_births_2005_2008
     t.float :pct_publicly_financed_prenatal_care_2005_2008
     t.float :pct_teen_births_2005_2008



      t.timestamps
    end
  end
end
