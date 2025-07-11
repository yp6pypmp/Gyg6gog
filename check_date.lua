-- check_date.lua（GitHub側）
local limit = {year = 2024, month = 7, day = 10} -- ← 期限を過去にしてテスト用
local now = os.date("*t")

if now.year > limit.year or
   (now.year == limit.year and now.month > limit.month) or
   (now.year == limit.year and now.month == limit.month and now.day > limit.day) then
  gg.alert("❌ 有効期限切れ：このスクリプトは使用できません。")
  os.exit()
  return 
end
