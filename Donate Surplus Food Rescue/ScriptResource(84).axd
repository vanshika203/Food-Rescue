﻿Type.registerNamespace("Sys.Extended.UI.HTMLEditor.ToolbarButton");Sys.Extended.UI.HTMLEditor.ToolbarButton.Ltr=function(n){Sys.Extended.UI.HTMLEditor.ToolbarButton.Ltr.initializeBase(this,[n])};Sys.Extended.UI.HTMLEditor.ToolbarButton.Ltr.prototype={callMethod:function(){var n,t,i;if(!Sys.Extended.UI.HTMLEditor.ToolbarButton.Ltr.callBaseMethod(this,"callMethod"))return!1;this._designPanel._doc.body.style.direction=this.checkState()?"rtl":"";Sys.Extended.UI.HTMLEditor.isIE||(n=this._designPanel._getSelection(),t=this._designPanel._createRange(n),this._designPanel._removeAllRanges(n),this._designPanel._selectRange(n,t),this._designPanel.focusEditor());i=this;setTimeout(function(){i._editPanel.updateToolbar()},0)},checkState:function(){return Sys.Extended.UI.HTMLEditor.ToolbarButton.Ltr.callBaseMethod(this,"checkState")?(this._designPanel._doc.body.style.direction&&this._designPanel._doc.body.style.direction=="rtl")?!1:!0:!1}};Sys.Extended.UI.HTMLEditor.ToolbarButton.Ltr.registerClass("Sys.Extended.UI.HTMLEditor.ToolbarButton.Ltr",Sys.Extended.UI.HTMLEditor.ToolbarButton.EditorToggleButton);