# match names
tag @e[name="Silent"] add silence_name_match
tag @e[name="silent"] add silence_name_match
tag @e[name="Silenced"] add silence_name_match
tag @e[name="silenced"] add silence_name_match

# modify NBT data only if necessary
execute as @e[tag=silence_name_match,nbt=!{Silent:1b}] run data modify entity @s Silent set value 1b
execute as @e[tag=!silence_name_match,nbt={Silent:1b}] run data remove entity @s Silent

tag @e remove silence_name_match
