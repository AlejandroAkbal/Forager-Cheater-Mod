#define SetXPCommand
    CommandCreate("setXP", 0, ScriptWrap(SetXP), "quantity");

#define SetXP(_args)
/// @desc Sets XP to the quantity argument

    if (!InGame()) return Trace(global.notInGameMessage)
    
    var _quantity;
    
    // Assign values
    _quantity = real(_args[0]);
    
    // Set XP
    if (_quantity > objPlayer.xp){
        objPlayer.xpToGain = _quantity
    }
    
    else {
        objPlayer.xp = _quantity
        objPlayer.xpToGain = _quantity
    }
    
    // Message
    Trace("Set XP to " + string(_quantity));
    