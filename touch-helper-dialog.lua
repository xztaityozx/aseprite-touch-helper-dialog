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
      :separator({text="tool"})
      :button({text="Pencil", onclick=function() app.activeTool = "pencil" end})
      :button({text="Eraser",onclick=function() app.activeTool = "eraser" end})
      :button({text="Picker",onclick=function() app.activeTool = "eyedropper" end})
      :button({text="Move",onclick=function() app.activeTool = "move" end})
      :button({text="Line",onclick=function() app.activeTool = "line" end})
      :button({text="Curve",onclick=function() app.activeTool = "curve" end})
      :button({text="Bucket",onclick=function() app.activeTool = "paint_bucket" end})
      :separator({text="selection"})
      :button({text="Rect",onclick=function() app.activeTool = "rectangular_marquee" end})
      :button({text="Wand",onclick=function() app.activeTool = "magic_wand" end})
      :newrow()
      :button({text="Copy",onclick=function() app.command.Copy() end})
      :button({text="Paste",onclick=function() app.command.Paste() end})
      :button({text="Cancel",onclick=function() app.command.Cancel() end})
      :separator({text="zoom"})
      :button({text="[+]", onclick=function () app.command.Zoom({["action"]="in"}) end})
      :button({text="[-]", onclick=function () app.command.Zoom({["action"]="out"}) end})
      :show({wait=false})
    end
  })
end

function exit(plugin)
end
