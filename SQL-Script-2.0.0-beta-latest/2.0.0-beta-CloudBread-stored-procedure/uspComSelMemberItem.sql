--DROP PROC uspComSelMemberItem
CREATE PROC uspComSelMemberItem
 @MemberItemID varchar(max)
AS 
	SELECT 
	MemberItemID, MemberID, ItemListID, ItemCount, ItemStatus, sCol1, sCol2, sCol3, sCol4, sCol5, sCol6, sCol7, sCol8, sCol9, sCol10
	FROM MemberItems with(nolock)
	WHERE MemberItemID like @MemberItemID and HideYN like 'N' and DeleteYN like 'N'
GO

/*
-----------------------------------------------------------------------
EXEC uspComSelMemberItem 'E43E2EC7-F162-43E4-90FE-61E7CD8A385D'	
-----------------------------------------------------------------------
Select MemberItemID, MemberID, ItemListID, ItemCount, ItemStatus, sCol1, sCol2, sCol3, sCol4, sCol5, sCol6, sCol7, sCol8, sCol9, sCol10 from MemberItems
Select * from MemberItems
Select * from MemberItems
*/