select diff as 'Date_Interval_Since_Prev_Order',count([OrderID]) as 'Order_Count' from
    (
    select dbo.Salesorder.*,
           datediff(day,
                    lag([OrderDate],1) over (partition by [CustomerID] order by [OrderID]),
                    [OrderDate]
                   ) as diff
    from  dbo.Salesorder$ 
      ) as TT where  diff>0
	  group by diff
	  order by count([OrderID]) desc