CREATE TABLE tbl_dce (
sampno INT PRIMARY KEY NOT NULL,
flag_dce_year INT,
alt_1_vehtype INT,
alt_2_vehtype INT,
alt_3_vehtype INT,
alt_4_vehtype INT,
alt_1_fueltype INT,
alt_2_fueltype INT,
alt_3_fueltype INT,
alt_4_fueltype INT,
alt_1_prestige INT,
alt_2_prestige INT,
alt_3_prestige INT,
alt_4_prestige INT,
alt_1_year INT,
alt_2_year INT,
alt_3_year INT,
alt_4_year INT,
alt_1_price INT,
alt_2_price INT,
alt_3_price INT, 
alt_4_price INT,
alt_1_fuel_range INT,
alt_2_fuel_range INT,
alt_3_fuel_range INT,
alt_4_fuel_range INT,
alt_1_electric_range INT,
alt_2_electric_range INT,
alt_3_electric_range INT,
alt_4_electric_range INT,
alt_1_publiclocations INT,
alt_2_publiclocations INT,
alt_3_publiclocations INT,
alt_4_publiclocations INT,
alt_1_fastcharge_publiclocations INT,
alt_2_fastcharge_publiclocations INT,
alt_3_fastcharge_publiclocations INT,
alt_4_fastcharge_publiclocations INT,
alt_1_work_charge INT,
alt_2_work_charge INT,
alt_3_work_charge INT,
alt_4_work_charge INT,
alt_1_home_charge INT,
alt_2_home_charge INT,
alt_3_home_charge INT,
alt_4_home_charge INT,
alt_1_mpg INT,
alt_2_mpg INT,
alt_3_mpg INT,
alt_4_mpg INT,
alt_1_elec_mpg INT,
alt_2_elec_mpg INT,
alt_3_elec_mpg INT,
alt_4_elec_mpg INT,
alt_1_fuel1_per100 INT,
alt_2_fuel1_per100 INT,
alt_3_fuel1_per100 INT,
alt_4_fuel1_per100 INT,
alt_1_fuel2_per100 INT,
alt_2_fuel2_per100 INT,
alt_3_fuel2_per100 INT,
alt_4_fuel2_per100 INT,
alt_1_refueltime INT,
alt_2_refueltime INT,
alt_3_refueltime INT,
alt_4_refueltime INT,
alt_1_refuelelectime INT,
alt_2_refuelelectime INT,
alt_3_refuelelectime INT,
alt_4_refuelelectime INT,
alt_1_fuelstations INT,
alt_2_fuelstations INT,
alt_3_fuelstations INT,
alt_4_fuelstations INT,
alt_1_purchincent INT,
alt_2_purchincent INT,
alt_3_purchincent INT,
alt_4_purchincent INT,
alt_1_anncost INT,
alt_2_anncost INT,
alt_3_anncost INT,
alt_4_anncost INT,
alt_1_accel INT,
alt_2_accel INT,
alt_3_accel INT,
alt_4_accel INT,
choice INT);

CREATE TABLE tbl_main(
sampno INT PRIMARY KEY NOT NULL,
language TEXT,
age_grp INT,
california INT,
county INT,
region INT,
future_decision_role INT,
num_hh_vehicles INT,
household_members_1 INT,
household_members_2 INT,
household_members_3 INT,
household_members_4 INT,
tot_hh_members INT,
hybrid_experience INT,
past_hybrid INT,
phev_experience INT,
past_phev INT,
bev_experience INT,
past_bev INT,
fcv_experience INT,
past_fcv INT,
charge_spots INT,
charge_work INT,
home_parking_1 INT,
home_parking_2 INT,
home_parking_3 INT,
home_parking_4 INT,
home_parking_5 INT,
home_parking_6 INT,
home_parking_7 INT,
home_parking_8 INT,
home_parking_9 INT,
home_parking_8_x INT,
home_electricity_access INT,
hydrogen_station_awareness INT,
hsa_distance_1_1_x INT,
hsa_distance_1_2_x INT,
future_purchase INT,
next_purchase INT,
purchase_timing INT,
modes_used_1 INT,
modes_used_2 INT,
modes_used_3 INT,
modes_used_4 INT,
modes_used_5 INT,
modes_used_6 INT,
modes_used_7 INT,
modes_used_8 INT,
modes_used_9 INT,
modes_used_10 INT,
modes_used_11 INT,
modes_used_12 INT,
mode_freq_1 INT,
mode_freq_2 INT,
mode_freq_3 INT,
mode_freq_4 INT,
mode_freq_5 INT,
mode_freq_6 INT,
mode_freq_7 INT,
mode_freq_8 INT,
mode_freq_9 INT,
mode_freq_10 INT,
mode_freq_11 INT,
mode_freq_12 INT,
housing INT,
housing_1_8_x TEXT,
solar INT,
solar_future INT,
income INT
);

