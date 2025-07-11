local limit = {year = 2025, month = 7, day = 15}
local now = os.date("*t")

if now.year > limit.year or
   (now.year == limit.year and now.month > limit.month) or
   (now.year == limit.year and now.month == limit.month and now.day > limit.day) then
  gg.alert("❌ このスクリプトの有効期限は 2025/07/15 です。現在は使用できません。")
  os.exit()
end