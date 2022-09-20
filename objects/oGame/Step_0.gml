var enemies = instance_number(oEnemy);
var allDead = true;

for (var i = 0; i < enemies;i ++) {
	if (!instance_find(oEnemy, i).dead) allDead = false;
}

if (allDead) game_restart();