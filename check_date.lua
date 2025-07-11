local limit = {year = 2025, month = 7, day = 10}
local now = os.date("*t")

if now.year > limit.year or
   (now.year == limit.year and now.month > limit.month) or
   (now.year == limit.year and now.month == limit.month and now.day > limit.day) then
  error("expired") 
end
