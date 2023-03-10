select * from customers c inner join employees e
on c.salesRepEmployeeNumber = e.employeeNumber
inner join offices o
on e.officeCode = o.officeCode
inner join payments p
on p.customerNumber = c.customerNumber
inner join orders od
on od.customerNumber = c.customerNumber
inner join orderdetails d
on d.orderNumber = od.orderNumber
inner join products pr
on pr.productCode = d.productCode
inner join productlines pl
on pl.productLine = pr.productLine;

select customername as nome, phone as telefone,
e.firstName as funcionario
 from customers c 
 inner join employees e
 on e.employeenumber = c.salesRepEmployeeNumber;
 
 select *from customers where country = 'USA' and
 (city = 'San Francisco' or city = 'Las Vegas');
 
  select *from customers where country = 'USA' and
 city in ('San Francisco' , 'Las Vegas');
 
   select *from customers where country = 'France' and
 creditLimit > 10000 order by customerName asc;
 
   select *from customers where country = 'France' and
 creditLimit > 10000 order by customerName desc;
 
 select *from customers
 where customerName like '%mini%';
 
  select *from customers
 where customerName like '%a';
 
   select *from customers
 where customerName like 'a%';
 
 select count(*) as totalClientes from customers;
 
 select count(*) as totalClientes from customers
 where creditLimit > 25000;
 
 select country, count(*) as total from customers group by country order by total desc;
 
  select country, count(*) from customers group by country ;
  
select * from orders od
inner join orderdetails d 
on d.orderNumber = od.orderNumber
inner join products pr
on pr.productCode = d.productCode
where productName = '1948 Porsche Type 356 Roadster';

SELECT customerNumber, count(*) AS total
FROM orders
GROUP BY customerNumber
HAVING count(*) > 2


