USE PD_318_DML;

SELECT 
		--last_name + ' ' + first_name + ' ' + middle_name AS N'Ф.И.О',
		--[ФИО] = FORMATMESSAGE
		--(IIF(middle_name IS NULL, N'%s %s',N'%s %s %s'), last_name, first_name, middle_name),
		--[ФИО] = FORMATMESSAGE
		--(N'%s %s %s', last_name, first_name, ISNULL(middle_name,N'')),
		--birth_date			AS	N'Дата рождения',
		--[Возраст]			= DATEDIFF(YEAR,birth_date, GETDATE()),
		--[group_name]		AS N'Группа',
		direction_name		AS N'Направление обучения'
		COUNT(DISTINCT, group_id)	AS N'Количество групп',
FROM	Students, Groups,Directions
WHERE	direction=direction_id
AND		[group]=group_id
GROUP BY direction_name
;