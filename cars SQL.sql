select * from carsdata;

-- 1. Question Retrieve the Make and Model of vehicles with the highest Ex-Showroom_Price.

select model,make,price from carsdata where Price = (select max(price) from carsdata);

-- 2. Question Find the average Fuel_Tank_Capacity for vehicles that have more than 4 Cylinders. 

select avg(Fuel_Tank_Capacity) from carsdata where Cylinders > 4;

-- 3. Question List the unique Fuel_Types present in the dataset

select distinct(Fuel_Type) from carsdata;

-- 4. question Calculate the average Length, Width, and Height of vehicles for each Body_Type.

select  body_type,avg(length), avg(width), avg(height) from carsdata group by Body_Type;

-- 5. Question Count the number of vehicles with ABS (Anti-lock Braking System) and EBD (Electronic Brake-force Distribution) installed.

select count(*) from carsdata where ABS='yes' and EBD = 'Yes' ;

-- 6. Question Show the Make, Model, and ARAI_Certified_Mileage of vehicles with ARAI_Certified_Mileage greater than 25.

select Make, Model, ARAI_Certified_Mileage from carsdata where ARAI_Certified_Mileage > 25;

-- 7. Question Retrieve the top 5 variants with the highest Average_Fuel_Consumption.

select variant, Average_Fuel_Consumption from carsdata order by Average_Fuel_Consumption desc limit 5;

-- 8. Question List the Makes and Models of vehicles that have a Start_/_Stop_Button.

Select make, model from carsdata where  Start_/_Stop_Button = 'Yes' ;

-- 9. Question Find the most common Cylinder_Configuration among the vehicles.

select  Cylinder_Configuration, count(*) from carsdata group by Cylinder_Configuration limit 1;

-- 10. Question Calculate the average Ex-Showroom_Price for vehicles of each Emission_Norm category.

select avg(price) , Emission_Norm from carsdata group by Emission_Norm;





