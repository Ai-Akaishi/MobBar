### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

# 文字列を生成
data modify storage mobbar: value set value [""]
data modify storage mobbar: left set value [""]

scoreboard players set _ MobBar 0
scoreboard players operation _ MobBar > @s MobBarValue
scoreboard players operation _ MobBar < @s MobBarMax
execute if score _ MobBar matches 1.. run function mobbar:build/value

## 現在地を再度取得
scoreboard players set _ MobBarValue 0
scoreboard players operation _ MobBarValue > @s MobBarValue
scoreboard players operation _ MobBarValue < @s MobBarMax
## 残りを計算
scoreboard players operation _ MobBar = @s MobBarMax
scoreboard players operation _ MobBar -= _ MobBarValue
execute if score _ MobBar matches 1.. run function mobbar:build/left

execute at @s positioned ~ 350 ~ align xyz positioned ~0.5 ~ ~0.5 run function mobbar:apply
