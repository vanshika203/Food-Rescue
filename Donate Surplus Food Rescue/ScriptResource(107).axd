﻿Type.registerNamespace("Sys.Extended.UI.HTMLEditor.ToolbarButton");Sys.Extended.UI.HTMLEditor.ToolbarButton.StrikeThrough=function(n){Sys.Extended.UI.HTMLEditor.ToolbarButton.StrikeThrough.initializeBase(this,[n])};Sys.Extended.UI.HTMLEditor.ToolbarButton.StrikeThrough.prototype={callMethod:function(){if(!Sys.Extended.UI.HTMLEditor.ToolbarButton.StrikeThrough.callBaseMethod(this,"callMethod"))return!1;this._designPanel._execCommand("strikeThrough",!1,null)},checkState:function(){return Sys.Extended.UI.HTMLEditor.ToolbarButton.StrikeThrough.callBaseMethod(this,"checkState")?this._designPanel._queryCommandState("strikeThrough"):!1}};Sys.Extended.UI.HTMLEditor.ToolbarButton.StrikeThrough.registerClass("Sys.Extended.UI.HTMLEditor.ToolbarButton.StrikeThrough",Sys.Extended.UI.HTMLEditor.ToolbarButton.EditorToggleButton);