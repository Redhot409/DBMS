USE PD_318_DML;

SELECT 
		--last_name + ' ' + first_name + ' ' + middle_name AS N'�.�.�',
		--[���] = FORMATMESSAGE
		--(IIF(middle_name IS NULL, N'%s %s',N'%s %s %s'), last_name, first_name, middle_name),
		--[���] = FORMATMESSAGE
		--(N'%s %s %s', last_name, first_name, ISNULL(middle_name,N'')),
		--birth_date			AS	N'���� ��������',
		--[�������]			= DATEDIFF(YEAR,birth_date, GETDATE()),
		--[group_name]		AS N'������',
		direction_name		AS N'����������� ��������'
		COUNT(DISTINCT, group_id)	AS N'���������� �����',
FROM	Students, Groups,Directions
WHERE	direction=direction_id
AND		[group]=group_id
GROUP BY direction_name
;