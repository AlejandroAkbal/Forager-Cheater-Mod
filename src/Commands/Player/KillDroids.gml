#define KillAllDroidsCommand
    CommandCreate("killAllDroids", 0, ScriptWrap(KillAllDroids));

#define KillAllDroids()
/// @desc Kills all droids

    if (!InGame()) return Trace(global.notInGameMessage)
    
    // Droid variables
    var totalDroids = ItemCount(Item.Droid)
    var activeDroids = instance_number(objDroid)
    
    // Debug droid data
    Trace("Total Droid count: " + string(totalDroids));
    Trace("Active Droid count: " + string(activeDroids));
    
    // Drones respawn on reload
    instance_destroy(objDroid)
    
    // Message
    Trace("Killed " + string(activeDroids) + " Droids");
    