select * from dealership;

select v.* from vehicles v
join inventory i on v.VIN = i.vin
where i.dealership_id = 1;

select * from vehicles where VIN = '1HGCM82633A004352';