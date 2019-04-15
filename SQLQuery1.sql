select [Page_ID] ,[Visit_Date] ,count ([User_ID]) as 'Total_User_Sessions' from dbo.SamplePageviews
group by [Page_ID],[Visit_Date]
order by  [Page_ID] asc