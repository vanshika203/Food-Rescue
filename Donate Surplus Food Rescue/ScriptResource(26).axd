﻿if(Sys&&Sys.WebForms&&Sys.WebForms.PageRequestManager&&$act){if(!$act.isPostBackActivatorHandled){$act.isPostBackActivatorHandled=!0;function pageLoaded(n,t){for(var r=t.get_panelsUpdated(),i=0;i<r.length;i++)$act.activateWidgets("#"+r[i].id+" *")}var prm=Sys.WebForms.PageRequestManager.getInstance();prm.add_pageLoaded(pageLoaded)}Sys.Application.add_load(function(){$act.init();var n=window.$find;window.$find=function(t){var i=$act.behaviors[t];return i?i:n?n(t):null}})}