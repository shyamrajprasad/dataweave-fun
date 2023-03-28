//https://help.mulesoft.com/s/question/0D52T00006Ppk1fSAB/how-to-transform-the-nested-array-of-objects-into-the-expected-csv-format
%dw 2.0
output application/csv
---
(payload flatMap ((item, index) -> 
    (item.Skills default []) ++ (item.Courses default []) map (
{
    "S.No": index,
    "Name": item.Name,
    "Role": item.Role,
    "Company": item.Company,
    "Location": item.Location,
    "Skill": $.Skill,
    "SkillExp": $.SkillExp,
    "Course": $.Course,
    "CourseExp": $.CourseExp
    }

    )
   
))  map ((item, index) -> 
    item  update {
        case ."S.No" -> index+1
    }
)