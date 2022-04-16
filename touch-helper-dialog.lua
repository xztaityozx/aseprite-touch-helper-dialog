function init(plugin)
  plugin:newCommand({
    id="TouchHelperDialog6b5967371a",
    title="Touch Helper",
    group="view_extras",
    onclick=function ()
      dialog = Dialog("Touch Helper")
      dialog
      :button({text="Undo",onclick=function() app.command.Undo() end})
      :button({text="Redo",onclick=function() app.command.Redo() end})
      :button({text="[+]", onclick=function () app.command.Zoom({["action"]="in"}) end})
      :button({text="[-]", onclick=function () app.command.Zoom({["action"]="out"}) end})
      :newrow()
      :button({text="B", onclick=function() app.activeTool = "pencil" end})
      :button({text="E",onclick=function() app.activeTool = "eraser" end})
      :button({text="I",onclick=function() app.activeTool = "eyedropper" end})
      :button({text="V",onclick=function() app.activeTool = "move" end})
      :button({text="H",onclick=function() app.activeTool = "hand" end})
      :button({text="L",onclick=function() app.activeTool = "line" end})
      :button({text="S+L",onclick=function() app.activeTool = "curve" end})
      :button({text="G",onclick=function() app.activeTool = "paint_bucket" end})
      :newrow()
      :button({text="Rect",onclick=function() app.activeTool = "rectangular_marquee" end})
      :button({text="Wand",onclick=function() app.activeTool = "magic_wand" end})
      :button({text="Copy",onclick=function() app.command.Copy() end})
      :button({text="Paste",onclick=function() app.command.Paste() end})
      :show({wait=false})
    end
  })
end

function exit(plugin)
end

