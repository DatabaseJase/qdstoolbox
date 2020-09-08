CREATE OR ALTER VIEW [dbo].[vQueryWaitsStore]
AS
SELECT
	 [wdi].[ReportID]				
	--,[wdi].[ObjectID]			
	--,[wdi].[SchemaName]			
	--,[wdi].[ObjectName]			
	,[wds].[PlanID]				
	,[wds].[QueryID]				
	,[wds].[QueryTextID]			
	,[wds].[StartTime]			
	,[wds].[EndTime]				
	,[wds].[DifferentPlansUsed]	
	,[wds].[DifferentQueriesUsed]	
	,[wds].[Total_Duration]		
	,[wds].[Total_CPUTime]		
	,[wds].[Total_CLRTime]		
	,[wds].[Total_Wait]			
	,[wds].[Wait_CPU]				
	,[wds].[Wait_WorkerThread]	
	,[wds].[Wait_Lock]			
	,[wds].[Wait_Latch]			
	,[wds].[Wait_BufferLatch]		
	,[wds].[Wait_BufferIO]		
	,[wds].[Wait_Compilation]		
	,[wds].[Wait_SQLCLR]			
	,[wds].[Wait_Mirroring]		
	,[wds].[Wait_Transaction]		
	,[wds].[Wait_Idle]			
	,[wds].[Wait_Preemptive]		
	,[wds].[Wait_ServiceBroker]	
	,[wds].[Wait_TranLogIO]		
	,[wds].[Wait_NetworkIO]		
	,[wds].[Wait_Parallelism]		
	,[wds].[Wait_Memory]			
	,[wds].[Wait_UserWait]		
	,[wds].[Wait_Tracing]			
	,[wds].[Wait_FullTextSearch]	
	,[wds].[Wait_OtherDiskIO]		
	,[wds].[Wait_Replication]		
	,[wds].[Wait_LogRateGovernor]	
	--,CAST(DECOMPRESS([wdi].[QueryText]) AS NVARCHAR(MAX))	AS [QueryText]
FROM [dbo].[QueryWaitsStore] [wds]
INNER JOIN [dbo].[QueryWaitsIndex] [wdi]
ON [wds].[ReportID] = [wdi].[ReportID]