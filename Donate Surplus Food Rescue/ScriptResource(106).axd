﻿Type.registerNamespace("Sys.Extended.UI.HTMLEditor.ToolbarButton");Sys.Extended.UI.HTMLEditor.ToolbarButton.BulletedList=function(n){Sys.Extended.UI.HTMLEditor.ToolbarButton.BulletedList.initializeBase(this,[n])};Sys.Extended.UI.HTMLEditor.ToolbarButton.BulletedList.prototype={callMethod:function(){if(!Sys.Extended.UI.HTMLEditor.ToolbarButton.BulletedList.callBaseMethod(this,"callMethod"))return!1;this._designPanel._execCommand("InsertUnorderedList")}};Sys.Extended.UI.HTMLEditor.ToolbarButton.BulletedList.registerClass("Sys.Extended.UI.HTMLEditor.ToolbarButton.BulletedList",Sys.Extended.UI.HTMLEditor.ToolbarButton.MethodButton);