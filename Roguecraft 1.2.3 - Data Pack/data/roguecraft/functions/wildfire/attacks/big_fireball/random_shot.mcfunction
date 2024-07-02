execute store result storage roguecraft:master random_rotation.x int 1 run random value -180..180
execute store result storage roguecraft:master random_rotation.z int 1 run random value 1..15
function roguecraft:wildfire/attacks/set_random_rotation with storage roguecraft:master random_rotation
function roguecraft:wildfire/attacks/big_fireball/shoot