///knockback(receiver, sender, power, time)
receiver = argument0;
sender = argument1;
kb_power = argument2;
kb_time = argument3;


receiver.kbDirection = point_direction(sender.x,sender.y,receiver.x,receiver.y,);
receiver.kbPower = min(3,kb_power);
receiver.kbTime = kb_time;