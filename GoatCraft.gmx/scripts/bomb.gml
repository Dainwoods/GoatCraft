///bomb(num)
//Spawns a type of bomb when triggered
num = argument[0];
playerXCoord = obj_player.x;
playerYCoord = obj_player.y;

tempXCoord = random_range(max(0, playerXCoord - 64), min(1024, playerXCoord + 64));
tempYCoord = random_range(max(64, playerYCoord - 64), min(736, playerYCoord + 64));
xCoord = tempXCoord - (tempXCoord mod(32)) + 16;
yCoord = tempYCoord - (tempYCoord mod(32)) + 16;

if(num == 5) {
    instance_create(xCoord, yCoord, obj_5x5Bomb);
}
else if(num == 3) {
    instance_create(xCoord, yCoord, obj_3x3Bomb);
}
