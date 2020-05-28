ObjectName = function(...) return lb.ObjectName(...) end
ObjectPosition = function(...) return lb.ObjectPosition(...) end
ObjectBounding = function(...) return lb.UnitBoundingRadius(...) end

LibDraw = LibStub("LibDraw-1.0")

LibDraw.Sync(function()
    if lb then
        if UnitExists("target") then
            local px, py, pz = ObjectPosition("player")
            local tx, ty, tz = ObjectPosition("target")
            local tarBounding = ObjectBounding("target")
            
            if tx and ty and tz then
                LibDraw.Line(px, py, pz, tx, ty, tz)
                LibDraw.Text("TARGET!", "GameFontBlack", tx, ty, tz + tarBounding)
                LibDraw.GroundCircle(tx, ty, tz, 12)
            end
        end
    end
end)

LibDraw.Enable(0)