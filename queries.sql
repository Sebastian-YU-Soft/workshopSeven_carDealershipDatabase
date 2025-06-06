select * from dealership;

select v.* from vehicles v
join inventory i on v.VIN = i.vin
where i.dealership_id = 1;

select * from vehicles where VIN = '1HGCM82633A004352';

select d. * from dealership d
join inventory i on d.dealership_id = i.dealership_id
where i.VIN = '1HGCM82633A004352';

SELECT Distinct d.* FROM dealerships d
JOIN inventory i ON d.dealership_id = i.dealership_id
JOIN vehicles v ON i.Vin = v.VIN
WHERE v.make = 'FORD' and v.model = 'Mustang' and v.color = 'REd';

SELECT s.* FROM sales_contracts s
JOIN inventory i ON s.VIN = i.VIN
WHERE i.dealership_id = 1 and s.sale_date between '2023-01-01' and '2024-12-31';