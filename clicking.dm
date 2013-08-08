atom/proc
    LeftClick(mob/clicker, location, control, params)
    RightClick(mob/clicker, location, control, params)
    MiddleClick(mob/clicker, location, control, params)

    LeftAltClick(mob/clicker, location, control, params)
    RightAltClick(mob/clicker, location, control, params)
    MiddleAltClick(mob/clicker, location, control, params)

    LeftShiftClick(mob/clicker, location, control, params)
    RightShiftClick(mob/clicker, location, control, params)
    MiddleShiftClick(mob/clicker, location, control, params)

    LeftCtrlClick(mob/clicker, location, control, params)
    RightCtrlClick(mob/clicker, location, control, params)
    MiddleCtrlClick(mob/clicker, location, control, params)

client/Click(atom/object, location, control, params)
    var/list/p = params2list(params)
    if     (("shift" in p) && ("middle" in p))object.MiddleShiftClick(mob, location, control, params)
    else if(("shift" in p) && ("right" in p)) object.RightShiftClick(mob, location, control, params)
    else if(("shift" in p) && ("left" in p))  object.LeftShiftClick(mob, location, control, params)

    else if(("ctrl" in p) && ("middle" in p)) object.MiddleCtrlClick(mob, location, control, params)
    else if(("ctrl" in p) && ("right" in p))  object.RightCtrlClick(mob, location, control, params)
    else if(("ctrl" in p) && ("left" in p))   object.LeftCtrlClick(mob, location, control, params)

    else if(("alt" in p) && ("middle" in p)) object.MiddleAltClick(mob, location, control, params)
    else if(("alt" in p) && ("right" in p))  object.RightAltClick(mob, location, control, params)
    else if(("alt" in p) && ("left" in p))   object.LeftAltClick(mob, location, control, params)

    else if("middle" in p) object.MiddleClick(mob, location, control, params)
    else if("right" in p)  object.RightClick(mob, location, control, params)
    else if("left" in p)   object.LeftClick(mob, location, control, params)