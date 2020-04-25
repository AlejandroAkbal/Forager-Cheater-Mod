#define SetLevelCommand
    CommandCreate("setLevel", 0, ScriptWrap(SetLevel), "quantity");

#define SetLevel(_args)
/// @desc Sets XP to the quantity argument

    if (!InGame()) return Trace(global.notInGameMessage)
    
    var _quantity;
    
    // Assign values
    _quantity = real(_args[0]);
    
    // Set XP
    objPlayer.level = _quantity
    
    // Message
    Trace("Set level to " + string(_quantity));
    