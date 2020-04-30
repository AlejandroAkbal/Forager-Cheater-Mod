// #define CreateNothingCommand
//     CommandCreate("createNothing", 0, ScriptWrap(CreateNothing));

#define CreateNothing()
    global.Nothing = ItemCreate(
        undefined,
        "Nothing",
        "Does absolutely nothing", 
        sprPoop,
        ItemType.Consumable,
        ItemSubType.None,
        0,
        0,
        0,
        [Item.Droid, 1],
        ScriptWrap(HandleNothingOnUse),
        0,
        true
        );
        
    StructureAddItem(Structure.SewingStation, global.Nothing)
    
    // Message
    Trace("Added Item 'Nothing' to 'SewingStation'");
    
#define HandleNothingOnUse
    