USE PD_318_DML

SELECT 
	[�.�.�.]=		FORMATMESSAGE('%s %s %s',last_name, first_name, ISNULL(middle_name, N'')),
	[����������]=	discipline_name
FROM		Teachers,Disciplines,TeachersDisciplinesRelation
WHERE		discipline=discipline_id
and			teacher=teacher_id
