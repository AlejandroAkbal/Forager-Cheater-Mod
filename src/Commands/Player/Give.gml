#define GiveItemCommand
    CommandCreate("giveItem", 0, ScriptWrap(GiveItem), "item_ID", "quantity");

#define GiveItem(_args)
/// @desc Gives said item to the player

    if (!InGame()) return Trace(global.notInGameMessage)
    
    var _item, _quantity;
    
    // Assign values
    _item = real(_args[0]);
    _quantity = real(_args[1]);
    
    // Give Item
    GainItem(_item, _quantity);
    
    // Message
    Trace("Received " + string(_quantity) + " " + string(ItemGet(_item, ItemData.Name)));
    