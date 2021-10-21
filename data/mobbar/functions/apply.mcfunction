### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

summon minecraft:item_frame ~ ~ ~ {Fixed:true,Invisible:true,Item:{id:"minecraft:stone",Count:1b},Tags:[MobBar]}

item modify entity @e[dx=0,tag=MobBar,limit=1] container.0 mobbar:set_name
data modify entity @s CustomName set from entity @e[dx=0,tag=MobBar,limit=1] Item.tag.display.Name

kill @e[dx=0,tag=MobBar]
