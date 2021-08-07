///scrMouseSetMovement(mouseMode);

// Check for mouse mode
switch(argument0) {
    case "target": // Move to target
        atTarget = false;
        state = "move";
        moveTargetX = mouse_x;
        moveTargetY = mouse_y;
    break;
    case "targetLine": // Create a line of units
        // Moved to step event
    break;
    case "targetCircle": // Create a circle of units
        with(oUnitParent) { selectionIndex = 0; } 
        atTarget = false;
        state = "move";
        with(oMouse) {
            var counter = 0;
            var instanceIndex;
            // Loop through instances and grab id's of those who are selected to new array
            for (var i=0;i<instance_number(oUnitParent);++i) {
                var inst = instance_find(oUnitParent, i);
                if (inst != noone) {
                    if (inst.selected == true) {
                        instanceIndex[counter] = inst.id;
                        inst.selectionIndex = counter;
                        counter++;
                    }
                }   
            }   
                                
            // Loop through new array and construct new positions using circle trig
            for (var j=0;j<counter;j++) {
                var inst = instanceIndex[j];
                var len = (counter/2)*(inst.sprite_width/2);
                var angle = inst.selectionIndex * (360 / counter);
                var xx = mouse_x + lengthdir_x(len, angle);
                var yy = mouse_y + lengthdir_y(len, angle);
                inst.moveTargetX = xx;
                inst.moveTargetY = yy;   
            }
        }
    break;
    case "targetUnit": // Chase Target
        var inst = instance_nearest(mouse_x, mouse_y, oEntityParent);
        if (inst != -1) {
            atTarget = false;
            state = "move";
            moveTargetX = inst.x;
            moveTargetY = inst.y;
        }
    break;
    case "selfDestruct": // Destroy Unit
        var value = hp*5;
        var inst = instance_create(x, y, oShipDeathCurrencyParticle);
        inst.value = value;
        instance_destroy();
    break;
}