CREATE TABLE tbl_person(
sampno INT PRIMARY KEY NOT NULL,
perid TEXT,            
perno INT, 
relationship INT, 
gender INT, 
employment INT,
student INT,
education INT,
license INT,
vehno INT,
vehicle_string TEXT,
drive_freq INT,
transit_freq INT,
tnc_freq INT,
job_type INT,
work_mode INT,
work_distance INT,
work_days INT,
school_mode INT,
school_distance INT,
ethnicity INT,
race_1 INT,
race_2 INT,
race_3 INT,
race_4 INT,
race_5 INT,
race_6 INT,
race_7 INT,
race_6_x TEXT);

CREATE TABLE tbl_PEV(
sampno INT PRIMARY KEY NOT NULL,
vehid INT,
vehicle_num INT,
year INT,
make INT,
model INT,
fuel INT,
veh_type INT,
pev_miles_week INT,
pev_miles_month INT,
phev_percent INT,
battery_miles INT,
recharge_amount INT,
home_charge INT,
home_charge_type_1 INT,
home_charge_type_2 INT,
home_charge_type_3 INT,
home_charge_type_4 INT,
home_charge_type_5 INT,
home_charge_type_6 INT,
home_charge_type_7 INT,
home_charge_type_8 INT,
home_charge_type_8_x INT,
home_charge_type_no_1 INT,
home_charge_type_no_2 INT,
home_charge_type_no_3 INT,
home_charge_type_no_4 INT,
home_charge_type_no_5 INT,
home_charge_type_no_6 INT,
home_charge_type_no_7 INT,
home_charge_type_no_8 INT,
home_charge_type_no_8_x INT,
charging_tech_1_1 INT,
charging_tech_2_1 INT,
charging_tech_3_1 INT,
charging_tech_4_1 INT,
charging_tech_5_1 INT,
charging_tech_6_1 INT,
charging_tech_7_1 INT,
charging_tech_8_1 INT,
charging_tech_1_2 INT,
charging_tech_2_2 INT,
charging_tech_3_2 INT,
charging_tech_4_2 INT,
charging_tech_5_2 INT,
charging_tech_6_2 INT,
charging_tech_7_2 INT,
charging_tech_8_2 INT,
charging_tech_1_3 INT,
charging_tech_2_3 INT,
charging_tech_3_3 INT,
charging_tech_4_3 INT,
charging_tech_5_3 INT,
charging_tech_6_3 INT,
charging_tech_7_3 INT,
charging_tech_8_3 INT,
primary_charge INT,
electric_expense INT,
electric_expense_7_x INT,
upgrade_cost INT,
weekday_charging_1 INT,
weekday_charging_2 INT,
weekday_charging_3 INT,
weekday_charging_4 INT,
weekend_charging_1 INT,
weekend_charging_2 INT,
weekend_charging_3 INT,
weekend_charging_4 INT,
variable_rates INT,
variable_rates_usage INT,
ev_rate INT,
charge_cost INT,
determine_cost INT,
home_importance INT,
park_work_school INT,
recharge_stations_1 INT,
recharge_stations_2 INT,
recharge_stations_3 INT,
recharge_stations_4 INT,
recharge_stations_5 INT,
recharge_stations_6 INT,
charging_freq_1 INT,
charging_freq_2 INT,
charging_freq_3 INT,
charging_freq_4 INT,
charging_freq_5 INT,
charging_freq_6 INT,
work_school_importance_1 INT,
work_school_importance_2 INT,
public_availability INT,
public_distance INT,
public_distance_1_x INT,
public_distance_2_x INT,
public_use INT,
public_type_1 INT,
public_type_2 INT,
public_type_3 INT,
public_type_4 INT,
public_type_4_x INT,
public_wait INT,
public_importance INT,
pev_compare_cost INT,
pev_cost_importance INT,
pev_incentives_1 INT,
pev_incentives_2 INT,
pev_incentives_3 INT,
pev_incentives_4 INT,
pev_incentives_5 INT,
pev_incentives_6 INT,
pev_incentives_7 INT,
pev_experience INT,
pev_recommend INT,
pev_confidence INT,
pev_confidence_4_x INT
);

CREATE TABLE tbl_Vehicle(
sampno INT PRIMARY KEY NOT NULL,
vehid INT,
vehicle_num INT,
num_hh_vehicles INT,
year INT,
make TEXT,
make_other TEXT,
make_clean TEXT,
model TEXT,
model_other TEXT,
model_clean TEXT,
fuel INT,
fuel_clean INT,
veh_type INT,
veh_type_clean INT,
vehicle_status INT,
flag_hev INT,
flag_phev INT,
flag_fcev INT,
flag_bev INT,
obtain INT,
company_car INT,
current_acquired_year INT,
current_acquired_month INT,
annual_mileage INT,
electric_percent INT,
tnc_veh INT,
tnc_miles INT,
delivery INT,
delivery_miles INT,
mpg INT,
replace_intent INT,
current_primary_driver INT,
primary_driver_id INT,
company_acquired_year INT,
fuel_pay INT,
personal_miles INT,
business_miles INT,
company_primary_driver INT,
company_primary_driver_id INT,
other_drivers INT,
behavior_1 INT,
behavior_2 INT,
behavior_3 INT,
behavior_4 INT,
behavior_5 INT);