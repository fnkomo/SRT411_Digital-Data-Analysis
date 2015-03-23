install.packages("swirl")
library("swirl")
install_from_swirl("Getting_and_Cleaning_Data")
swirl()
Sys.getlocale("LC_TIME")
library(lubridate)
Type help(package = lubridate)
help(package = lubridate)
today()
this_day <- today()
this_day
year(this_day)
wday(this_day)
wday(this_day, label = TRUE)
this_moment <- now()
this_moment
hour(this_moment)
my_date <- ymd("1989-05-17")
my_date
class(my_date)
ymd("1989 May 17")
mdy("March 12, 1975")
dmy(25081985)
ymd("192012")
ymd("1920/1/2")
dt1
ymd_hms(dt1)
hms("03:22:14")
dt2
ymd(dt2)
update(this_moment, hours = 8, minutes = 34, seconds = 55)
this_moment
this_moment <- update(this_moment, hours = 10, minutes = 07, seconds = 10)
this_moment
nyc <- now("America/New_York")
nyc
depart <- nyc + days(2)
nyc
depart
depart <- update(depart, hours = 17, minutes = 34)
depart
arrive <- depart + hours(15) + minutes(50)
?with_tz
arrive <- with_tz(arrive, tz = "Asia/Hong_Kong")
arrive
last_time <- mdy("June 17, 2008", tz = "Singapore")
last_time
new_interval()
?new_interval()
?new_interval()
?new_interval
how_long <- new_interva(last_time, arrive)
how_long <- new_interval(last_time, arrive)
as.period(how_long)
