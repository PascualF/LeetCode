# Write your MySQL query statement below
select 
    st.student_id,
    st.student_name,
    sb.subject_name,
    COUNT(ex.subject_name) as attended_exams
from students AS st
cross join subjects as sb
left join examinations as ex ON st.student_id=ex.student_id and sb.subject_name=ex.subject_name
group by st.student_id,sb.subject_name, st.student_name
order by st.student_id, sb.subject_name