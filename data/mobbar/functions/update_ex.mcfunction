### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

## 文字列を生成
data modify storage mobbar: value set value [""]
data modify storage mobbar: left set value [""]

## 指定がないときの初期化
execute unless data storage mobbar: base_format run data modify storage mobbar: base_format set value '{"text":"","color":"gray"}'
execute unless data storage mobbar: accent_format run data modify storage mobbar: accent_format set value '{"text":"","color":"yellow"}'
execute unless data storage mobbar: bar_length run data modify storage mobbar: bar_length set value 20

## Valueを生成
scoreboard players set _ MobBar 0
scoreboard players operation _ MobBar > @s MobBarValue
scoreboard players operation _ MobBar < @s MobBarMax
execute store result score _ MobBarMax run data get storage mobbar: bar_length 1
scoreboard players operation _ MobBar *= _ MobBarMax
execute if score @s MobBarMax matches 1.. run scoreboard players operation _ MobBar /= @s MobBarMax
scoreboard players operation _ MobBarValue = _ MobBar
execute if score _ MobBar matches 1.. run function mobbar:build/value

## Leftを生成
execute store result score _ MobBar run data get storage mobbar: bar_length 1
scoreboard players operation _ MobBar -= _ MobBarValue
execute if score _ MobBar matches 1.. run function mobbar:build/left

execute at @s positioned ~ 350 ~ align xyz positioned ~0.5 ~ ~0.5 run function mobbar:apply_ex
