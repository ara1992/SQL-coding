select  a.[ProductID] as 'Product_A' ,b.ProductID as 'Product_B',count(a.CustomerID) as 'Unique_User_Count' from dbo.SampleOrders a inner join dbo.SampleOrders b
on a.CustomerID=b.CustomerID 
and a.ProductID > b.ProductID
group by a.[ProductID],b.ProductID
order by count(distinct a.CustomerID) desc