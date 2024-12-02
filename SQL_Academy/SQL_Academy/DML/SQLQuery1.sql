USE PD_318_DML

SELECT 
	[Ф.И.О.]=		FORMATMESSAGE('%s %s %s',last_name, first_name, ISNULL(middle_name, N'')),
	[ДИсциплина]=	discipline_name
FROM		Teachers,Disciplines,TeachersDisciplinesRelation
WHERE		discipline=discipline_id
and			teacher=teacher_id

