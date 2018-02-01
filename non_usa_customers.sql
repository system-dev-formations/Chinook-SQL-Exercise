select FirstName||" "|| LastName as "Name", customerId, Country
from Customer
where Country!= "USA";