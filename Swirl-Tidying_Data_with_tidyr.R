install.packages("swirl")
library("swirl")
install_from_swirl("Getting_and_Cleaning_Data")
swirl()
library(tidyr)
students
?gather
gather(students, sex, count, -grade)
students2
res <- gather(students2, sex_class, count, -grade)
res
?separate
separate(res, sex_class, into = c("sex", "class"))

***script***
	students2 %>%
  		gather(sex_class, count, -grade) %>%
 		 separate(sex_class, c("sex", "class")) %>%
 		 print
 		 
submit()
students3

***script***
students3 %>%
  gather(class, grade, class1:class5, na.rm = TRUE) %>%
  print
  
?spread

***script***
students3 %>%
  gather(class, grade, class1:class5, na.rm = TRUE) %>%
  spread( test, grade ) %>%
  print
  
extract_numeric("class5")
?extract_numeric
?mutate

***script***
students3 %>%
  gather(class, grade, class1:class5, na.rm = TRUE) %>%
  spread(test, grade) %>%
  mutate(class = extract_numeric(class)) %>%
  print

students4

***script***
student_info <- students4 %>%
  select( id, name, sex) %>%
  print
  
passed
failed
mutate(passed, status = "passed")
passed <- passed %>% mutate(status = "passed")
failed <- failed %>% mutate(status = "failed")
?bind_rows
bind_rows(passed, failed)
sat
?select

***script***
student_info <- students4 %>%
  select(id, name, sex) %>%
  unique() %>%
  print  

***script***
gradebook <- students4 %>%
  select ( id, class, midterm, final ) %>%
  print
  
***script***
sat %>%
  select(-contains("total")) %>%
  gather(part_sex, count, -score_range) %>%
  separate(part_sex, c("part", "sex")) %>%
  print


***script***
sat %>%
  select(-contains("total")) %>%
  gather(part_sex, count, -score_range) %>%
  separate(part_sex, c("part", "sex")) %>%
  group_by(part, sex) %>%
  mutate(total = sum(count),
         prop = count / total
  ) %>% print
  submit()