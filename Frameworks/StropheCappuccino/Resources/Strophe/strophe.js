var Base64=(function(){
var _1="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=";
var _2={encode:function(_3){
var _4="";
var _5,_6,_7;
var _8,_9,_a,_b;
var i=0;
do{
_5=_3.charCodeAt(i++);
_6=_3.charCodeAt(i++);
_7=_3.charCodeAt(i++);
_8=_5>>2;
_9=((_5&3)<<4)|(_6>>4);
_a=((_6&15)<<2)|(_7>>6);
_b=_7&63;
if(isNaN(_6)){
_a=_b=64;
}else{
if(isNaN(_7)){
_b=64;
}
}
_4=_4+_1.charAt(_8)+_1.charAt(_9)+_1.charAt(_a)+_1.charAt(_b);
}while(i<_3.length);
return _4;
},decode:function(_c){
var _d="";
var _e,_f,_10;
var _11,_12,_13,_14;
var i=0;
_c=_c.replace(/[^A-Za-z0-9\+\/\=]/g,"");
do{
_11=_1.indexOf(_c.charAt(i++));
_12=_1.indexOf(_c.charAt(i++));
_13=_1.indexOf(_c.charAt(i++));
_14=_1.indexOf(_c.charAt(i++));
_e=(_11<<2)|(_12>>4);
_f=((_12&15)<<4)|(_13>>2);
_10=((_13&3)<<6)|_14;
_d=_d+String.fromCharCode(_e);
if(_13!=64){
_d=_d+String.fromCharCode(_f);
}
if(_14!=64){
_d=_d+String.fromCharCode(_10);
}
}while(i<_c.length);
return _d;
}};
return _2;
})();
var MD5=(function(){
var _15=0;
var _16="";
var _17=8;
var _18=function(x,y){
var lsw=(x&65535)+(y&65535);
var msw=(x>>16)+(y>>16)+(lsw>>16);
return (msw<<16)|(lsw&65535);
};
var _19=function(num,cnt){
return (num<<cnt)|(num>>>(32-cnt));
};
var _1a=function(str){
var bin=[];
var _1b=(1<<_17)-1;
for(var i=0;i<str.length*_17;i+=_17){
bin[i>>5]|=(str.charCodeAt(i/_17)&_1b)<<(i%32);
}
return bin;
};
var _1c=function(bin){
var str="";
var _1d=(1<<_17)-1;
for(var i=0;i<bin.length*32;i+=_17){
str+=String.fromCharCode((bin[i>>5]>>>(i%32))&_1d);
}
return str;
};
var _1e=function(_1f){
var _20=_15?"0123456789ABCDEF":"0123456789abcdef";
var str="";
for(var i=0;i<_1f.length*4;i++){
str+=_20.charAt((_1f[i>>2]>>((i%4)*8+4))&15)+_20.charAt((_1f[i>>2]>>((i%4)*8))&15);
}
return str;
};
var _21=function(_22){
var tab="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
var str="";
var _23,j;
for(var i=0;i<_22.length*4;i+=3){
_23=(((_22[i>>2]>>8*(i%4))&255)<<16)|(((_22[i+1>>2]>>8*((i+1)%4))&255)<<8)|((_22[i+2>>2]>>8*((i+2)%4))&255);
for(j=0;j<4;j++){
if(i*8+j*6>_22.length*32){
str+=_16;
}else{
str+=tab.charAt((_23>>6*(3-j))&63);
}
}
}
return str;
};
var _24=function(q,a,b,x,s,t){
return _18(_19(_18(_18(a,q),_18(x,t)),s),b);
};
var _25=function(a,b,c,d,x,s,t){
return _24((b&c)|((~b)&d),a,b,x,s,t);
};
var _26=function(a,b,c,d,x,s,t){
return _24((b&d)|(c&(~d)),a,b,x,s,t);
};
var _27=function(a,b,c,d,x,s,t){
return _24(b^c^d,a,b,x,s,t);
};
var _28=function(a,b,c,d,x,s,t){
return _24(c^(b|(~d)),a,b,x,s,t);
};
var _29=function(x,len){
x[len>>5]|=128<<((len)%32);
x[(((len+64)>>>9)<<4)+14]=len;
var a=1732584193;
var b=-271733879;
var c=-1732584194;
var d=271733878;
var _2a,_2b,_2c,_2d;
for(var i=0;i<x.length;i+=16){
_2a=a;
_2b=b;
_2c=c;
_2d=d;
a=_25(a,b,c,d,x[i+0],7,-680876936);
d=_25(d,a,b,c,x[i+1],12,-389564586);
c=_25(c,d,a,b,x[i+2],17,606105819);
b=_25(b,c,d,a,x[i+3],22,-1044525330);
a=_25(a,b,c,d,x[i+4],7,-176418897);
d=_25(d,a,b,c,x[i+5],12,1200080426);
c=_25(c,d,a,b,x[i+6],17,-1473231341);
b=_25(b,c,d,a,x[i+7],22,-45705983);
a=_25(a,b,c,d,x[i+8],7,1770035416);
d=_25(d,a,b,c,x[i+9],12,-1958414417);
c=_25(c,d,a,b,x[i+10],17,-42063);
b=_25(b,c,d,a,x[i+11],22,-1990404162);
a=_25(a,b,c,d,x[i+12],7,1804603682);
d=_25(d,a,b,c,x[i+13],12,-40341101);
c=_25(c,d,a,b,x[i+14],17,-1502002290);
b=_25(b,c,d,a,x[i+15],22,1236535329);
a=_26(a,b,c,d,x[i+1],5,-165796510);
d=_26(d,a,b,c,x[i+6],9,-1069501632);
c=_26(c,d,a,b,x[i+11],14,643717713);
b=_26(b,c,d,a,x[i+0],20,-373897302);
a=_26(a,b,c,d,x[i+5],5,-701558691);
d=_26(d,a,b,c,x[i+10],9,38016083);
c=_26(c,d,a,b,x[i+15],14,-660478335);
b=_26(b,c,d,a,x[i+4],20,-405537848);
a=_26(a,b,c,d,x[i+9],5,568446438);
d=_26(d,a,b,c,x[i+14],9,-1019803690);
c=_26(c,d,a,b,x[i+3],14,-187363961);
b=_26(b,c,d,a,x[i+8],20,1163531501);
a=_26(a,b,c,d,x[i+13],5,-1444681467);
d=_26(d,a,b,c,x[i+2],9,-51403784);
c=_26(c,d,a,b,x[i+7],14,1735328473);
b=_26(b,c,d,a,x[i+12],20,-1926607734);
a=_27(a,b,c,d,x[i+5],4,-378558);
d=_27(d,a,b,c,x[i+8],11,-2022574463);
c=_27(c,d,a,b,x[i+11],16,1839030562);
b=_27(b,c,d,a,x[i+14],23,-35309556);
a=_27(a,b,c,d,x[i+1],4,-1530992060);
d=_27(d,a,b,c,x[i+4],11,1272893353);
c=_27(c,d,a,b,x[i+7],16,-155497632);
b=_27(b,c,d,a,x[i+10],23,-1094730640);
a=_27(a,b,c,d,x[i+13],4,681279174);
d=_27(d,a,b,c,x[i+0],11,-358537222);
c=_27(c,d,a,b,x[i+3],16,-722521979);
b=_27(b,c,d,a,x[i+6],23,76029189);
a=_27(a,b,c,d,x[i+9],4,-640364487);
d=_27(d,a,b,c,x[i+12],11,-421815835);
c=_27(c,d,a,b,x[i+15],16,530742520);
b=_27(b,c,d,a,x[i+2],23,-995338651);
a=_28(a,b,c,d,x[i+0],6,-198630844);
d=_28(d,a,b,c,x[i+7],10,1126891415);
c=_28(c,d,a,b,x[i+14],15,-1416354905);
b=_28(b,c,d,a,x[i+5],21,-57434055);
a=_28(a,b,c,d,x[i+12],6,1700485571);
d=_28(d,a,b,c,x[i+3],10,-1894986606);
c=_28(c,d,a,b,x[i+10],15,-1051523);
b=_28(b,c,d,a,x[i+1],21,-2054922799);
a=_28(a,b,c,d,x[i+8],6,1873313359);
d=_28(d,a,b,c,x[i+15],10,-30611744);
c=_28(c,d,a,b,x[i+6],15,-1560198380);
b=_28(b,c,d,a,x[i+13],21,1309151649);
a=_28(a,b,c,d,x[i+4],6,-145523070);
d=_28(d,a,b,c,x[i+11],10,-1120210379);
c=_28(c,d,a,b,x[i+2],15,718787259);
b=_28(b,c,d,a,x[i+9],21,-343485551);
a=_18(a,_2a);
b=_18(b,_2b);
c=_18(c,_2c);
d=_18(d,_2d);
}
return [a,b,c,d];
};
var _2e=function(key,_2f){
var _30=_1a(key);
if(_30.length>16){
_30=_29(_30,key.length*_17);
}
var _31=new Array(16),_32=new Array(16);
for(var i=0;i<16;i++){
_31[i]=_30[i]^909522486;
_32[i]=_30[i]^1549556828;
}
var _33=_29(_31.concat(_1a(_2f)),512+_2f.length*_17);
return _29(_32.concat(_33),512+128);
};
var obj={hexdigest:function(s){
return _1e(_29(_1a(s),s.length*_17));
},b64digest:function(s){
return _21(_29(_1a(s),s.length*_17));
},hash:function(s){
return _1c(_29(_1a(s),s.length*_17));
},hmac_hexdigest:function(key,_34){
return _1e(_2e(key,_34));
},hmac_b64digest:function(key,_35){
return _21(_2e(key,_35));
},hmac_hash:function(key,_36){
return _1c(_2e(key,_36));
},test:function(){
return MD5.hexdigest("abc")==="900150983cd24fb0d6963f7d28e17f72";
}};
return obj;
})();
if(!Function.prototype.bind){
Function.prototype.bind=function(obj){
var _37=this;
var _38=Array.prototype.slice;
var _39=Array.prototype.concat;
var _3a=_38.call(arguments,1);
return function(){
return _37.apply(obj?obj:this,_39.call(_3a,_38.call(arguments,0)));
};
};
}
if(!Array.prototype.indexOf){
Array.prototype.indexOf=function(elt){
var len=this.length;
var _3b=Number(arguments[1])||0;
_3b=(_3b<0)?Math.ceil(_3b):Math.floor(_3b);
if(_3b<0){
_3b+=len;
}
for(;_3b<len;_3b++){
if(_3b in this&&this[_3b]===elt){
return _3b;
}
}
return -1;
};
}
(function(_3c){
var _3d;
function _3e(_3f,_40){
return new _3d.Builder(_3f,_40);
};
function _41(_42){
return new _3d.Builder("message",_42);
};
function $iq(_43){
return new _3d.Builder("iq",_43);
};
function _44(_45){
return new _3d.Builder("presence",_45);
};
_3d={VERSION:"cacc8ac",NS:{HTTPBIND:"http://jabber.org/protocol/httpbind",BOSH:"urn:xmpp:xbosh",CLIENT:"jabber:client",AUTH:"jabber:iq:auth",ROSTER:"jabber:iq:roster",PROFILE:"jabber:iq:profile",DISCO_INFO:"http://jabber.org/protocol/disco#info",DISCO_ITEMS:"http://jabber.org/protocol/disco#items",MUC:"http://jabber.org/protocol/muc",SASL:"urn:ietf:params:xml:ns:xmpp-sasl",STREAM:"http://etherx.jabber.org/streams",BIND:"urn:ietf:params:xml:ns:xmpp-bind",SESSION:"urn:ietf:params:xml:ns:xmpp-session",VERSION:"jabber:iq:version",STANZAS:"urn:ietf:params:xml:ns:xmpp-stanzas"},addNamespace:function(_46,_47){
_3d.NS[_46]=_47;
},Status:{ERROR:0,CONNECTING:1,CONNFAIL:2,AUTHENTICATING:3,AUTHFAIL:4,CONNECTED:5,DISCONNECTED:6,DISCONNECTING:7,ATTACHED:8},LogLevel:{DEBUG:0,INFO:1,WARN:2,ERROR:3,FATAL:4},ElementType:{NORMAL:1,TEXT:3},TIMEOUT:1.1,SECONDARY_TIMEOUT:0.1,forEachChild:function(_48,_49,_4a){
var i,_4b;
for(i=0;i<_48.childNodes.length;i++){
_4b=_48.childNodes[i];
if(_4b.nodeType==_3d.ElementType.NORMAL&&(!_49||this.isTagEqual(_4b,_49))){
_4a(_4b);
}
}
},isTagEqual:function(el,_4c){
return el.tagName.toLowerCase()==_4c.toLowerCase();
},_xmlGenerator:null,_makeGenerator:function(){
var doc;
if(window.ActiveXObject){
doc=this._getIEXmlDom();
doc.appendChild(doc.createElement("strophe"));
}else{
doc=document.implementation.createDocument("jabber:client","strophe",null);
}
return doc;
},xmlGenerator:function(){
if(!_3d._xmlGenerator){
_3d._xmlGenerator=_3d._makeGenerator();
}
return _3d._xmlGenerator;
},_getIEXmlDom:function(){
var doc=null;
var _4d=["Msxml2.DOMDocument.6.0","Msxml2.DOMDocument.5.0","Msxml2.DOMDocument.4.0","MSXML2.DOMDocument.3.0","MSXML2.DOMDocument","MSXML.DOMDocument","Microsoft.XMLDOM"];
for(var d=0;d<_4d.length;d++){
if(doc===null){
try{
doc=new ActiveXObject(_4d[d]);
}
catch(e){
doc=null;
}
}else{
break;
}
}
return doc;
},xmlElement:function(_4e){
if(!_4e){
return null;
}
var _4f=_3d.xmlGenerator().createElement(_4e);
var a,i,k;
for(a=1;a<arguments.length;a++){
if(!arguments[a]){
continue;
}
if(typeof (arguments[a])=="string"||typeof (arguments[a])=="number"){
_4f.appendChild(_3d.xmlTextNode(arguments[a]));
}else{
if(typeof (arguments[a])=="object"&&typeof (arguments[a].sort)=="function"){
for(i=0;i<arguments[a].length;i++){
if(typeof (arguments[a][i])=="object"&&typeof (arguments[a][i].sort)=="function"){
_4f.setAttribute(arguments[a][i][0],arguments[a][i][1]);
}
}
}else{
if(typeof (arguments[a])=="object"){
for(k in arguments[a]){
if(arguments[a].hasOwnProperty(k)){
_4f.setAttribute(k,arguments[a][k]);
}
}
}
}
}
}
return _4f;
},xmlescape:function(_50){
_50=_50.replace(/\&/g,"&amp;");
_50=_50.replace(/</g,"&lt;");
_50=_50.replace(/>/g,"&gt;");
return _50;
},xmlTextNode:function(_51){
_51=_3d.xmlescape(_51);
return _3d.xmlGenerator().createTextNode(_51);
},getText:function(_52){
if(!_52){
return null;
}
var str="";
if(_52.childNodes.length===0&&_52.nodeType==_3d.ElementType.TEXT){
str+=_52.nodeValue;
}
for(var i=0;i<_52.childNodes.length;i++){
if(_52.childNodes[i].nodeType==_3d.ElementType.TEXT){
str+=_52.childNodes[i].nodeValue;
}
}
return str;
},copyElement:function(_53){
var i,el;
if(_53.nodeType==_3d.ElementType.NORMAL){
el=_3d.xmlElement(_53.tagName);
for(i=0;i<_53.attributes.length;i++){
el.setAttribute(_53.attributes[i].nodeName.toLowerCase(),_53.attributes[i].value);
}
for(i=0;i<_53.childNodes.length;i++){
el.appendChild(_3d.copyElement(_53.childNodes[i]));
}
}else{
if(_53.nodeType==_3d.ElementType.TEXT){
el=_3d.xmlTextNode(_53.nodeValue);
}
}
return el;
},escapeNode:function(_54){
return _54.replace(/^\s+|\s+$/g,"").replace(/\\/g,"\\5c").replace(/ /g,"\\20").replace(/\"/g,"\\22").replace(/\&/g,"\\26").replace(/\'/g,"\\27").replace(/\//g,"\\2f").replace(/:/g,"\\3a").replace(/</g,"\\3c").replace(/>/g,"\\3e").replace(/@/g,"\\40");
},unescapeNode:function(_55){
return _55.replace(/\\20/g," ").replace(/\\22/g,"\"").replace(/\\26/g,"&").replace(/\\27/g,"'").replace(/\\2f/g,"/").replace(/\\3a/g,":").replace(/\\3c/g,"<").replace(/\\3e/g,">").replace(/\\40/g,"@").replace(/\\5c/g,"\\");
},getNodeFromJid:function(jid){
if(jid.indexOf("@")<0){
return null;
}
return jid.split("@")[0];
},getDomainFromJid:function(jid){
var _56=_3d.getBareJidFromJid(jid);
if(_56.indexOf("@")<0){
return _56;
}else{
var _57=_56.split("@");
_57.splice(0,1);
return _57.join("@");
}
},getResourceFromJid:function(jid){
var s=jid.split("/");
if(s.length<2){
return null;
}
s.splice(0,1);
return s.join("/");
},getBareJidFromJid:function(jid){
return jid?jid.split("/")[0]:null;
},log:function(_58,msg){
return;
},debug:function(msg){
this.log(this.LogLevel.DEBUG,msg);
},info:function(msg){
this.log(this.LogLevel.INFO,msg);
},warn:function(msg){
this.log(this.LogLevel.WARN,msg);
},error:function(msg){
this.log(this.LogLevel.ERROR,msg);
},fatal:function(msg){
this.log(this.LogLevel.FATAL,msg);
},serialize:function(_59){
var _5a;
if(!_59){
return null;
}
if(typeof (_59.tree)==="function"){
_59=_59.tree();
}
var _5b=_59.nodeName;
var i,_5c;
if(_59.getAttribute("_realname")){
_5b=_59.getAttribute("_realname");
}
_5a="<"+_5b;
for(i=0;i<_59.attributes.length;i++){
if(_59.attributes[i].nodeName!="_realname"){
_5a+=" "+_59.attributes[i].nodeName.toLowerCase()+"='"+_59.attributes[i].value.replace(/&/g,"&amp;").replace(/\'/g,"&apos;").replace(/</g,"&lt;")+"'";
}
}
if(_59.childNodes.length>0){
_5a+=">";
for(i=0;i<_59.childNodes.length;i++){
_5c=_59.childNodes[i];
if(_5c.nodeType==_3d.ElementType.NORMAL){
_5a+=_3d.serialize(_5c);
}else{
if(_5c.nodeType==_3d.ElementType.TEXT){
_5a+=_5c.nodeValue;
}
}
}
_5a+="</"+_5b+">";
}else{
_5a+="/>";
}
return _5a;
},_requestId:0,_connectionPlugins:{},addConnectionPlugin:function(_5d,_5e){
_3d._connectionPlugins[_5d]=_5e;
}};
_3d.Builder=function(_5f,_60){
if(_5f=="presence"||_5f=="message"||_5f=="iq"){
if(_60&&!_60.xmlns){
_60.xmlns=_3d.NS.CLIENT;
}else{
if(!_60){
_60={xmlns:_3d.NS.CLIENT};
}
}
}
this.nodeTree=_3d.xmlElement(_5f,_60);
this.node=this.nodeTree;
};
_3d.Builder.prototype={tree:function(){
return this.nodeTree;
},toString:function(){
return _3d.serialize(this.nodeTree);
},up:function(){
this.node=this.node.parentNode;
return this;
},attrs:function(_61){
for(var k in _61){
if(_61.hasOwnProperty(k)){
this.node.setAttribute(k,_61[k]);
}
}
return this;
},c:function(_62,_63){
var _64=_3d.xmlElement(_62,_63);
this.node.appendChild(_64);
this.node=_64;
return this;
},cnode:function(_65){
var _66=_3d.xmlGenerator();
var _67=_66.importNode?_66.importNode(_65,true):_3d.copyElement(_65);
this.node.appendChild(_67);
this.node=_67;
return this;
},t:function(_68){
var _69=_3d.xmlTextNode(_68);
this.node.appendChild(_69);
return this;
}};
_3d.Handler=function(_6a,ns,_6b,_6c,id,_6d,_6e){
this.handler=_6a;
this.ns=ns;
this.name=_6b;
this.type=_6c;
this.id=id;
this.options=_6e||{matchbare:false};
if(!this.options.matchBare){
this.options.matchBare=false;
}
if(this.options.matchBare){
this.from=_6d?_3d.getBareJidFromJid(_6d):null;
}else{
this.from=_6d;
}
this.user=true;
};
_3d.Handler.prototype={isMatch:function(_6f){
var _70;
var _71=null;
if(this.options.matchBare){
_71=_3d.getBareJidFromJid(_6f.getAttribute("from"));
}else{
_71=_6f.getAttribute("from");
}
_70=false;
if(!this.ns){
_70=true;
}else{
var _72=this;
_3d.forEachChild(_6f,null,function(_73){
if(_73.getAttribute("xmlns")==_72.ns){
_70=true;
}
});
_70=_70||_6f.getAttribute("xmlns")==this.ns;
}
if(_70&&(!this.name||_3d.isTagEqual(_6f,this.name))&&(!this.type||_6f.getAttribute("type")==this.type)&&(!this.id||_6f.getAttribute("id")==this.id)&&(!this.from||_71==this.from)){
return true;
}
return false;
},run:function(_74){
var _75=null;
try{
_75=this.handler(_74);
}
catch(e){
if(e.sourceURL){
_3d.fatal("error: "+this.handler+" "+e.sourceURL+":"+e.line+" - "+e.name+": "+e.message);
}else{
if(e.fileName){
if(typeof (console)!="undefined"){
console.trace();
console.error(this.handler," - error - ",e,e.message);
}
_3d.fatal("error: "+this.handler+" "+e.fileName+":"+e.lineNumber+" - "+e.name+": "+e.message);
}else{
_3d.fatal("error: "+this.handler);
}
}
throw e;
}
return _75;
},toString:function(){
return "{Handler: "+this.handler+"("+this.name+","+this.id+","+this.ns+")}";
}};
_3d.TimedHandler=function(_76,_77){
this.period=_76;
this.handler=_77;
this.lastCalled=new Date().getTime();
this.user=true;
};
_3d.TimedHandler.prototype={run:function(){
this.lastCalled=new Date().getTime();
return this.handler();
},reset:function(){
this.lastCalled=new Date().getTime();
},toString:function(){
return "{TimedHandler: "+this.handler+"("+this.period+")}";
}};
_3d.Request=function(_78,_79,rid,_7a){
this.id=++_3d._requestId;
this.xmlData=_78;
this.data=_3d.serialize(_78);
this.origFunc=_79;
this.func=_79;
this.rid=rid;
this.date=NaN;
this.sends=_7a||0;
this.abort=false;
this.dead=null;
this.age=function(){
if(!this.date){
return 0;
}
var now=new Date();
return (now-this.date)/1000;
};
this.timeDead=function(){
if(!this.dead){
return 0;
}
var now=new Date();
return (now-this.dead)/1000;
};
this.xhr=this._newXHR();
};
_3d.Request.prototype={getResponse:function(){
var _7b=null;
if(this.xhr.responseXML&&this.xhr.responseXML.documentElement){
_7b=this.xhr.responseXML.documentElement;
if(_7b.tagName=="parsererror"){
_3d.error("invalid response received");
_3d.error("responseText: "+this.xhr.responseText);
_3d.error("responseXML: "+_3d.serialize(this.xhr.responseXML));
throw "parsererror";
}
}else{
if(this.xhr.responseText){
_3d.error("invalid response received");
_3d.error("responseText: "+this.xhr.responseText);
_3d.error("responseXML: "+_3d.serialize(this.xhr.responseXML));
}
}
return _7b;
},_newXHR:function(){
var xhr=null;
if(window.XMLHttpRequest){
xhr=new XMLHttpRequest();
if(xhr.overrideMimeType){
xhr.overrideMimeType("text/xml");
}
}else{
if(window.ActiveXObject){
xhr=new ActiveXObject("Microsoft.XMLHTTP");
}
}
xhr.onreadystatechange=this.func.bind(null,this);
return xhr;
}};
_3d.Connection=function(_7c){
this.service=_7c;
this.jid="";
this.rid=Math.floor(Math.random()*4294967295);
this.sid=null;
this.streamId=null;
this.features=null;
this.do_session=false;
this.do_bind=false;
this.timedHandlers=[];
this.handlers=[];
this.removeTimeds=[];
this.removeHandlers=[];
this.addTimeds=[];
this.addHandlers=[];
this._idleTimeout=null;
this._disconnectTimeout=null;
this.authenticated=false;
this.disconnecting=false;
this.connected=false;
this.errors=0;
this.paused=false;
this.hold=1;
this.wait=60;
this.window=5;
this._data=[];
this._requests=[];
this._uniqueId=Math.round(Math.random()*10000);
this._sasl_success_handler=null;
this._sasl_failure_handler=null;
this._sasl_challenge_handler=null;
this._idleTimeout=setTimeout(this._onIdle.bind(this),100);
for(var k in _3d._connectionPlugins){
if(_3d._connectionPlugins.hasOwnProperty(k)){
var _7d=_3d._connectionPlugins[k];
var F=function(){
};
F.prototype=_7d;
this[k]=new F();
this[k].init(this);
}
}
};
_3d.Connection.prototype={reset:function(){
this.rid=Math.floor(Math.random()*4294967295);
this.sid=null;
this.streamId=null;
this.do_session=false;
this.do_bind=false;
this.timedHandlers=[];
this.handlers=[];
this.removeTimeds=[];
this.removeHandlers=[];
this.addTimeds=[];
this.addHandlers=[];
this.authenticated=false;
this.disconnecting=false;
this.connected=false;
this.errors=0;
this._requests=[];
this._uniqueId=Math.round(Math.random()*10000);
},pause:function(){
this.paused=true;
},resume:function(){
this.paused=false;
},getUniqueId:function(_7e){
if(typeof (_7e)=="string"||typeof (_7e)=="number"){
return ++this._uniqueId+":"+_7e;
}else{
return ++this._uniqueId+"";
}
},connect:function(jid,_7f,_80,_81,_82){
this.jid=jid;
this.pass=_7f;
this.connect_callback=_80;
this.disconnecting=false;
this.connected=false;
this.authenticated=false;
this.errors=0;
this.wait=_81||this.wait;
this.hold=_82||this.hold;
this.domain=_3d.getDomainFromJid(this.jid);
var _83=this._buildBody().attrs({to:this.domain,"xml:lang":"en",wait:this.wait,hold:this.hold,content:"text/xml; charset=utf-8",ver:"1.6","xmpp:version":"1.0","xmlns:xmpp":_3d.NS.BOSH});
this._changeConnectStatus(_3d.Status.CONNECTING,null);
this._requests.push(new _3d.Request(_83.tree(),this._onRequestStateChange.bind(this,this._connect_cb.bind(this)),_83.tree().getAttribute("rid")));
this._throttledRequestHandler();
},attach:function(jid,sid,rid,_84,_85,_86,_87){
this.jid=jid;
this.sid=sid;
this.rid=rid;
this.connect_callback=_84;
this.domain=_3d.getDomainFromJid(this.jid);
this.authenticated=true;
this.connected=true;
this.wait=_85||this.wait;
this.hold=_86||this.hold;
this.window=_87||this.window;
this._changeConnectStatus(_3d.Status.ATTACHED,null);
},xmlInput:function(_88){
return;
},xmlOutput:function(_89){
return;
},rawInput:function(_8a){
return;
},rawOutput:function(_8b){
return;
},send:function(_8c){
if(_8c===null){
return;
}
if(typeof (_8c.sort)==="function"){
for(var i=0;i<_8c.length;i++){
this._queueData(_8c[i]);
}
}else{
if(typeof (_8c.tree)==="function"){
this._queueData(_8c.tree());
}else{
this._queueData(_8c);
}
}
this._throttledRequestHandler();
clearTimeout(this._idleTimeout);
this._idleTimeout=setTimeout(this._onIdle.bind(this),100);
},flush:function(){
clearTimeout(this._idleTimeout);
this._onIdle();
},sendIQ:function(_8d,_8e,_8f,_90){
var _91=null;
var _92=this;
if(typeof (_8d.tree)==="function"){
_8d=_8d.tree();
}
var id=_8d.getAttribute("id");
if(!id){
id=this.getUniqueId("sendIQ");
_8d.setAttribute("id",id);
}
var _93=this.addHandler(function(_94){
if(_91){
_92.deleteTimedHandler(_91);
}
var _95=_94.getAttribute("type");
if(_95=="result"){
if(_8e){
_8e(_94);
}
}else{
if(_95=="error"){
if(_8f){
_8f(_94);
}
}else{
throw {name:"StropheError",message:"Got bad IQ type of "+_95};
}
}
},null,"iq",null,id);
if(_90){
_91=this.addTimedHandler(_90,function(){
_92.deleteHandler(_93);
if(_8f){
_8f(null);
}
return false;
});
}
this.send(_8d);
return id;
},_queueData:function(_96){
if(_96===null||!_96.tagName||!_96.childNodes){
throw {name:"StropheError",message:"Cannot queue non-DOMElement."};
}
this._data.push(_96);
},_sendRestart:function(){
this._data.push("restart");
this._throttledRequestHandler();
clearTimeout(this._idleTimeout);
this._idleTimeout=setTimeout(this._onIdle.bind(this),100);
},addTimedHandler:function(_97,_98){
var _99=new _3d.TimedHandler(_97,_98);
this.addTimeds.push(_99);
return _99;
},deleteTimedHandler:function(_9a){
this.removeTimeds.push(_9a);
},addHandler:function(_9b,ns,_9c,_9d,id,_9e,_9f){
var _a0=new _3d.Handler(_9b,ns,_9c,_9d,id,_9e,_9f);
this.addHandlers.push(_a0);
return _a0;
},deleteHandler:function(_a1){
this.removeHandlers.push(_a1);
},disconnect:function(_a2){
this._changeConnectStatus(_3d.Status.DISCONNECTING,_a2);
_3d.info("Disconnect was called because: "+_a2);
if(this.connected){
this._disconnectTimeout=this._addSysTimedHandler(3000,this._onDisconnectTimeout.bind(this));
this._sendTerminate();
}
},_changeConnectStatus:function(_a3,_a4){
for(var k in _3d._connectionPlugins){
if(_3d._connectionPlugins.hasOwnProperty(k)){
var _a5=this[k];
if(_a5.statusChanged){
try{
_a5.statusChanged(_a3,_a4);
}
catch(err){
_3d.error(""+k+" plugin caused an exception "+"changing status: "+err);
}
}
}
}
if(this.connect_callback){
try{
this.connect_callback(_a3,_a4);
}
catch(e){
_3d.error("User connection callback caused an "+"exception: "+e);
}
}
},_buildBody:function(){
var _a6=_3e("body",{rid:this.rid++,xmlns:_3d.NS.HTTPBIND});
if(this.sid!==null){
_a6.attrs({sid:this.sid});
}
return _a6;
},_removeRequest:function(req){
_3d.debug("removing request");
var i;
for(i=this._requests.length-1;i>=0;i--){
if(req==this._requests[i]){
this._requests.splice(i,1);
}
}
req.xhr.onreadystatechange=function(){
};
this._throttledRequestHandler();
},_restartRequest:function(i){
var req=this._requests[i];
if(req.dead===null){
req.dead=new Date();
}
this._processRequest(i);
},_processRequest:function(i){
var req=this._requests[i];
var _a7=-1;
try{
if(req.xhr.readyState==4){
_a7=req.xhr.status;
}
}
catch(e){
_3d.error("caught an error in _requests["+i+"], reqStatus: "+_a7);
}
if(typeof (_a7)=="undefined"){
_a7=-1;
}
if(req.sends>5){
this._onDisconnectTimeout();
return;
}
var _a8=req.age();
var _a9=(!isNaN(_a8)&&_a8>Math.floor(_3d.TIMEOUT*this.wait));
var _aa=(req.dead!==null&&req.timeDead()>Math.floor(_3d.SECONDARY_TIMEOUT*this.wait));
var _ab=(req.xhr.readyState==4&&(_a7<1||_a7>=500));
if(_a9||_aa||_ab){
if(_aa){
_3d.error("Request "+this._requests[i].id+" timed out (secondary), restarting");
}
req.abort=true;
req.xhr.abort();
req.xhr.onreadystatechange=function(){
};
this._requests[i]=new _3d.Request(req.xmlData,req.origFunc,req.rid,req.sends);
req=this._requests[i];
}
if(req.xhr.readyState===0){
_3d.debug("request id "+req.id+"."+req.sends+" posting");
req.date=new Date();
try{
req.xhr.open("POST",this.service,true);
}
catch(e2){
_3d.error("XHR open failed.");
if(!this.connected){
this._changeConnectStatus(_3d.Status.CONNFAIL,"bad-service");
}
this.disconnect();
return;
}
var _ac=function(){
req.xhr.send(req.data);
};
if(req.sends>1){
var _ad=Math.pow(req.sends,3)*1000;
setTimeout(_ac,_ad);
}else{
_ac();
}
req.sends++;
this.xmlOutput(req.xmlData);
this.rawOutput(req.data);
}else{
_3d.debug("_processRequest: "+(i===0?"first":"second")+" request has readyState of "+req.xhr.readyState);
}
},_throttledRequestHandler:function(){
if(!this._requests){
_3d.debug("_throttledRequestHandler called with "+"undefined requests");
}else{
_3d.debug("_throttledRequestHandler called with "+this._requests.length+" requests");
}
if(!this._requests||this._requests.length===0){
return;
}
if(this._requests.length>0){
this._processRequest(0);
}
if(this._requests.length>1&&Math.abs(this._requests[0].rid-this._requests[1].rid)<this.window){
this._processRequest(1);
}
},_onRequestStateChange:function(_ae,req){
_3d.debug("request id "+req.id+"."+req.sends+" state changed to "+req.xhr.readyState);
if(req.abort){
req.abort=false;
return;
}
var _af;
if(req.xhr.readyState==4){
_af=0;
try{
_af=req.xhr.status;
}
catch(e){
}
if(typeof (_af)=="undefined"){
_af=0;
}
if(this.disconnecting){
if(_af>=400){
this._hitError(_af);
return;
}
}
var _b0=(this._requests[0]==req);
var _b1=(this._requests[1]==req);
if((_af>0&&_af<500)||req.sends>5){
this._removeRequest(req);
_3d.debug("request id "+req.id+" should now be removed");
}
if(_af==200){
if(_b1||(_b0&&this._requests.length>0&&this._requests[0].age()>Math.floor(_3d.SECONDARY_TIMEOUT*this.wait))){
this._restartRequest(0);
}
_3d.debug("request id "+req.id+"."+req.sends+" got 200");
_ae(req);
this.errors=0;
}else{
_3d.error("request id "+req.id+"."+req.sends+" error "+_af+" happened");
if(_af===0||(_af>=400&&_af<600)||_af>=12000){
this._hitError(_af);
if(_af>=400&&_af<500){
this._changeConnectStatus(_3d.Status.DISCONNECTING,null);
this._doDisconnect();
}
}
}
if(!((_af>0&&_af<500)||req.sends>5)){
this._throttledRequestHandler();
}
}
},_hitError:function(_b2){
this.errors++;
_3d.warn("request errored, status: "+_b2+", number of errors: "+this.errors);
if(this.errors>4){
this._onDisconnectTimeout();
}
},_doDisconnect:function(){
_3d.info("_doDisconnect was called");
this.authenticated=false;
this.disconnecting=false;
this.sid=null;
this.streamId=null;
this.rid=Math.floor(Math.random()*4294967295);
if(this.connected){
this._changeConnectStatus(_3d.Status.DISCONNECTED,null);
this.connected=false;
}
this.handlers=[];
this.timedHandlers=[];
this.removeTimeds=[];
this.removeHandlers=[];
this.addTimeds=[];
this.addHandlers=[];
},_dataRecv:function(req){
try{
var _b3=req.getResponse();
}
catch(e){
if(e!="parsererror"){
throw e;
}
this.disconnect("strophe-parsererror");
}
if(_b3===null){
return;
}
this.xmlInput(_b3);
this.rawInput(_3d.serialize(_b3));
var i,_b4;
while(this.removeHandlers.length>0){
_b4=this.removeHandlers.pop();
i=this.handlers.indexOf(_b4);
if(i>=0){
this.handlers.splice(i,1);
}
}
while(this.addHandlers.length>0){
this.handlers.push(this.addHandlers.pop());
}
if(this.disconnecting&&this._requests.length===0){
this.deleteTimedHandler(this._disconnectTimeout);
this._disconnectTimeout=null;
this._doDisconnect();
return;
}
var typ=_b3.getAttribute("type");
var _b5,_b6;
if(typ!==null&&typ=="terminate"){
if(this.disconnecting){
return;
}
_b5=_b3.getAttribute("condition");
_b6=_b3.getElementsByTagName("conflict");
if(_b5!==null){
if(_b5=="remote-stream-error"&&_b6.length>0){
_b5="conflict";
}
this._changeConnectStatus(_3d.Status.CONNFAIL,_b5);
}else{
this._changeConnectStatus(_3d.Status.CONNFAIL,"unknown");
}
this.disconnect();
return;
}
var _b7=this;
_3d.forEachChild(_b3,null,function(_b8){
var i,_b9;
_b9=_b7.handlers;
_b7.handlers=[];
for(i=0;i<_b9.length;i++){
var _ba=_b9[i];
if(_ba.isMatch(_b8)&&(_b7.authenticated||!_ba.user)){
if(_ba.run(_b8)){
_b7.handlers.push(_ba);
}
}else{
_b7.handlers.push(_ba);
}
}
});
},_sendTerminate:function(){
_3d.info("_sendTerminate was called");
var _bb=this._buildBody().attrs({type:"terminate"});
if(this.authenticated){
_bb.c("presence",{xmlns:_3d.NS.CLIENT,type:"unavailable"});
}
this.disconnecting=true;
var req=new _3d.Request(_bb.tree(),this._onRequestStateChange.bind(this,this._dataRecv.bind(this)),_bb.tree().getAttribute("rid"));
this._requests.push(req);
this._throttledRequestHandler();
},_connect_cb:function(req){
_3d.info("_connect_cb was called");
this.connected=true;
var _bc=req.getResponse();
if(!_bc){
return;
}
this.xmlInput(_bc);
this.rawInput(_3d.serialize(_bc));
var typ=_bc.getAttribute("type");
var _bd,_be;
if(typ!==null&&typ=="terminate"){
_bd=_bc.getAttribute("condition");
_be=_bc.getElementsByTagName("conflict");
if(_bd!==null){
if(_bd=="remote-stream-error"&&_be.length>0){
_bd="conflict";
}
this._changeConnectStatus(_3d.Status.CONNFAIL,_bd);
}else{
this._changeConnectStatus(_3d.Status.CONNFAIL,"unknown");
}
return;
}
if(!this.sid){
this.sid=_bc.getAttribute("sid");
}
if(!this.stream_id){
this.stream_id=_bc.getAttribute("authid");
}
var _bf=_bc.getAttribute("requests");
if(_bf){
this.window=parseInt(_bf,10);
}
var _c0=_bc.getAttribute("hold");
if(_c0){
this.hold=parseInt(_c0,10);
}
var _c1=_bc.getAttribute("wait");
if(_c1){
this.wait=parseInt(_c1,10);
}
var _c2=false;
var _c3=false;
var _c4=false;
var _c5=_bc.getElementsByTagName("mechanism");
var i,_c6,_c7,_c8;
if(_c5.length>0){
for(i=0;i<_c5.length;i++){
_c6=_3d.getText(_c5[i]);
if(_c6=="DIGEST-MD5"){
_c3=true;
}else{
if(_c6=="PLAIN"){
_c2=true;
}else{
if(_c6=="ANONYMOUS"){
_c4=true;
}
}
}
}
}else{
var _c9=this._buildBody();
this._requests.push(new _3d.Request(_c9.tree(),this._onRequestStateChange.bind(this,this._connect_cb.bind(this)),_c9.tree().getAttribute("rid")));
this._throttledRequestHandler();
return;
}
if(_3d.getNodeFromJid(this.jid)===null&&_c4){
this._changeConnectStatus(_3d.Status.AUTHENTICATING,null);
this._sasl_success_handler=this._addSysHandler(this._sasl_success_cb.bind(this),null,"success",null,null);
this._sasl_failure_handler=this._addSysHandler(this._sasl_failure_cb.bind(this),null,"failure",null,null);
this.send(_3e("auth",{xmlns:_3d.NS.SASL,mechanism:"ANONYMOUS"}).tree());
}else{
if(_3d.getNodeFromJid(this.jid)===null){
this._changeConnectStatus(_3d.Status.CONNFAIL,"x-strophe-bad-non-anon-jid");
this.disconnect();
}else{
if(_c3){
this._changeConnectStatus(_3d.Status.AUTHENTICATING,null);
this._sasl_challenge_handler=this._addSysHandler(this._sasl_challenge1_cb.bind(this),null,"challenge",null,null);
this._sasl_failure_handler=this._addSysHandler(this._sasl_failure_cb.bind(this),null,"failure",null,null);
this.send(_3e("auth",{xmlns:_3d.NS.SASL,mechanism:"DIGEST-MD5"}).tree());
}else{
if(_c2){
_c7=_3d.getBareJidFromJid(this.jid);
_c7=_c7+"\x00";
_c7=_c7+_3d.getNodeFromJid(this.jid);
_c7=_c7+"\x00";
_c7=_c7+this.pass;
this._changeConnectStatus(_3d.Status.AUTHENTICATING,null);
this._sasl_success_handler=this._addSysHandler(this._sasl_success_cb.bind(this),null,"success",null,null);
this._sasl_failure_handler=this._addSysHandler(this._sasl_failure_cb.bind(this),null,"failure",null,null);
_c8=Base64.encode(_c7);
this.send(_3e("auth",{xmlns:_3d.NS.SASL,mechanism:"PLAIN"}).t(_c8).tree());
}else{
this._changeConnectStatus(_3d.Status.AUTHENTICATING,null);
this._addSysHandler(this._auth1_cb.bind(this),null,null,null,"_auth_1");
this.send($iq({type:"get",to:this.domain,id:"_auth_1"}).c("query",{xmlns:_3d.NS.AUTH}).c("username",{}).t(_3d.getNodeFromJid(this.jid)).tree());
}
}
}
}
},_sasl_challenge1_cb:function(_ca){
var _cb=/([a-z]+)=("[^"]+"|[^,"]+)(?:,|$)/;
var _cc=Base64.decode(_3d.getText(_ca));
var _cd=MD5.hexdigest(Math.random()*1234567890);
var _ce="";
var _cf=null;
var _d0="";
var qop="";
var _d1;
this.deleteHandler(this._sasl_failure_handler);
while(_cc.match(_cb)){
_d1=_cc.match(_cb);
_cc=_cc.replace(_d1[0],"");
_d1[2]=_d1[2].replace(/^"(.+)"$/,"$1");
switch(_d1[1]){
case "realm":
_ce=_d1[2];
break;
case "nonce":
_d0=_d1[2];
break;
case "qop":
qop=_d1[2];
break;
case "host":
_cf=_d1[2];
break;
}
}
var _d2="xmpp/"+this.domain;
if(_cf!==null){
_d2=_d2+"/"+_cf;
}
var A1=MD5.hash(_3d.getNodeFromJid(this.jid)+":"+_ce+":"+this.pass)+":"+_d0+":"+_cd;
var A2="AUTHENTICATE:"+_d2;
var _d3="";
_d3+="username="+this._quote(_3d.getNodeFromJid(this.jid))+",";
_d3+="realm="+this._quote(_ce)+",";
_d3+="nonce="+this._quote(_d0)+",";
_d3+="cnonce="+this._quote(_cd)+",";
_d3+="nc=\"00000001\",";
_d3+="qop=\"auth\",";
_d3+="digest-uri="+this._quote(_d2)+",";
_d3+="response="+this._quote(MD5.hexdigest(MD5.hexdigest(A1)+":"+_d0+":00000001:"+_cd+":auth:"+MD5.hexdigest(A2)))+",";
_d3+="charset=\"utf-8\"";
this._sasl_challenge_handler=this._addSysHandler(this._sasl_challenge2_cb.bind(this),null,"challenge",null,null);
this._sasl_success_handler=this._addSysHandler(this._sasl_success_cb.bind(this),null,"success",null,null);
this._sasl_failure_handler=this._addSysHandler(this._sasl_failure_cb.bind(this),null,"failure",null,null);
this.send(_3e("response",{xmlns:_3d.NS.SASL}).t(Base64.encode(_d3)).tree());
return false;
},_quote:function(str){
return "\""+str.replace(/\\/g,"\\\\").replace(/"/g,"\\\"")+"\"";
},_sasl_challenge2_cb:function(_d4){
this.deleteHandler(this._sasl_success_handler);
this.deleteHandler(this._sasl_failure_handler);
this._sasl_success_handler=this._addSysHandler(this._sasl_success_cb.bind(this),null,"success",null,null);
this._sasl_failure_handler=this._addSysHandler(this._sasl_failure_cb.bind(this),null,"failure",null,null);
this.send(_3e("response",{xmlns:_3d.NS.SASL}).tree());
return false;
},_auth1_cb:function(_d5){
var iq=$iq({type:"set",id:"_auth_2"}).c("query",{xmlns:_3d.NS.AUTH}).c("username",{}).t(_3d.getNodeFromJid(this.jid)).up().c("password").t(this.pass);
if(!_3d.getResourceFromJid(this.jid)){
this.jid=_3d.getBareJidFromJid(this.jid)+"/strophe";
}
iq.up().c("resource",{}).t(_3d.getResourceFromJid(this.jid));
this._addSysHandler(this._auth2_cb.bind(this),null,null,null,"_auth_2");
this.send(iq.tree());
return false;
},_sasl_success_cb:function(_d6){
_3d.info("SASL authentication succeeded.");
this.deleteHandler(this._sasl_failure_handler);
this._sasl_failure_handler=null;
if(this._sasl_challenge_handler){
this.deleteHandler(this._sasl_challenge_handler);
this._sasl_challenge_handler=null;
}
this._addSysHandler(this._sasl_auth1_cb.bind(this),null,"stream:features",null,null);
this._sendRestart();
return false;
},_sasl_auth1_cb:function(_d7){
this.features=_d7;
var i,_d8;
for(i=0;i<_d7.childNodes.length;i++){
_d8=_d7.childNodes[i];
if(_d8.nodeName=="bind"){
this.do_bind=true;
}
if(_d8.nodeName=="session"){
this.do_session=true;
}
}
if(!this.do_bind){
this._changeConnectStatus(_3d.Status.AUTHFAIL,null);
return false;
}else{
this._addSysHandler(this._sasl_bind_cb.bind(this),null,null,null,"_bind_auth_2");
var _d9=_3d.getResourceFromJid(this.jid);
if(_d9){
this.send($iq({type:"set",id:"_bind_auth_2"}).c("bind",{xmlns:_3d.NS.BIND}).c("resource",{}).t(_d9).tree());
}else{
this.send($iq({type:"set",id:"_bind_auth_2"}).c("bind",{xmlns:_3d.NS.BIND}).tree());
}
}
return false;
},_sasl_bind_cb:function(_da){
if(_da.getAttribute("type")=="error"){
_3d.info("SASL binding failed.");
this._changeConnectStatus(_3d.Status.AUTHFAIL,null);
return false;
}
var _db=_da.getElementsByTagName("bind");
var _dc;
if(_db.length>0){
_dc=_db[0].getElementsByTagName("jid");
if(_dc.length>0){
this.jid=_3d.getText(_dc[0]);
if(this.do_session){
this._addSysHandler(this._sasl_session_cb.bind(this),null,null,null,"_session_auth_2");
this.send($iq({type:"set",id:"_session_auth_2"}).c("session",{xmlns:_3d.NS.SESSION}).tree());
}else{
this.authenticated=true;
this._changeConnectStatus(_3d.Status.CONNECTED,null);
}
}
}else{
_3d.info("SASL binding failed.");
this._changeConnectStatus(_3d.Status.AUTHFAIL,null);
return false;
}
},_sasl_session_cb:function(_dd){
if(_dd.getAttribute("type")=="result"){
this.authenticated=true;
this._changeConnectStatus(_3d.Status.CONNECTED,null);
}else{
if(_dd.getAttribute("type")=="error"){
_3d.info("Session creation failed.");
this._changeConnectStatus(_3d.Status.AUTHFAIL,null);
return false;
}
}
return false;
},_sasl_failure_cb:function(_de){
if(this._sasl_success_handler){
this.deleteHandler(this._sasl_success_handler);
this._sasl_success_handler=null;
}
if(this._sasl_challenge_handler){
this.deleteHandler(this._sasl_challenge_handler);
this._sasl_challenge_handler=null;
}
this._changeConnectStatus(_3d.Status.AUTHFAIL,null);
return false;
},_auth2_cb:function(_df){
if(_df.getAttribute("type")=="result"){
this.authenticated=true;
this._changeConnectStatus(_3d.Status.CONNECTED,null);
}else{
if(_df.getAttribute("type")=="error"){
this._changeConnectStatus(_3d.Status.AUTHFAIL,null);
this.disconnect();
}
}
return false;
},_addSysTimedHandler:function(_e0,_e1){
var _e2=new _3d.TimedHandler(_e0,_e1);
_e2.user=false;
this.addTimeds.push(_e2);
return _e2;
},_addSysHandler:function(_e3,ns,_e4,_e5,id){
var _e6=new _3d.Handler(_e3,ns,_e4,_e5,id);
_e6.user=false;
this.addHandlers.push(_e6);
return _e6;
},_onDisconnectTimeout:function(){
_3d.info("_onDisconnectTimeout was called");
var req;
while(this._requests.length>0){
req=this._requests.pop();
req.abort=true;
req.xhr.abort();
req.xhr.onreadystatechange=function(){
};
}
this._doDisconnect();
return false;
},_onIdle:function(){
var i,_e7,_e8,_e9;
while(this.addTimeds.length>0){
this.timedHandlers.push(this.addTimeds.pop());
}
while(this.removeTimeds.length>0){
_e7=this.removeTimeds.pop();
i=this.timedHandlers.indexOf(_e7);
if(i>=0){
this.timedHandlers.splice(i,1);
}
}
var now=new Date().getTime();
_e9=[];
for(i=0;i<this.timedHandlers.length;i++){
_e7=this.timedHandlers[i];
if(this.authenticated||!_e7.user){
_e8=_e7.lastCalled+_e7.period;
if(_e8-now<=0){
if(_e7.run()){
_e9.push(_e7);
}
}else{
_e9.push(_e7);
}
}
}
this.timedHandlers=_e9;
var _ea,_eb;
if(this.authenticated&&this._requests.length===0&&this._data.length===0&&!this.disconnecting){
_3d.info("no requests during idle cycle, sending "+"blank request");
this._data.push(null);
}
if(this._requests.length<2&&this._data.length>0&&!this.paused){
_ea=this._buildBody();
for(i=0;i<this._data.length;i++){
if(this._data[i]!==null){
if(this._data[i]==="restart"){
_ea.attrs({to:this.domain,"xml:lang":"en","xmpp:restart":"true","xmlns:xmpp":_3d.NS.BOSH});
}else{
_ea.cnode(this._data[i]).up();
}
}
}
delete this._data;
this._data=[];
this._requests.push(new _3d.Request(_ea.tree(),this._onRequestStateChange.bind(this,this._dataRecv.bind(this)),_ea.tree().getAttribute("rid")));
this._processRequest(this._requests.length-1);
}
if(this._requests.length>0){
_eb=this._requests[0].age();
if(this._requests[0].dead!==null){
if(this._requests[0].timeDead()>Math.floor(_3d.SECONDARY_TIMEOUT*this.wait)){
this._throttledRequestHandler();
}
}
if(_eb>Math.floor(_3d.TIMEOUT*this.wait)){
_3d.warn("Request "+this._requests[0].id+" timed out, over "+Math.floor(_3d.TIMEOUT*this.wait)+" seconds since last activity");
this._throttledRequestHandler();
}
}
clearTimeout(this._idleTimeout);
this._idleTimeout=setTimeout(this._onIdle.bind(this),100);
}};
if(_3c){
_3c(_3d,_3e,_41,$iq,_44);
}
})(function(){
window.Strophe=arguments[0];
window.$build=arguments[1];
window.$msg=arguments[2];
window.$iq=arguments[3];
window.$pres=arguments[4];
});
