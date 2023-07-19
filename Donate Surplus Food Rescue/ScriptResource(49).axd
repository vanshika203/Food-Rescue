﻿Type.registerNamespace("Sys.Extended.UI.HTMLEditor");Sys.Extended.UI.HTMLEditor.DesignPanelEventHandler=function(n){var t,ui,yt,pt,fi,b,di,ei,wt,ct,nt,ut,f,si,hi,vi,y,et,dt,gt,nr,h,a,ot,g,it,st,e,tt,ti,ii,pi,o,vt,l,ri,s,at,rt,u,i;try{if(t=this,t._editPanel!=Sys.Extended.UI.HTMLEditor.LastFocusedEditPanel)return!0;if(Sys.Extended.UI.HTMLEditor.isIE)try{ui=this._doc.selection;fi=this._createRange(ui)}catch(ur){return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1}if((n.type=="mousedown"||n.type=="dblclick")&&this._focus(!0),!Sys.Extended.UI.HTMLEditor.isIE&&n.type=="keydown"&&n.keyCode==Sys.UI.Key.tab&&this._editPanel.get_suppressTabInDesignMode())return Sys.Extended.UI.HTMLEditor.LastFocusedEditPanel=null,!0;if(this.isPopup())return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;if(yt=!1,t._contextElement&&t._contextElement!=null){if(Function.createDelegate(this,Sys.Extended.UI.HTMLEditor.RemoveContextMenu)(),n.type=="keydown"||n.type=="keypress"){Sys.Extended.UI.HTMLEditor._stopEvent(n);return}yt=!0}if(typeof t.captureInDesign=="function"&&t.captureInDesign(n)===!1){Sys.Extended.UI.HTMLEditor._stopEvent(n);return}if(Sys.Extended.UI.HTMLEditor.isIE&&n.type=="mousedown"&&n.ctrlKey){var u=t._getSelection(),bi=n.clientX,ki=n.clientY;return setTimeout(function(){var r=t._getSelection(),i,n;for(r.type.toLowerCase()!="control"&&(i=t._doc.body.createTextRange(),i.moveToPoint(bi,ki),i.select()),r=t._getSelection(),i=t._createRange(r),n=Sys.Extended.UI.HTMLEditor.getSelParent(t);n!=null&&n.tagName.toUpperCase()!="BODY";){if(n.tagName.toUpperCase()=="A"&&n.href!=null&&typeof n.href!="undefined"&&n.href.length>0){window.open(n.href,"LinkViewWindow");break}n=n.parentNode}},0),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1}if(f=Sys.Extended.UI.HTMLEditor.isIE?n.srcElement:n.target,f.tagName!=null&&typeof f.tagName!="undefined"&&(f.tagName.toUpperCase()=="HTML"||f.tagName.toUpperCase()=="BODY")?t.__kkoka!=!0&&(t.__kkoka=!0,setTimeout(function(){if(t._editPanel==Sys.Extended.UI.HTMLEditor.LastFocusedEditPanel&&!t.toEndOfProtected())try{t.focusEditor()}catch(n){}t.__kkoka=!1},0)):Sys.Extended.UI.HTMLEditor.contentEditable(f)!=null&&setTimeout(function(){t._editPanel==Sys.Extended.UI.HTMLEditor.LastFocusedEditPanel&&t.toEndOfProtected()},0),yt&&Sys.Extended.UI.HTMLEditor.isIE){pt=this._getSelection();try{if(fi=this._createRange(pt),pt.type.toLowerCase()=="control")return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1}catch(fr){return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1}}if(b=Sys.Extended.UI.HTMLEditor.isIE&&n.type=="keydown"||n.type=="keypress",di=n.type+"--"+b,b&&!this._editPanel.get_keyboardEnabled())return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;if(o=String.fromCharCode(Sys.Extended.UI.HTMLEditor.isIE?n.keyCode:n.charCode).toLowerCase(),b&&t._editPanel.get_hotkeys()!=null&&t._editPanel.get_hotkeys().length>0)for(ei=t._editPanel.get_hotkeys().length,wt=o,(n.keyCode==18||n.keyCode==17||n.keyCode==16)&&(wt=null),ct=0;ct<ei;ct++)if(nt=t._editPanel.get_hotkeys()[ct],nt[1]==wt&&nt[2]==n.altKey&&nt[3]==n.shiftKey&&nt[4]==n.ctrlKey)return typeof nt[0]=="function"&&setTimeout(function(){nt[0](t);t.onContentChanged();t.focusEditor()},0),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;if(b&&n.shiftKey&&n.keyCode==45)this._commonPaste(n);else if(b&&n.ctrlKey&&n.altKey&&n.keyCode==Sys.UI.Key.home){for(ut=null,f=Sys.Extended.UI.HTMLEditor.getSelParent(t);f&&(f.nodeType==3||f.tagName&&f.tagName.toUpperCase()!="BODY");){if(f.nodeType==3||!f.tagName){f=f.parentNode;continue}if(a=f.tagName.toUpperCase(),!Sys.Extended.UI.HTMLEditor.canBeInsideP(f)&&a!="P"){if(a=="TD")while(a!="TABLE")f=f.parentNode,a=f.tagName.toUpperCase();else if(a=="LI")while(a!="OL"&&a!="UL")f=f.parentNode,a=f.tagName.toUpperCase();ut=f;break}f=f.parentNode}if(ut!=null){var u=t._getSelection(),i=t._createRange(u),v=t._doc.createTextNode("");if(ut.parentNode.insertBefore(v,ut),Sys.Extended.UI.HTMLEditor.isIE){var bt=t._createRange(u),oi=t._createRange(u),kt=t._doc.createElement("span"),lt=t._doc.createElement("span");v.parentNode.insertBefore(kt,v);v.nextSibling?v.parentNode.insertBefore(lt,v.nextSibling):v.parentNode.appendChild(lt);try{bt.moveToElementText(kt);oi.moveToElementText(lt);bt.setEndPoint("EndToEnd",oi);bt.select()}catch(ur){}v.parentNode.removeChild(kt);v.parentNode.removeChild(lt)}else t._removeAllRanges(u),i.setStart(v,0),i.setEnd(v,0),t._selectRange(u,i)}}else if(Sys.Extended.UI.HTMLEditor.isIE&&n.keyCode>=33&&n.keyCode<=40&&!n.shiftKey)si=n.keyCode==Sys.UI.Key.pageDown||n.keyCode==Sys.UI.Key.end||n.keyCode==Sys.UI.Key.right||n.keyCode==Sys.UI.Key.down,setTimeout(function(){var u=t._getSelection(),r=t._createRange(u),n,i;u.type.toLowerCase()=="control"&&(n=r.item(0),n.contentEditable&&n.contentEditable!="false"||(r.remove(0),u.empty(),r=t._createRange(u),i=t._doc.createElement("SPAN"),i.appendChild(t._doc.createTextNode("")),si?n.nextSibling==null?n.parentNode.appendChild(i):n.parentNode.insertBefore(i,n.nextSibling):n.parentNode.insertBefore(i,n),r.moveToElementText(i),r.select(),setTimeout(function(){t.focusEditor();i.parentNode.removeChild(i)},0)))},0);else if((b&&!Sys.Extended.UI.HTMLEditor.isSafari||Sys.Extended.UI.HTMLEditor.isSafari&&n.type=="keydown")&&n.ctrlKey&&!n.altKey){t._a_prize=!1;var u=null,i=null,o=String.fromCharCode(Sys.Extended.UI.HTMLEditor.isIE||Sys.Extended.UI.HTMLEditor.isOpera||Sys.Extended.UI.HTMLEditor.isSafari?n.keyCode:n.charCode).toLowerCase(),p=null,ft=null;if((Sys.Extended.UI.HTMLEditor.isIE||Sys.Extended.UI.HTMLEditor.isSafari)&&n.keyCode==17)return!1;if(Sys.Extended.UI.HTMLEditor.isIE||n.keyCode!=Sys.UI.Key.end||n.shiftKey){if(n.keyCode==46&&this.isShadowed())return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;if(n.keyCode==46||n.keyCode==Sys.UI.Key.backspace)(Sys.Extended.UI.HTMLEditor.isIE&&n.type=="keydown"||!Sys.Extended.UI.HTMLEditor.isIE&&n.type=="keypress")&&this._saveContent();else switch(o){case"a":if(Sys.Extended.UI.HTMLEditor.isIE)t._a_prize=!0;else return u=this._getSelection(),this._removeAllRanges(u),i=this._createRange(),i.selectNodeContents(this._doc.body),this._selectRange(u,i),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;break;case"z":return this.undo(),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;case"p":if(!Sys.Extended.UI.HTMLEditor.isIE)return setTimeout(function(){t._contextMenuCallP()},0),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;break;case"y":return this.redo(),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;case"x":if(this.isShadowed())return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;if(this._saveContent(),Sys.Extended.UI.HTMLEditor.isIE&&n.type=="keydown")return t.openWait(),setTimeout(function(){t._copyCut(o,!1);t.closeWait()},0),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;break;case"c":if(this.isShadowed())return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;if(Sys.Extended.UI.HTMLEditor.isIE&&n.type=="keydown")return t.openWait(),setTimeout(function(){t._copyCut(o,!1);t.closeWait();setTimeout(function(){t._ifShadow()},0)},0),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;break;case"v":if(this.isShadowed())return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;if(Sys.Extended.UI.HTMLEditor.isIE)return this._saveContent(),!0;this._commonPaste(n);break;case"b":return this._execCommand("bold",!1,ft),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;case"i":return this._execCommand("italic",!1,ft),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;case"u":return this._execCommand("underline",!1,ft),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;case"s":return this._execCommand("strikethrough",!1,ft),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;case"l":p="justifyleft";break;case"e":p="justifycenter";break;case"r":p="justifyright";break;case"j":p="justifyfull";break;case"q":return alert(this._doc.body.innerHTML),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;case"0":return hi="Your browser:\n\n"+navigator.userAgent,alert(hi),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;case"9":if(Sys.Extended.UI.HTMLEditor.isIE)u=t._getSelection(),i=t._createRange(u),alert("boundingLeft: "+i.boundingLeft+" boundingTop: "+i.boundingTop+"\nboundingWidth: "+i.boundingWidth+" boundingHeight: "+i.boundingHeight);else{var u=t._getSelection(),i=t._createRange(u),r=i.startContainer,w=i.endContainer,k="";k+="startContainer: "+(r.nodeType==1?r.tagName:"text")+"\n";k+="endContainer  : "+(w.nodeType==1?w.tagName:"text")+"\n";r==w&&(k+="startOffset: "+i.startOffset+"\n",k+="endOffset  : "+i.endOffset+"\n",r.nodeType==1&&(r=r.childNodes.item(i.startOffset),r&&r.nodeType?(k+="startOffset node: "+(r.nodeType==1?r.tagName:"text")+"\n",i.startOffset!=i.endOffset&&(r=w.childNodes.item(i.endOffset),r&&r.nodeType&&(k+="endOffset node: "+(r.nodeType==1?r.tagName:"text")+"\n"))):k+=r));alert(k)}return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1}}else t._setToEnd();p&&(this._execCommand(p,!1,ft),p!="formatblock"||Sys.Extended.UI.HTMLEditor.isIE||(this._saveContent(),this._undo(!1)),Sys.Extended.UI.HTMLEditor._stopEvent(n),(p=="delete"||p=="paste")&&this._clearP())}else if(b||(Sys.Extended.UI.HTMLEditor.isSafari||Sys.Extended.UI.HTMLEditor.isOpera)&&n.type=="keydown"){if(Sys.Extended.UI.HTMLEditor.isIE&&this._tryForward&&(i=this._createRange(this._getSelection()),i.select(),this._tryForward=!1),o=String.fromCharCode(Sys.Extended.UI.HTMLEditor.isIE?n.keyCode:n.charCode).toLowerCase(),t._a_prize){t._a_prize=!1;function gi(){var i=t._createRange(t._getSelection()),n=i.parentElement();if(n&&n.nodeType==1&&n.tagName.toUpperCase()=="P"){while(n.firstChild)n.parentNode.insertBefore(n.firstChild,n);n.parentNode.removeChild(n)}}setTimeout(gi,0)}if(this.isShadowed())return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;switch(n.keyCode){case Sys.UI.Key.tab:if((Sys.Extended.UI.HTMLEditor.isSafari||Sys.Extended.UI.HTMLEditor.isOpera)&&n.type!="keydown")break;if(this._editPanel.get_suppressTabInDesignMode())return Sys.Extended.UI.HTMLEditor.isSafari&&Sys.Extended.UI.HTMLEditor._stopEvent(n),Sys.Extended.UI.HTMLEditor.LastFocusedEditPanel=null,!0;this.isControl()||this.insertHTML("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");Sys.Extended.UI.HTMLEditor._stopEvent(n);break;case 46:case Sys.UI.Key.backspace:if((Sys.Extended.UI.HTMLEditor.isSafari||Sys.Extended.UI.HTMLEditor.isOpera)&&n.type!="keydown")break;if(((Sys.Extended.UI.HTMLEditor.isIE||Sys.Extended.UI.HTMLEditor.isSafari)&&n.type=="keydown"||!Sys.Extended.UI.HTMLEditor.isIE&&n.type=="keypress")&&this._saveContent(),Sys.Extended.UI.HTMLEditor.isIE){if(u=t._getSelection(),u.type.toLowerCase()=="control"){if(n.keyCode==8){setTimeout(function(){t._ifShadow();t.onContentChanged()},0);Sys.Extended.UI.HTMLEditor._stopEvent(n);return}if(h=t._createRange(u),et=h.item(0),et.tagName.toUpperCase()=="EMBED"){for(et.src="",et.parentNode.removeChild(et);h.length>0;)h.remove(0);try{h.collapse(!1)}catch(ur){}Sys.Extended.UI.HTMLEditor._stopEvent(n);t._saveContent();setTimeout(function(){t._undo(!1);t.onContentChanged()},0);return}}dt=t._doc.body.getElementsByTagName("EMBED").length;dt>0&&(gt=t._body.ownerDocument.createElement("div"),t._body.appendChild(gt),nr=n.keyCode,setTimeout(function(){t._body.removeChild(gt);var n=t._doc.body.getElementsByTagName("EMBED");dt!=n.length&&(t._saveContent(),setTimeout(function(){t._undo(!1);t.onContentChanged()},0))},0));setTimeout(function(){t._clearP()},0)}else{var i=this._createRange(this._getSelection()),r=i.startContainer,w=i.endContainer;if(n.type=="keypress"&&(Sys.Extended.UI.HTMLEditor.contentEditable(r)!=null||Sys.Extended.UI.HTMLEditor.contentEditable(w)!=null))return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;if(r==w&&r.nodeType==1&&r.tagName.toUpperCase()=="TD"&&i.startOffset==i.startOffset&&r.childNodes.item(i.startOffset)&&r.childNodes.item(i.startOffset).tagName&&r.childNodes.item(i.startOffset).tagName.toUpperCase()=="BR"){for(var ci=r.childNodes.item(i.startOffset),li=0,ai=0,d=ci.previousSibling;d;)li++,d=d.previousSibling;for(d=ci.nextSibling;d;)ai++,d=d.nextSibling;if(n.keyCode==46&&ai==0||n.keyCode==Sys.UI.Key.backspace&&li==0||n.keyCode==46&&r.firstChild==r.lastChild&&r.firstChild.nodeType==1)return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1}if(r==w&&r.nodeType==3&&i.startOffset==i.endOffset&&!Sys.Extended.UI.HTMLEditor.isOpera){if(vi=r.data+"",n.keyCode==46&&i.startOffset==vi.length&&!(r.nextSibling&&r.nextSibling.nodeType==3))return r.nextSibling&&(r.parentNode.removeChild(r.nextSibling),t.onContentChanged()),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;if(n.keyCode==Sys.UI.Key.backspace&&i.startOffset==0&&!(r.previousSibling&&r.previousSibling.nodeType==3))return r.previousSibling&&(r.parentNode.removeChild(r.previousSibling),t.onContentChanged()),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1}if(n.keyCode==Sys.UI.Key.backspace&&r.nodeType==1&&r==w&&i.startOffset==i.endOffset&&(y=r.childNodes.item(i.startOffset),y!=null&&y.nodeType==1&&y.tagName.toUpperCase()=="BR"&&(y=y.previousSibling,y!=null&&y.nodeType!=3)))return y.parentNode.removeChild(y),t.onContentChanged(),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1;setTimeout(function(){var o=t._getSelection(),i=t._createRange(o),f=i.startContainer,s=i.endContainer,n;if(Sys.Extended.UI.HTMLEditor.contentEditable(f)!=null||Sys.Extended.UI.HTMLEditor.contentEditable(s)!=null){t._undo(!1);return}if(Sys.Extended.UI.HTMLEditor.isOpera&&f==s&&f.nodeType==3&&f.data.length==0)f.parentNode.removeChild(f);else if(f==s&&f.nodeType==1&&Sys.Extended.UI.HTMLEditor.isStyleTag(f.tagName)&&i.startOffset==i.endOffset&&f.childNodes.length==0){while(f.parentNode.nodeType==1&&Sys.Extended.UI.HTMLEditor.isStyleTag(f.parentNode.tagName)&&f.parentNode.childNodes.length==1)f=f.parentNode;var r=f.nextSibling,u=f.previousSibling,e=f.parentNode;e.removeChild(f);t.onContentChanged();r==null&&u==null?(i.setStart(e,0),i.setEnd(e,0)):r!=null&&u!=null?r.nodeType==3&&u.nodeType==3?(n=(""+u.data+"").length,u.appendData(r.data),e.removeChild(r),i.setStart(u,n),i.setEnd(u,n)):u.nodeType==3?(n=(""+u.data+"").length,i.setStart(u,n),i.setEnd(u,n)):r.nodeType==3?(i.setStart(r,0),i.setEnd(r,0)):r.childNodes.length>0?(i.setStart(r,0),i.setEnd(r,0)):(n=Sys.Extended.UI.HTMLEditor.__getIndex(r),i.setStart(e,n),i.setEnd(e,n)):u!=null?u.nodeType==3?(n=(""+u.data+"").length,i.setStart(u,n),i.setEnd(u,n)):(n=u.childNodes.length,n>0?(i.setStart(u,n),i.setEnd(u,n)):(n=Sys.Extended.UI.HTMLEditor.__getIndex(u),i.setStart(e,n),i.setEnd(e,n))):r!=null&&(r.nodeType==3?(i.setStart(r,0),i.setEnd(r,0)):(n=r.childNodes.length,n>0?(i.setStart(r,n),i.setEnd(r,n)):(n=Sys.Extended.UI.HTMLEditor.__getIndex(r),i.setStart(e,n),i.setEnd(e,n))));t._removeAllRanges(o);t._selectRange(o,i)}},0)}break;case Sys.UI.Key.enter:if((Sys.Extended.UI.HTMLEditor.isSafari||Sys.Extended.UI.HTMLEditor.isOpera)&&n.type=="keydown")break;if((!Sys.Extended.UI.HTMLEditor.isIE&&n.type=="keypress"||Sys.Extended.UI.HTMLEditor.isIE&&n.type=="keydown")&&this._saveContent(),Sys.Extended.UI.HTMLEditor.isIE&&n.type=="keydown"){if(u=t._getSelection(),u.type.toLowerCase()=="control")break;if(h=t._createRange(u),n.shiftKey)break;else{if(e=h.parentElement(),e.tagName.toUpperCase()=="TEXTAREA")break;while(e&&e.tagName&&e.tagName.toUpperCase()!="BODY"&&Sys.Extended.UI.HTMLEditor.isStyleTag(e.tagName))e=e.parentNode;if(e&&e.tagName&&(a=e.tagName.toUpperCase(),a=="P"||a=="LI")){if(a=="LI"){function tr(){var n;for(h=t._createRange(t._getSelection()),n=h.parentElement();n&&n.tagName&&n.tagName.toUpperCase()!="BODY"&&Sys.Extended.UI.HTMLEditor.isStyleTag(n.tagName);)n=n.parentNode;if(n&&n.nodeType==1&&n.tagName.toUpperCase()=="P"){for(var r=t._doc.createElement("span"),u=t._doc.createTextNode(" "),i=n;i.firstChild!=null&&i.firstChild.nodeType==1;)i=i.firstChild;if(i.nodeType==1)for(i.appendChild(u),i.appendChild(r);n.firstChild;)n.parentNode.insertBefore(n.firstChild,n);else n.parentNode.insertBefore(u,n),n.parentNode.insertBefore(r,n);n.parentNode.removeChild(n);h.moveToElementText(r);h.select();r.parentNode.removeChild(r);t.onContentChanged()}}setTimeout(tr,0)}break}try{var ni=Sys.Extended.UI.HTMLEditor.smartClassName+"_middle_add",c=null,tt="<span id="+ni+"><\/span>";function ir(){var i=t._getSelection(),n=t._createRange(i);c!=null&&(c.innerHTML="&nbsp;",n.moveToElementText(c),n.select(),c.parentNode.insertBefore(c.firstChild,c),c.parentNode.removeChild(c),t.onContentChanged())}if(h.pasteHTML(tt),ot=!1,c=t._doc.getElementById(ni),c!=null){for(g=c.nextSibling,it=c.parentNode;g==null&&it!=null&&Sys.Extended.UI.HTMLEditor.isStyleTag(it.tagName);)g=it.nextSibling,it=it.parentNode;g==null||Sys.Extended.UI.HTMLEditor.isInlineElement(g)||g.tagName==null||typeof g.tagName=="undefined"||(st=g.tagName.toUpperCase(),st!="BR"&&st!="UL"&&st!="OL"&&st!="P"&&(ot=!0));c.parentNode.removeChild(c)}if(h.pasteHTML("<br/>"+(ot?tt:"")),ot&&(c=t._doc.getElementById(ni)),h.select(),ot)return setTimeout(ir,0),Sys.Extended.UI.HTMLEditor._stopEvent(n),!1}catch(fr){}}Sys.Extended.UI.HTMLEditor._stopEvent(n)}else if(!n.shiftKey&&(Sys.Extended.UI.HTMLEditor.isSafari||Sys.Extended.UI.HTMLEditor.isOpera)){for(e=Sys.Extended.UI.HTMLEditor.getSelParent(this),e.nodeType==3&&(e=e.parentNode);e&&e.tagName&&e.tagName.toUpperCase()!="BODY"&&Sys.Extended.UI.HTMLEditor.isStyleTag(e.tagName);)e=e.parentNode;if(e&&e.tagName&&(e.tagName.toUpperCase()=="P"||e.tagName.toUpperCase()=="LI"))break;tt="<br />";Sys.Extended.UI.HTMLEditor.isOpera&&(u=t._getSelection(),i=t._createRange(u),i.startContainer==i.endContainer&&(i.startContainer.nodeType==1?(ti=i.startContainer.childNodes.item(i.startOffset),ti.nodeType==1&&ti.tagName.toUpperCase()=="BR"&&(tt+="<br />")):i.startContainer.nodeType!=3||i.startOffset!=i.endOffset||i.startContainer.data.length!=i.endOffset||i.startContainer.nextSibling&&i.startContainer.nextSibling.nodeType==3||(tt+="&nbsp;")));this.insertHTML(tt);Sys.Extended.UI.HTMLEditor._stopEvent(n);Sys.Extended.UI.HTMLEditor.isOpera&&(u=t._getSelection(),i=t._createRange(u),i.startContainer==i.endContainer&&i.startContainer.nodeType==3&&i.startOffset==i.endOffset&&i.startContainer.data.length==0&&(ii=i.startContainer.previousSibling,i.startContainer.parentNode.removeChild(i.startContainer),t._removeAllRanges(u),i=t._createRange(),i.setStart(ii,0),i.setEnd(ii,1),t._selectRange(u,i)));t.onContentChanged()}else Sys.Extended.UI.HTMLEditor.isSafari&&(this.insertHTML("<br/>"),Sys.Extended.UI.HTMLEditor._stopEvent(n),t.onContentChanged())}}else t._a_prize=!1;if(Sys.Extended.UI.HTMLEditor.isIE&&n.type=="keypress"&&!n.ctrlKey){var o=n.keyCode,at=t._getSelection(),rt=t._createRange(at);if(rt.text.length>0){var ht=String.fromCharCode(o),yi=Sys.Extended.UI.HTMLEditor.capLock(n),rr=n.shiftKey&&!yi||yi;return rr||(ht=ht.toLowerCase()),l=Sys.Extended.UI.HTMLEditor.smartClassName+"StyleForTyping",s=t._doc.getElementById(l),s!=null&&(ht="<span id='"+l+"'><\/span>"+ht+"<span id='"+l+l+"'><\/span>",s.parentNode.removeChild(s)),rt.pasteHTML(ht),s!=null&&(t.trickWithStyles(l),s=t._doc.getElementById(l+l),s.parentNode.removeChild(s)),Sys.Extended.UI.HTMLEditor._stopEvent(n),t.onContentChanged(),!1}}if(n.type=="mouseup"||n.type=="mousedown"||n.type=="keydown"){if(pi=!0,n.type=="keydown"&&!n.ctrlKey&&(o=n.keyCode,(o>=48&&o<=90||o==32||o==13||o>=186&&o<=222||o>=96&&o<=111)&&t._StyleForTyping!=null)){for(t.n_arr=[],vt=0;vt<t._StyleForTyping.length;vt++)t.n_arr.push(t._StyleForTyping[vt]);l=Sys.Extended.UI.HTMLEditor.smartClassName+"StyleForTyping";ri=!0;Sys.Extended.UI.HTMLEditor.isIE?(t.insertHTML("<span id='"+l+"'>&nbsp;<\/span>"),s=t._doc.getElementById(l),s&&s.nextSibling&&s.nextSibling.nodeType==3?(ri=!1,at=t._getSelection(),rt=t._createRange(at),rt.moveToElementText(t._doc.getElementById(l)),rt.select()):s&&s.removeChild(s.firstChild)):t.insertHTML("<span id='"+l+"'><\/span>");ri&&setTimeout(function(){t.trickWithStyles(l);t.onContentChanged()},0)}if((pi||!Sys.Extended.UI.HTMLEditor.isIE)&&!t._updated_now){t._updateTimer&&(clearTimeout(t._updateTimer),t._updateTimer=null);t._updateTimerLimit=3;function wi(){if(t._editPanel==Sys.Extended.UI.HTMLEditor.LastFocusedEditPanel)try{if(Sys.Extended.UI.HTMLEditor.isIE){try{var n=t._doc.selection}catch(i){return!1}if(t._getSelection().type=="None"&&t._doc.queryCommandValue("backcolor")==0&&t._doc.queryCommandValue("forecolor")==0&&(t._updateTimerLimit--,t._updateTimerLimit>0)){t._updateTimer=setTimeout(wi,100);return}}t._updated_now=!0;t._editPanel.updateToolbar();t._updated_now=!1;t._updateTimer=null;Sys.Extended.UI.HTMLEditor.isIE||t.focusEditor()}catch(i){}}t._updateTimer=setTimeout(wi,300)}}return!Sys.Extended.UI.HTMLEditor.isIE&&(n.type=="keydown"||n.type=="keyup")||Sys.Extended.UI.HTMLEditor.isIE&&(n.type=="keydown"||n.type=="keyup")&&(n.keyCode==16||n.keyCode==20)||(t._StyleForTyping=null),Sys.Extended.UI.HTMLEditor.isSafari&&setTimeout(function(){t._createRange(t._getSelection())},0),Sys.Extended.UI.HTMLEditor.isIE||setTimeout(function(){var i,n,r;t._editPanel==Sys.Extended.UI.HTMLEditor.LastFocusedEditPanel&&(i=t._getSelection(),n=t._createRange(i),n.startContainer.nodeType!=3&&n.startContainer==n.endContainer&&n.startOffset==n.endOffset&&n.startContainer.childNodes.item(n.startOffset)&&n.startContainer.childNodes.item(n.startOffset).nodeType==3&&(r=n.startContainer.childNodes.item(n.startOffset),i.collapseToEnd(),t._removeAllRanges(i),i=t._getSelection(),n=t._createRange(i),n.setStart(r,0),n.setEnd(r,0),t._selectRange(i,n)))},0),Sys.Extended.UI.HTMLEditor.isIE||(u=t._getSelection(),i=t._createRange(u),t._saved_startContainer=i.startContainer,t._saved_startOffset=i.startOffset),setTimeout(function(){try{t._editPanel==Sys.Extended.UI.HTMLEditor.LastFocusedEditPanel&&t._ifShadow()}catch(n){}},0),n.type=="keydown"&&(t._AfterOnContentChanged!=null&&typeof t._AfterOnContentChanged!="undefined"&&t._AfterOnContentChanged||(t._AfterOnContentChanged=!0,setTimeout(function(){t._editPanel==Sys.Extended.UI.HTMLEditor.LastFocusedEditPanel&&(t.onContentChanged(),t._AfterOnContentChanged=!1)},0))),!0}catch(fr){return Sys.Extended.UI.HTMLEditor._stopEvent(n),!1}};