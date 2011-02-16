@STATIC;1.0;p;19;StropheCappuccino.jt;1258;@STATIC;1.0;i;28;Resources/Strophe/strophe.jsi;25;Resources/Strophe/sha1.jsi;14;TNStropheJID.ji;17;TNStropheStanza.ji;16;TNStropheGroup.ji;19;TNStropheIMClient.ji;17;TNStropheClient.ji;21;TNStropheConnection.ji;18;TNStropheContact.ji;17;TNStropheRoster.ji;15;TNBase64Image.ji;10;TNPubSub.ji;22;MUC/TNStropheMUCRoom.jt;936;
objj_executeFile("Resources/Strophe/strophe.js",YES);
objj_executeFile("Resources/Strophe/sha1.js",YES);
objj_executeFile("TNStropheJID.j",YES);
objj_executeFile("TNStropheStanza.j",YES);
objj_executeFile("TNStropheGroup.j",YES);
objj_executeFile("TNStropheIMClient.j",YES);
objj_executeFile("TNStropheClient.j",YES);
objj_executeFile("TNStropheConnection.j",YES);
objj_executeFile("TNStropheContact.j",YES);
objj_executeFile("TNStropheRoster.j",YES);
objj_executeFile("TNBase64Image.j",YES);
objj_executeFile("TNPubSub.j",YES);
objj_executeFile("MUC/TNStropheMUCRoom.j",YES);
objj_msgSend(TNStropheClient,"addNamespaceWithName:value:","CAPS","http://jabber.org/protocol/caps");
objj_msgSend(TNStropheClient,"addNamespaceWithName:value:","DELAY","urn:xmpp:delay");
objj_msgSend(TNStropheClient,"addNamespaceWithName:value:","X_DATA","jabber:x:data");
objj_msgSend(TNStropheClient,"addNamespaceWithName:value:","PING","urn:xmpp:ping");
p;15;TNBase64Image.jt;2207;@STATIC;1.0;I;23;Foundation/Foundation.jt;2160;
objj_executeFile("Foundation/Foundation.j",NO);
var _1=objj_allocateClassPair(CPImage,"TNBase64Image"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_base64EncodedData"),new objj_ivar("_contentType")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_base64EncodedData"),function(_3,_4){
with(_3){
return _base64EncodedData;
}
}),new objj_method(sel_getUid("setBase64EncodedData:"),function(_5,_6,_7){
with(_5){
_base64EncodedData=_7;
}
}),new objj_method(sel_getUid("_contentType"),function(_8,_9){
with(_8){
return _contentType;
}
}),new objj_method(sel_getUid("setContentType:"),function(_a,_b,_c){
with(_a){
_contentType=_c;
}
}),new objj_method(sel_getUid("load"),function(_d,_e){
with(_d){
if(_base64EncodedData){
if(_loadStatus==CPImageLoadStatusLoading||_loadStatus==CPImageLoadStatusCompleted){
return;
}
var _f="data:"+_contentType+";base64,"+_base64EncodedData;
_loadStatus=CPImageLoadStatusLoading;
_image=new Image();
_image.onload=function(e){
objj_msgSend(_d,"_imageDidLoad");
};
_filename=_f;
_image.src=_f;
}else{
objj_msgSendSuper({receiver:_d,super_class:objj_getClass("TNBase64Image").super_class},"load");
}
}
}),new objj_method(sel_getUid("base64EncodedData"),function(_10,_11){
with(_10){
var _12=document.createElement("canvas"),ctx=_12.getContext("2d");
_12.width=_image.width,_12.height=_image.height;
ctx.drawImage(_image,0,0);
var _13=_12.toDataURL("image/png");
return _13.replace(/^data:image\/(png|jpg);base64,/,"");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("base64ImageWithContentType:andData:"),function(_14,_15,_16,_17){
with(_14){
var img=objj_msgSend(objj_msgSend(TNBase64Image,"alloc"),"init");
objj_msgSend(img,"setBase64EncodedData:",_17);
objj_msgSend(img,"setContentType:",_16);
objj_msgSend(img,"load");
return img;
}
}),new objj_method(sel_getUid("base64ImageWithContentType:data:delegate:"),function(_18,_19,_1a,_1b,_1c){
with(_18){
var img=objj_msgSend(objj_msgSend(TNBase64Image,"alloc"),"init");
objj_msgSend(img,"setBase64EncodedData:",_1b);
objj_msgSend(img,"setContentType:",_1a);
objj_msgSend(img,"setDelegate:",_1c);
objj_msgSend(img,"load");
return img;
}
})]);
p;10;TNPubSub.jt;935;@STATIC;1.0;i;21;PubSub/TNPubSubNode.ji;27;PubSub/TNPubSubController.jt;859;
objj_executeFile("PubSub/TNPubSubNode.j",YES);
objj_executeFile("PubSub/TNPubSubController.j",YES);
objj_msgSend(TNStropheConnection,"addNamespaceWithName:value:","PUBSUB","http://jabber.org/protocol/pubsub");
objj_msgSend(TNStropheConnection,"addNamespaceWithName:value:","PUBSUB_EVENT","http://jabber.org/protocol/pubsub#event");
objj_msgSend(TNStropheConnection,"addNamespaceWithName:value:","PUBSUB_OWNER","http://jabber.org/protocol/pubsub#owner");
objj_msgSend(TNStropheConnection,"addNamespaceWithName:value:","PUBSUB_NODE_CONFIG","http://jabber.org/protocol/pubsub#node_config");
objj_msgSend(TNStropheConnection,"addNamespaceWithName:value:","PUBSUB_NOTIFY","http://jabber.org/protocol/pubsub+notify");
objj_msgSend(TNStropheConnection,"addNamespaceWithName:value:","PUBSUB_SUBSCRIBE OPTIONS","http://jabber.org/protocol/pubsub#subscribe_options");
p;17;TNStropheClient.jt;14925;@STATIC;1.0;I;23;Foundation/Foundation.ji;21;TNStropheConnection.ji;14;TNStropheJID.ji;17;TNStropheStanza.ji;25;Resources/Strophe/sha1.jsi;18;TNStropheGlobals.jt;14757;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("TNStropheConnection.j",YES);
objj_executeFile("TNStropheJID.j",YES);
objj_executeFile("TNStropheStanza.j",YES);
objj_executeFile("Resources/Strophe/sha1.js",YES);
objj_executeFile("TNStropheGlobals.j",YES);
var _1=objj_allocateClassPair(CPObject,"TNStropheClient"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_features"),new objj_ivar("_clientNode"),new objj_ivar("_identityCategory"),new objj_ivar("_identityName"),new objj_ivar("_identityType"),new objj_ivar("_password"),new objj_ivar("_delegate"),new objj_ivar("_connection"),new objj_ivar("_JID"),new objj_ivar("_userPresenceShow"),new objj_ivar("_userPresenceStatus")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("_features"),function(_3,_4){
with(_3){
return _features;
}
}),new objj_method(sel_getUid("clientNode"),function(_5,_6){
with(_5){
return _clientNode;
}
}),new objj_method(sel_getUid("setClientNode:"),function(_7,_8,_9){
with(_7){
_clientNode=_9;
}
}),new objj_method(sel_getUid("identityCategory"),function(_a,_b){
with(_a){
return _identityCategory;
}
}),new objj_method(sel_getUid("setIdentityCategory:"),function(_c,_d,_e){
with(_c){
_identityCategory=_e;
}
}),new objj_method(sel_getUid("identityName"),function(_f,_10){
with(_f){
return _identityName;
}
}),new objj_method(sel_getUid("setIdentityName:"),function(_11,_12,_13){
with(_11){
_identityName=_13;
}
}),new objj_method(sel_getUid("identityType"),function(_14,_15){
with(_14){
return _identityType;
}
}),new objj_method(sel_getUid("setIdentityType:"),function(_16,_17,_18){
with(_16){
_identityType=_18;
}
}),new objj_method(sel_getUid("password"),function(_19,_1a){
with(_19){
return _password;
}
}),new objj_method(sel_getUid("setPassword:"),function(_1b,_1c,_1d){
with(_1b){
_password=_1d;
}
}),new objj_method(sel_getUid("delegate"),function(_1e,_1f){
with(_1e){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_20,_21,_22){
with(_20){
_delegate=_22;
}
}),new objj_method(sel_getUid("connection"),function(_23,_24){
with(_23){
return _connection;
}
}),new objj_method(sel_getUid("setConnection:"),function(_25,_26,_27){
with(_25){
_connection=_27;
}
}),new objj_method(sel_getUid("JID"),function(_28,_29){
with(_28){
return _JID;
}
}),new objj_method(sel_getUid("setJID:"),function(_2a,_2b,_2c){
with(_2a){
_JID=_2c;
}
}),new objj_method(sel_getUid("initWithService:"),function(_2d,_2e,_2f){
with(_2d){
if(_2d=objj_msgSendSuper({receiver:_2d,super_class:objj_getClass("TNStropheClient").super_class},"init")){
_connection=objj_msgSend(TNStropheConnection,"connectionWithService:andDelegate:",_2f,_2d);
_userPresenceShow=TNStropheContactStatusOffline;
_userPresenceStatus="";
_clientNode="http://cappuccino.org";
_identityCategory="client";
_identityName="StropheCappuccino";
_identityType="web";
_features=[Strophe.NS.CAPS,Strophe.NS.DISCO_INFO,Strophe.NS.DISCO_ITEMS];
}
return _2d;
}
}),new objj_method(sel_getUid("initWithService:JID:password:"),function(_30,_31,_32,_33,_34){
with(_30){
if(_30=objj_msgSend(_30,"initWithService:",_32)){
_JID=_33;
_password=_34;
}
return _30;
}
}),new objj_method(sel_getUid("connect"),function(_35,_36){
with(_35){
var _37=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","iq","name","get","type");
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didReceivePing:"),_35,_37);
objj_msgSend(_connection,"connectWithJID:andPassword:",_JID,_password);
}
}),new objj_method(sel_getUid("disconnect"),function(_38,_39){
with(_38){
objj_msgSend(_connection,"disconnect");
}
}),new objj_method(sel_getUid("onStropheConnecting:"),function(_3a,_3b,_3c){
with(_3a){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("onStropheConnecting:"))){
objj_msgSend(_delegate,"onStropheConnecting:",_3a);
}
}
}),new objj_method(sel_getUid("onStropheConnected:"),function(_3d,_3e,_3f){
with(_3d){
objj_msgSend(_3d,"_sendInitialPresence");
objj_msgSend(_3d,"_sendCAPS");
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("onStropheConnected:"))){
objj_msgSend(_delegate,"onStropheConnected:",_3d);
}
}
}),new objj_method(sel_getUid("onStropheConnectFail:"),function(_40,_41,_42){
with(_40){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("onStropheConnectFail:"))){
objj_msgSend(_delegate,"onStropheConnectFail:",_40);
}
}
}),new objj_method(sel_getUid("onStropheDisconnecting:"),function(_43,_44,_45){
with(_43){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("onStropheDisconnecting:"))){
objj_msgSend(_delegate,"onStropheDisconnecting:",_43);
}
}
}),new objj_method(sel_getUid("onStropheDisconnected:"),function(_46,_47,_48){
with(_46){
_userPresenceShow=TNStropheContactStatusOffline;
_userPresenceStatus="";
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("onStropheDisconnected:"))){
objj_msgSend(_delegate,"onStropheDisconnected:",_46);
}
}
}),new objj_method(sel_getUid("onStropheAuthenticating:"),function(_49,_4a,_4b){
with(_49){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("onStropheAuthenticating:"))){
objj_msgSend(_delegate,"onStropheAuthenticating:",_49);
}
}
}),new objj_method(sel_getUid("onStropheAuthFail:"),function(_4c,_4d,_4e){
with(_4c){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("onStropheAuthFail:"))){
objj_msgSend(_delegate,"onStropheAuthFail:",_4c);
}
}
}),new objj_method(sel_getUid("onStropheError:"),function(_4f,_50,_51){
with(_4f){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("onStropheError:"))){
objj_msgSend(_delegate,"onStropheError:",_4f);
}
}
}),new objj_method(sel_getUid("connection:errorCondition:"),function(_52,_53,_54,_55){
with(_52){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("client:errorCondition:"))){
objj_msgSend(_delegate,"client:errorCondition:",_52,_55);
}
}
}),new objj_method(sel_getUid("_sendInitialPresence"),function(_56,_57){
with(_56){
var _58=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","presence","name",objj_msgSend(_JID,"bare"),"from",{"matchBare":true},"options");
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didPresenceUpdate:"),_56,_58);
objj_msgSend(_56,"setPresenceShow:status:",TNStropheContactStatusOnline,"");
}
}),new objj_method(sel_getUid("_didReceivePing:"),function(_59,_5a,_5b){
with(_59){
if(objj_msgSend(_5b,"containsChildrenWithName:","ping")&&objj_msgSend(objj_msgSend(_5b,"firstChildWithName:","ping"),"namespace")==Strophe.NS.PING){
CPLog.debug("Ping received. Sending pong.");
objj_msgSend(_connection,"send:",objj_msgSend(TNStropheStanza,"iqWithAttributes:",{"to":objj_msgSend(objj_msgSend(_5b,"from"),"bare"),"id":objj_msgSend(_5b,"ID"),"type":"result"}));
}
return YES;
}
}),new objj_method(sel_getUid("addFeature:"),function(_5c,_5d,_5e){
with(_5c){
objj_msgSend(_features,"addObject:",_5e);
}
}),new objj_method(sel_getUid("removeFeature:"),function(_5f,_60,_61){
with(_5f){
objj_msgSend(_features,"removeObjectIdenticalTo:",_61);
}
}),new objj_method(sel_getUid("_clientVer"),function(_62,_63){
with(_62){
return SHA1.b64_sha1(_features.join());
}
}),new objj_method(sel_getUid("_sendCAPS"),function(_64,_65){
with(_64){
var _66=objj_msgSend(TNStropheStanza,"presence");
objj_msgSend(_66,"addChildWithName:andAttributes:","c",{"xmlns":Strophe.NS.CAPS,"node":_clientNode,"hash":"sha-1","ver":objj_msgSend(_64,"_clientVer")});
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("handleFeaturesDisco:"),_64,objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","iq","name","get","type",Strophe.NS.DISCO_INFO,"namespace"));
objj_msgSend(_connection,"send:",_66);
}
}),new objj_method(sel_getUid("handleFeaturesDisco:"),function(_67,_68,_69){
with(_67){
var _6a=objj_msgSend(TNStropheStanza,"iqWithAttributes:",{"id":objj_msgSend(_connection,"getUniqueId"),"type":"result"});
objj_msgSend(_6a,"setTo:",objj_msgSend(_69,"from"));
objj_msgSend(_6a,"addChildWithName:andAttributes:","query",{"xmlns":Strophe.NS.DISCO_INFO,"node":(_clientNode+"#"+objj_msgSend(_67,"_clientVer"))});
objj_msgSend(_6a,"addChildWithName:andAttributes:","identity",{"category":_identityCategory,"name":_identityName,"type":_identityType});
objj_msgSend(_6a,"up");
for(var i=0;i<objj_msgSend(_features,"count");i++){
objj_msgSend(_6a,"addChildWithName:andAttributes:","feature",{"var":objj_msgSend(_features,"objectAtIndex:",i)});
objj_msgSend(_6a,"up");
}
objj_msgSend(_connection,"send:",_6a);
return YES;
}
}),new objj_method(sel_getUid("publishPEPPayload:toNode:"),function(_6b,_6c,_6d,_6e){
with(_6b){
var uid=objj_msgSend(_connection,"getUniqueId"),_6f=objj_msgSend(TNStropheStanza,"iqWithAttributes:",{"type":"set","id":uid}),_70=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",uid,"id");
objj_msgSend(_6f,"addChildWithName:andAttributes:","pubsub",{"xmlns":Strophe.NS.PUBSUB});
objj_msgSend(_6f,"addChildWithName:andAttributes:","publish",{"node":_6e});
objj_msgSend(_6f,"addChildWithName:","item");
objj_msgSend(_6f,"addNode:",_6d);
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didPublishPEP:"),_6b,_70);
objj_msgSend(_connection,"send:",_6f);
}
}),new objj_method(sel_getUid("_didPublishPEP:"),function(_71,_72,_73){
with(_71){
if(objj_msgSend(_73,"type")=="result"){
CPLog.debug("Publish succeeded!");
}else{
CPLog.error("Cannot publish the pubsub item in node with name: "+_nodeName);
}
return NO;
}
}),new objj_method(sel_getUid("setPresenceShow:status:"),function(_74,_75,_76,_77){
with(_74){
if(_76===_userPresenceShow&&_77===_userPresenceStatus){
return;
}
var _78=objj_msgSend(TNStropheStanza,"presence");
_userPresenceShow=_76||_userPresenceShow;
_userPresenceStatus=_77||_userPresenceStatus;
objj_msgSend(_78,"addChildWithName:","status");
objj_msgSend(_78,"addTextNode:",_userPresenceStatus);
objj_msgSend(_78,"up");
objj_msgSend(_78,"addChildWithName:","show");
objj_msgSend(_78,"addTextNode:",_userPresenceShow);
objj_msgSend(_connection,"send:",_78);
}
}),new objj_method(sel_getUid("_didPresenceUpdate:"),function(_79,_7a,_7b){
with(_79){
var _7c=NO;
if(objj_msgSend(_7b,"firstChildWithName:","show")){
_userPresenceShow=objj_msgSend(objj_msgSend(_7b,"firstChildWithName:","show"),"text");
_7c=YES;
}
if(objj_msgSend(_7b,"firstChildWithName:","status")){
_userPresenceStatus=objj_msgSend(objj_msgSend(_7b,"firstChildWithName:","status"),"text");
_7c=YES;
}
if(_7c){
var _7d=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_userPresenceShow,"show",_userPresenceStatus,"status");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStropheClientPresenceUpdatedNotification,_79,_7d);
}
return YES;
}
}),new objj_method(sel_getUid("getVCard"),function(_7e,_7f){
with(_7e){
var uid=objj_msgSend(_connection,"getUniqueId"),_80=objj_msgSend(TNStropheStanza,"iqWithAttributes:",{"type":"get","id":uid}),_81=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_80,"addChildWithName:andAttributes:","vCard",{"xmlns":"vcard-temp"});
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didReceiveCurrentUserVCard:"),_7e,_81);
objj_msgSend(_connection,"send:",_80);
}
}),new objj_method(sel_getUid("_didReceiveCurrentUserVCard:"),function(_82,_83,_84){
with(_82){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStropheClientVCardReceived,_82,_84);
}
}),new objj_method(sel_getUid("setVCard:object:selector:userInfo:"),function(_85,_86,_87,_88,_89,_8a){
with(_85){
var uid=objj_msgSend(_connection,"getUniqueId"),_8b=objj_msgSend(TNStropheStanza,"iqWithAttributes:",{"id":uid,"type":"set"}),_8c=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_8b,"addNode:",_87);
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("notifyVCardUpdate:"),_85,_8c);
objj_msgSend(_connection,"registerSelector:ofObject:withDict:userInfo:",_89,_88,_8c,_8a);
objj_msgSend(_connection,"send:",_8b);
}
}),new objj_method(sel_getUid("notifyVCardUpdate:"),function(_8d,_8e,_8f){
with(_8d){
var uid=objj_msgSend(_connection,"getUniqueId"),_90=objj_msgSend(TNStropheStanza,"presenceWithAttributes:",{"id":uid}),_91=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_90,"addChildWithName:","status");
objj_msgSend(_90,"addTextNode:",_userPresenceStatus);
objj_msgSend(_90,"up");
objj_msgSend(_90,"addChildWithName:","show");
objj_msgSend(_90,"addTextNode:",_userPresenceShow);
objj_msgSend(_90,"up");
objj_msgSend(_90,"addChildWithName:andAttributes:","x",{"xmlns":"vcard-temp:x:update"});
objj_msgSend(_connection,"send:",_90);
}
}),new objj_method(sel_getUid("_didNotifyVCardUpdate:"),function(_92,_93,_94){
with(_92){
CPLog.trace(objj_msgSend(_94,"stringValue"));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("addNamespaceWithName:value:"),function(_95,_96,_97,_98){
with(_95){
Strophe.addNamespace(_97,_98);
}
}),new objj_method(sel_getUid("clientWithService:"),function(_99,_9a,_9b){
with(_99){
return objj_msgSend(objj_msgSend(TNStropheClient,"alloc"),"initWithService:",_9b);
}
}),new objj_method(sel_getUid("clientWithService:JID:password:"),function(_9c,_9d,_9e,_9f,_a0){
with(_9c){
return objj_msgSend(objj_msgSend(TNStropheClient,"alloc"),"initWithService:JID:password:",_9e,_9f,_a0);
}
})]);
var _1=objj_getClass("TNStropheClient");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"TNStropheClient\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_a1,_a2,_a3){
with(_a1){
_a1=objj_msgSendSuper({receiver:_a1,super_class:objj_getClass("TNStropheClient").super_class},"initWithCoder:",_a3);
if(_a1){
_JID=objj_msgSend(_a3,"decodeObjectForKey:","_JID");
_password=objj_msgSend(_a3,"decodeObjectForKey:","_password");
_delegate=objj_msgSend(_a3,"decodeObjectForKey:","_delegate");
_connection=objj_msgSend(_a3,"decodeObjectForKey:","_connection");
_registeredHandlers=objj_msgSend(_a3,"decodeObjectForKey:","_registeredHandlers");
_registeredTimedHandlers=objj_msgSend(_a3,"decodeObjectForKey:","_registeredTimedHandlers");
}
return _a1;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_a4,_a5,_a6){
with(_a4){
objj_msgSendSuper({receiver:_a4,super_class:objj_getClass("TNStropheClient").super_class},"encodeWithCoder:",_a6);
objj_msgSend(_a6,"encodeObject:forKey:",_JID,"_JID");
objj_msgSend(_a6,"encodeObject:forKey:",_password,"_password");
objj_msgSend(_a6,"encodeObject:forKey:",_connection,"_connection");
objj_msgSend(_a6,"encodeObject:forKey:",_registeredHandlers,"_registeredHandlers");
objj_msgSend(_a6,"encodeObject:forKey:",_registeredTimedHandlers,"_registeredTimedHandlers");
}
})]);
p;21;TNStropheConnection.jt;12502;@STATIC;1.0;I;23;Foundation/Foundation.ji;14;TNStropheJID.ji;17;TNStropheStanza.ji;25;Resources/Strophe/sha1.jsi;18;TNStropheGlobals.jt;12360;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("TNStropheJID.j",YES);
objj_executeFile("TNStropheStanza.j",YES);
objj_executeFile("Resources/Strophe/sha1.js",YES);
objj_executeFile("TNStropheGlobals.j",YES);
var _1=objj_allocateClassPair(CPObject,"TNStropheConnection"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_connected"),new objj_ivar("_password"),new objj_ivar("_giveupTimeout"),new objj_ivar("_currentStatus"),new objj_ivar("_delegate"),new objj_ivar("_connectionTimeout"),new objj_ivar("_maxConnections"),new objj_ivar("_registeredHandlers"),new objj_ivar("_registeredTimedHandlers"),new objj_ivar("_boshService"),new objj_ivar("_userPresenceShow"),new objj_ivar("_userPresenceStatus"),new objj_ivar("_giveUpTimer"),new objj_ivar("_connection"),new objj_ivar("_JID")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("isConnected"),function(_3,_4){
with(_3){
return _connected;
}
}),new objj_method(sel_getUid("_setConnected:"),function(_5,_6,_7){
with(_5){
_connected=_7;
}
}),new objj_method(sel_getUid("password"),function(_8,_9){
with(_8){
return _password;
}
}),new objj_method(sel_getUid("setPassword:"),function(_a,_b,_c){
with(_a){
_password=_c;
}
}),new objj_method(sel_getUid("giveupTimeout"),function(_d,_e){
with(_d){
return _giveupTimeout;
}
}),new objj_method(sel_getUid("setGiveupTimeout:"),function(_f,_10,_11){
with(_f){
_giveupTimeout=_11;
}
}),new objj_method(sel_getUid("currentStatus"),function(_12,_13){
with(_12){
return _currentStatus;
}
}),new objj_method(sel_getUid("_setCurrentStatus:"),function(_14,_15,_16){
with(_14){
_currentStatus=_16;
}
}),new objj_method(sel_getUid("delegate"),function(_17,_18){
with(_17){
return _delegate;
}
}),new objj_method(sel_getUid("_setDelegate:"),function(_19,_1a,_1b){
with(_19){
_delegate=_1b;
}
}),new objj_method(sel_getUid("connectionTimeout"),function(_1c,_1d){
with(_1c){
return _connectionTimeout;
}
}),new objj_method(sel_getUid("setConnectionTimeout:"),function(_1e,_1f,_20){
with(_1e){
_connectionTimeout=_20;
}
}),new objj_method(sel_getUid("maxConnections"),function(_21,_22){
with(_21){
return _maxConnections;
}
}),new objj_method(sel_getUid("setMaxConnections:"),function(_23,_24,_25){
with(_23){
_maxConnections=_25;
}
}),new objj_method(sel_getUid("initWithService:andDelegate:"),function(_26,_27,_28,_29){
with(_26){
if(_26=objj_msgSendSuper({receiver:_26,super_class:objj_getClass("TNStropheConnection").super_class},"init")){
_registeredHandlers=objj_msgSend(CPArray,"array");
_registeredTimedHandlers=objj_msgSend(CPArray,"array");
_connected=NO;
_maxConnections=10;
_connectionTimeout=3600;
_giveupTimeout=8;
_currentStatus=Strophe.Status.DISCONNECTED;
_boshService=_28;
_connection=new Strophe.Connection(_boshService);
_delegate=_29;
}
return _26;
}
}),new objj_method(sel_getUid("JID"),function(_2a,_2b){
with(_2a){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("JID"))){
return objj_msgSend(_delegate,"JID");
}else{
return _JID;
}
}
}),new objj_method(sel_getUid("connectWithJID:andPassword:"),function(_2c,_2d,_2e,_2f){
with(_2c){
if(_currentStatus!==Strophe.Status.DISCONNECTED){
return;
}
_JID=_2e;
_connection.connect(objj_msgSend(_2e,"full"),_2f,function(_30,_31){
var _32,_33;
_currentStatus=_30;
if(_31){
_currentStatus=Strophe.Status.DISCONNECTED;
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("connection:errorCondition:"))){
objj_msgSend(_delegate,"connection:errorCondition:",_2c,_31);
}
}else{
switch(_30){
case Strophe.Status.ERROR:
_32=sel_getUid("onStropheError:");
_33=TNStropheConnectionStatusError;
break;
case Strophe.Status.CONNECTING:
_32=sel_getUid("onStropheConnecting:");
_33=TNStropheConnectionStatusConnecting;
_giveUpTimer=objj_msgSend(CPTimer,"scheduledTimerWithTimeInterval:callback:repeats:",_giveupTimeout,function(_34){
_currentStatus=Strophe.Status.DISCONNECTED;
_giveUpTimer=nil;
objj_msgSend(_2c,"reset");
if((_currentStatus===Strophe.Status.CONNECTING)&&(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("connection:errorCondition:")))){
objj_msgSend(_delegate,"connection:errorCondition:",_2c,"Cannot connect");
}
},NO);
break;
case Strophe.Status.CONNFAIL:
_32=sel_getUid("onStropheConnectFail:");
_33=TNStropheConnectionStatusConnectionFailure;
break;
case Strophe.Status.AUTHENTICATING:
_32=sel_getUid("onStropheAuthenticating:");
_33=TNStropheConnectionStatusAuthenticating;
break;
case Strophe.Status.AUTHFAIL:
_32=sel_getUid("onStropheAuthFail:");
_33=TNStropheConnectionStatusAuthFailure;
break;
case Strophe.Status.DISCONNECTING:
if(_connected){
_32=sel_getUid("onStropheDisconnecting:");
_33=TNStropheConnectionStatusDisconnecting;
break;
}
case Strophe.Status.DISCONNECTED:
objj_msgSend(_2c,"deleteAllRegisteredSelectors");
_32=sel_getUid("onStropheDisconnected:");
_33=TNStropheConnectionStatusDisconnected;
_connected=NO;
break;
case Strophe.Status.CONNECTED:
_32=sel_getUid("onStropheConnected:");
_33=TNStropheConnectionStatusConnected;
_connected=YES;
if(_giveUpTimer){
objj_msgSend(_giveUpTimer,"invalidate");
}
break;
}
}
if(_32&&objj_msgSend(_delegate,"respondsToSelector:",_32)){
objj_msgSend(_delegate,"performSelector:withObject:",_32,_2c);
}
if(_33){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",_33,_2c);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheConnectionStatusDidChangeNotification,_2c);
},_connectionTimeout,_maxConnections);
}
}),new objj_method(sel_getUid("disconnect"),function(_35,_36){
with(_35){
if(_currentStatus===Strophe.Status.DISCONNECTED){
return;
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheConnectionStatusWillDisconnect,_35);
_connection.disconnect();
}
}),new objj_method(sel_getUid("reset"),function(_37,_38){
with(_37){
if(_connection){
_connection.reset();
}
}
}),new objj_method(sel_getUid("pause"),function(_39,_3a){
with(_39){
if(_connection){
_connection.pause();
}
}
}),new objj_method(sel_getUid("resume"),function(_3b,_3c){
with(_3b){
if(_connection){
_connection.pause();
}
}
}),new objj_method(sel_getUid("flush"),function(_3d,_3e){
with(_3d){
_connection.flush();
}
}),new objj_method(sel_getUid("JID"),function(_3f,_40){
with(_3f){
return objj_msgSend(_delegate,"JID");
}
}),new objj_method(sel_getUid("send:"),function(_41,_42,_43){
with(_41){
if(_currentStatus==Strophe.Status.CONNECTED){
CPLog.trace("StropheCappuccino Stanza Send:");
CPLog.trace(_43);
_connection.send(objj_msgSend(_43,"tree"));
}
}
}),new objj_method(sel_getUid("getUniqueId"),function(_44,_45){
with(_44){
return objj_msgSend(_44,"getUniqueIdWithSuffix:",null);
}
}),new objj_method(sel_getUid("getUniqueIdWithSuffix:"),function(_46,_47,_48){
with(_46){
return _connection.getUniqueId(_48);
}
}),new objj_method(sel_getUid("registerSelector:ofObject:withDict:"),function(_49,_4a,_4b,_4c,_4d){
with(_49){
var _4e=(objj_msgSend(objj_msgSend(_4d,"valueForKey:","from"),"class")==CPString)?objj_msgSend(_4d,"valueForKey:","from"):objj_msgSend(objj_msgSend(_4d,"valueForKey:","from"),"stringValue"),_4f=_connection.addHandler(function(_50){
var _51=objj_msgSend(TNStropheStanza,"stanzaWithStanza:",_50),ret=objj_msgSend(_4c,"performSelector:withObject:",_4b,_51);
CPLog.trace("StropheCappuccino stanza received that trigger selector : "+objj_msgSend(_4c,"class")+"."+_4b);
CPLog.trace(_51);
return ret;
},objj_msgSend(_4d,"valueForKey:","namespace"),objj_msgSend(_4d,"valueForKey:","name"),objj_msgSend(_4d,"valueForKey:","type"),objj_msgSend(_4d,"valueForKey:","id"),_4e,objj_msgSend(_4d,"valueForKey:","options"));
objj_msgSend(_registeredHandlers,"addObject:",_4f);
return _4f;
}
}),new objj_method(sel_getUid("registerSelector:ofObject:withDict:userInfo:"),function(_52,_53,_54,_55,_56,_57){
with(_52){
var _58=(objj_msgSend(objj_msgSend(_56,"valueForKey:","from"),"class")==CPString)?objj_msgSend(_56,"valueForKey:","from"):objj_msgSend(objj_msgSend(_56,"valueForKey:","from"),"stringValue"),_59=_connection.addHandler(function(_5a){
var _5b=objj_msgSend(TNStropheStanza,"stanzaWithStanza:",_5a),ret=objj_msgSend(_55,"performSelector:withObject:withObject:",_54,_5b,_57);
CPLog.trace("StropheCappuccino stanza received that trigger selector : "+objj_msgSend(_55,"class")+"."+_54);
CPLog.trace(_5b);
_57=nil;
return ret;
},objj_msgSend(_56,"valueForKey:","namespace"),objj_msgSend(_56,"valueForKey:","name"),objj_msgSend(_56,"valueForKey:","type"),objj_msgSend(_56,"valueForKey:","id"),_58,objj_msgSend(_56,"valueForKey:","options"));
objj_msgSend(_registeredHandlers,"addObject:",_59);
return _59;
}
}),new objj_method(sel_getUid("registerTimeoutSelector:ofObject:withDict:forTimeout:"),function(_5c,_5d,_5e,_5f,_60,_61){
with(_5c){
var _62=(objj_msgSend(objj_msgSend(_60,"valueForKey:","from"),"class")==CPString)?objj_msgSend(_60,"valueForKey:","from"):objj_msgSend(objj_msgSend(_60,"valueForKey:","from"),"stringValue"),_63=_connection.addTimedHandler(_61,function(_64){
if(!_64){
var ret=objj_msgSend(_5f,"performSelector:",_5e);
CPLog.trace("StropheCappuccino stanza timeout that trigger selector : "+objj_msgSend(_5f,"class")+"."+_5e);
return ret;
}
return NO;
},objj_msgSend(_60,"valueForKey:","namespace"),objj_msgSend(_60,"valueForKey:","name"),objj_msgSend(_60,"valueForKey:","type"),objj_msgSend(_60,"valueForKey:","id"),_62,objj_msgSend(_60,"valueForKey:","options"));
objj_msgSend(_registeredTimedHandlers,"addObject:",_63);
return _63;
}
}),new objj_method(sel_getUid("deleteRegisteredSelector:"),function(_65,_66,_67){
with(_65){
_connection.deleteHandler(_67);
}
}),new objj_method(sel_getUid("deleteRegisteredTimedSelector:"),function(_68,_69,_6a){
with(_68){
_connection.deleteTimedHandler(_6a);
}
}),new objj_method(sel_getUid("deleteAllRegisteredSelectors"),function(_6b,_6c){
with(_6b){
for(var i=0;i<objj_msgSend(_registeredHandlers,"count");i++){
objj_msgSend(_6b,"deleteRegisteredSelector:",objj_msgSend(_registeredHandlers,"objectAtIndex:",i));
}
for(var i=0;i<objj_msgSend(_registeredTimedHandlers,"count");i++){
objj_msgSend(_6b,"deleteRegisteredTimedSelector:",objj_msgSend(_registeredTimedHandlers,"objectAtIndex:",i));
}
objj_msgSend(_registeredHandlers,"removeAllObjects");
objj_msgSend(_registeredTimedHandlers,"removeAllObjects");
}
}),new objj_method(sel_getUid("rawInputRegisterSelector:ofObject:"),function(_6d,_6e,_6f,_70){
with(_6d){
_connection.xmlInput=function(_71){
objj_msgSend(_70,"performSelector:withObject:",_6f,objj_msgSend(TNStropheStanza,"nodeWithXMLNode:",_71));
};
}
}),new objj_method(sel_getUid("rawOutputRegisterSelector:ofObject:"),function(_72,_73,_74,_75){
with(_72){
_connection.xmlOutput=function(_76){
objj_msgSend(_75,"performSelector:withObject:",_74,objj_msgSend(TNStropheStanza,"nodeWithXMLNode:",_76));
};
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("addNamespaceWithName:value:"),function(_77,_78,_79,_7a){
with(_77){
Strophe.addNamespace(_79,_7a);
}
}),new objj_method(sel_getUid("connectionWithService:andDelegate:"),function(_7b,_7c,_7d,_7e){
with(_7b){
return objj_msgSend(objj_msgSend(TNStropheConnection,"alloc"),"initWithService:andDelegate:",_7d,_7e);
}
})]);
var _1=objj_getClass("TNStropheConnection");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"TNStropheConnection\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_7f,_80,_81){
with(_7f){
_7f=objj_msgSendSuper({receiver:_7f,super_class:objj_getClass("TNStropheConnection").super_class},"initWithCoder:",_81);
if(_7f){
_delegate=objj_msgSend(_81,"decodeObjectForKey:","_delegate");
_boshService=objj_msgSend(_81,"decodeObjectForKey:","_boshService");
_connection=objj_msgSend(_81,"decodeObjectForKey:","_connection");
_registeredHandlers=objj_msgSend(_81,"decodeObjectForKey:","_registeredHandlers");
_registeredTimedHandlers=objj_msgSend(_81,"decodeObjectForKey:","_registeredTimedHandlers");
}
return _7f;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_82,_83,_84){
with(_82){
objj_msgSend(_84,"encodeObject:forKey:",_boshService,"_boshService");
objj_msgSend(_84,"encodeObject:forKey:",_connection,"_connection");
objj_msgSend(_84,"encodeObject:forKey:",_registeredHandlers,"_registeredHandlers");
objj_msgSend(_84,"encodeObject:forKey:",_registeredTimedHandlers,"_registeredTimedHandlers");
}
})]);
p;18;TNStropheContact.jt;20688;@STATIC;1.0;I;23;Foundation/Foundation.ji;14;TNStropheJID.ji;16;TNStropheGroup.ji;21;TNStropheConnection.ji;15;TNBase64Image.ji;18;TNStropheGlobals.jt;20531;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("TNStropheJID.j",YES);
objj_executeFile("TNStropheGroup.j",YES);
objj_executeFile("TNStropheConnection.j",YES);
objj_executeFile("TNBase64Image.j",YES);
objj_executeFile("TNStropheGlobals.j",YES);
var _1=objj_allocateClassPair(CPObject,"TNStropheContact"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_groups"),new objj_ivar("_messagesQueue"),new objj_ivar("_resources"),new objj_ivar("_statusIcon"),new objj_ivar("_numberOfEvents"),new objj_ivar("_nickname"),new objj_ivar("_nodeName"),new objj_ivar("_subscription"),new objj_ivar("_type"),new objj_ivar("_vCard"),new objj_ivar("_XMPPShow"),new objj_ivar("_XMPPStatus"),new objj_ivar("_avatar"),new objj_ivar("_connection"),new objj_ivar("_JID"),new objj_ivar("_isComposing"),new objj_ivar("_askingVCard"),new objj_ivar("_imageAway"),new objj_ivar("_imageNewError"),new objj_ivar("_imageNewMessage"),new objj_ivar("_imageOffline"),new objj_ivar("_imageOnline"),new objj_ivar("_statusReminder")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("groups"),function(_3,_4){
with(_3){
return _groups;
}
}),new objj_method(sel_getUid("_setGroups:"),function(_5,_6,_7){
with(_5){
_groups=_7;
}
}),new objj_method(sel_getUid("messagesQueue"),function(_8,_9){
with(_8){
return _messagesQueue;
}
}),new objj_method(sel_getUid("setMessagesQueue:"),function(_a,_b,_c){
with(_a){
_messagesQueue=_c;
}
}),new objj_method(sel_getUid("resources"),function(_d,_e){
with(_d){
return _resources;
}
}),new objj_method(sel_getUid("setResources:"),function(_f,_10,_11){
with(_f){
_resources=_11;
}
}),new objj_method(sel_getUid("statusIcon"),function(_12,_13){
with(_12){
return _statusIcon;
}
}),new objj_method(sel_getUid("setStatusIcon:"),function(_14,_15,_16){
with(_14){
_statusIcon=_16;
}
}),new objj_method(sel_getUid("numberOfEvents"),function(_17,_18){
with(_17){
return _numberOfEvents;
}
}),new objj_method(sel_getUid("setNumberOfEvents:"),function(_19,_1a,_1b){
with(_19){
_numberOfEvents=_1b;
}
}),new objj_method(sel_getUid("nickname"),function(_1c,_1d){
with(_1c){
return _nickname;
}
}),new objj_method(sel_getUid("setNickname:"),function(_1e,_1f,_20){
with(_1e){
_nickname=_20;
}
}),new objj_method(sel_getUid("nodeName"),function(_21,_22){
with(_21){
return _nodeName;
}
}),new objj_method(sel_getUid("setNodeName:"),function(_23,_24,_25){
with(_23){
_nodeName=_25;
}
}),new objj_method(sel_getUid("subscription"),function(_26,_27){
with(_26){
return _subscription;
}
}),new objj_method(sel_getUid("setSubscription:"),function(_28,_29,_2a){
with(_28){
_subscription=_2a;
}
}),new objj_method(sel_getUid("type"),function(_2b,_2c){
with(_2b){
return _type;
}
}),new objj_method(sel_getUid("setType:"),function(_2d,_2e,_2f){
with(_2d){
_type=_2f;
}
}),new objj_method(sel_getUid("vCard"),function(_30,_31){
with(_30){
return _vCard;
}
}),new objj_method(sel_getUid("setVCard:"),function(_32,_33,_34){
with(_32){
_vCard=_34;
}
}),new objj_method(sel_getUid("XMPPShow"),function(_35,_36){
with(_35){
return _XMPPShow;
}
}),new objj_method(sel_getUid("setXMPPShow:"),function(_37,_38,_39){
with(_37){
_XMPPShow=_39;
}
}),new objj_method(sel_getUid("XMPPStatus"),function(_3a,_3b){
with(_3a){
return _XMPPStatus;
}
}),new objj_method(sel_getUid("setXMPPStatus:"),function(_3c,_3d,_3e){
with(_3c){
_XMPPStatus=_3e;
}
}),new objj_method(sel_getUid("avatar"),function(_3f,_40){
with(_3f){
return _avatar;
}
}),new objj_method(sel_getUid("setAvatar:"),function(_41,_42,_43){
with(_41){
_avatar=_43;
}
}),new objj_method(sel_getUid("connection"),function(_44,_45){
with(_44){
return _connection;
}
}),new objj_method(sel_getUid("setConnection:"),function(_46,_47,_48){
with(_46){
_connection=_48;
}
}),new objj_method(sel_getUid("JID"),function(_49,_4a){
with(_49){
return _JID;
}
}),new objj_method(sel_getUid("setJID:"),function(_4b,_4c,_4d){
with(_4b){
_JID=_4d;
}
}),new objj_method(sel_getUid("initWithConnection:JID:group:"),function(_4e,_4f,_50,_51,_52){
with(_4e){
if(_4e=objj_msgSendSuper({receiver:_4e,super_class:objj_getClass("TNStropheContact").super_class},"init")){
var _53=objj_msgSend(CPBundle,"bundleForClass:",objj_msgSend(_4e,"class"));
_imageOffline=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_53,"pathForResource:","Offline.png"));
_imageOnline=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_53,"pathForResource:","Available.png"));
_imageBusy=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_53,"pathForResource:","Away.png"));
_imageAway=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_53,"pathForResource:","Idle.png"));
_imageDND=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_53,"pathForResource:","Blocked.png"));
_imageNewMessage=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_53,"pathForResource:","NewMessage.png"));
_imageNewError=objj_msgSend(objj_msgSend(CPImage,"alloc"),"initWithContentsOfFile:",objj_msgSend(_53,"pathForResource:","Error.png"));
_type="contact";
_statusIcon=_imageOffline;
_XMPPShow=TNStropheContactStatusOffline;
_XMPPStatus="Offline";
_connection=_50;
_messagesQueue=objj_msgSend(CPArray,"array");
_numberOfEvents=0;
_isComposing=NO;
_askingVCard=NO;
_resources=objj_msgSend(CPArray,"array");
_JID=_51;
_groups=objj_msgSend(CPArray,"array");
if(_52){
objj_msgSend(_groups,"addObject:",_52);
}
if(!_vCard&&!_askingVCard){
objj_msgSend(_4e,"getVCard");
}
}
return _4e;
}
}),new objj_method(sel_getUid("_didReceivePresence:"),function(_54,_55,_56){
with(_54){
var _57=objj_msgSend(_56,"fromResource"),_58=objj_msgSend(_56,"firstChildWithName:","status");
console.warn("assd "+objj_msgSend(objj_msgSend(_56,"from"),"resource"));
if(objj_msgSend(objj_msgSend(_56,"from"),"resource")){
objj_msgSend(_JID,"setResource:",objj_msgSend(objj_msgSend(_56,"from"),"resource"));
}
if(objj_msgSend(_JID,"resource")&&(objj_msgSend(_JID,"resource")!="")&&!objj_msgSend(_resources,"containsObject:",_57)){
objj_msgSend(_resources,"addObject:",_57);
}
switch(objj_msgSend(_56,"type")){
case "error":
var _59=objj_msgSend(objj_msgSend(_56,"firstChildWithName:","error"),"valueForAttribute:","code");
_XMPPShow=TNStropheContactStatusOffline;
_XMPPStatus="Error code: "+_59;
_statusIcon=_imageNewError;
_statusReminder=_imageNewError;
return NO;
case "unavailable":
objj_msgSend(_resources,"removeObject:",_57);
CPLogConsole("contact become unavailable from resource: "+_57+". Resources left : "+_resources);
if(objj_msgSend(_resources,"count")==0){
_XMPPShow=TNStropheContactStatusOffline;
_statusIcon=_imageOffline;
_statusReminder=_imageOffline;
if(_58){
_XMPPStatus=objj_msgSend(_58,"text");
}else{
_XMPPStatus="Online";
}
}
break;
case "subscribe":
_XMPPStatus="Asking subscribtion";
break;
case "subscribed":
break;
case "unsubscribe":
break;
case "unsubscribed":
_XMPPStatus="Unauthorized";
break;
default:
_XMPPShow=TNStropheContactStatusOnline;
_statusReminder=_imageOnline;
_statusIcon=_imageOnline;
if(objj_msgSend(_56,"firstChildWithName:","show")){
_XMPPShow=objj_msgSend(objj_msgSend(_56,"firstChildWithName:","show"),"text");
switch(_XMPPShow){
case TNStropheContactStatusBusy:
_statusIcon=_imageBusy;
_statusReminder=_imageBusy;
break;
case TNStropheContactStatusAway:
_statusIcon=_imageAway;
_statusReminder=_imageAway;
break;
case TNStropheContactStatusDND:
_statusIcon=_imageDND;
_statusReminder=_imageDND;
break;
}
}
if(_numberOfEvents>0){
_statusIcon=_imageNewMessage;
}
if(_58){
_XMPPStatus=objj_msgSend(_58,"text");
}else{
_XMPPStatus="Online";
}
if(objj_msgSend(_56,"firstChildWithName:","x")&&objj_msgSend(objj_msgSend(_56,"firstChildWithName:","x"),"valueForAttribute:","xmlns")=="vcard-temp:x:update"){
objj_msgSend(_54,"getVCard");
}
break;
}
if(!(objj_msgSend(_56,"firstChildWithName:","x")&&objj_msgSend(objj_msgSend(_56,"firstChildWithName:","x"),"valueForAttribute:","xmlns")=="vcard-temp:x:update")){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheContactPresenceUpdatedNotification,_54);
}
return YES;
}
}),new objj_method(sel_getUid("sendStatus:"),function(_5a,_5b,_5c){
with(_5a){
var _5d=objj_msgSend(TNStropheStanza,"messageTo:withAttributes:",_JID,{"type":"chat"});
objj_msgSend(_5d,"addChildWithName:andAttributes:",_5c,{"xmlns":"http://jabber.org/protocol/chatstates"});
objj_msgSend(_5a,"sendStanza:andRegisterSelector:ofObject:",_5d,sel_getUid("_didSendMessage:"),_5a);
}
}),new objj_method(sel_getUid("sendComposing"),function(_5e,_5f){
with(_5e){
if(_isComposing){
return;
}
objj_msgSend(_5e,"sendStatus:","composing");
_isComposing=YES;
}
}),new objj_method(sel_getUid("sendComposePaused"),function(_60,_61){
with(_60){
objj_msgSend(_60,"sendStatus:","paused");
_isComposing=NO;
}
}),new objj_method(sel_getUid("subscribe"),function(_62,_63){
with(_62){
objj_msgSend(_connection,"send:",objj_msgSend(TNStropheStanza,"presenceTo:withAttributes:bare:",_JID,{"type":"subscribed"},YES));
}
}),new objj_method(sel_getUid("unsubscribe"),function(_64,_65){
with(_64){
objj_msgSend(_connection,"send:",objj_msgSend(TNStropheStanza,"presenceTo:withAttributes:bare:",_JID,{"type":"unsubscribed"},YES));
}
}),new objj_method(sel_getUid("askSubscription"),function(_66,_67){
with(_66){
objj_msgSend(_connection,"send:",objj_msgSend(TNStropheStanza,"presenceTo:withAttributes:bare:",_JID,{"type":"subscribe"},YES));
}
}),new objj_method(sel_getUid("setSubscription:"),function(_68,_69,_6a){
with(_68){
_subcription=_6a;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheContactSubscriptionUpdatedNotification,_68);
}
}),new objj_method(sel_getUid("description"),function(_6b,_6c){
with(_6b){
return _nickname;
}
}),new objj_method(sel_getUid("getVCard"),function(_6d,_6e){
with(_6d){
var uid=objj_msgSend(_connection,"getUniqueId"),_6f=objj_msgSend(TNStropheStanza,"iqTo:withAttributes:bare:",_JID,{"type":"get","id":uid},YES),_70=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_6f,"addChildWithName:andAttributes:","vCard",{"xmlns":"vcard-temp"});
_askingVCard=YES;
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didReceiveVCard:"),_6d,_70);
objj_msgSend(_connection,"send:",_6f);
}
}),new objj_method(sel_getUid("_didReceiveVCard:"),function(_71,_72,_73){
with(_71){
var _74=objj_msgSend(_73,"firstChildWithName:","vCard");
_askingVCard=NO;
if(_74){
_vCard=_74;
if(!_nickname||(_nickname==objj_msgSend(_JID,"node"))){
if(objj_msgSend(_74,"firstChildWithName:","NAME")){
_nickname=objj_msgSend(objj_msgSend(_74,"firstChildWithName:","NAME"),"text");
}else{
_nickname=objj_msgSend(_JID,"node");
}
}
var _75;
if(_75=objj_msgSend(_74,"firstChildWithName:","PHOTO")){
var _76=objj_msgSend(objj_msgSend(_75,"firstChildWithName:","TYPE"),"text"),_77=objj_msgSend(objj_msgSend(_75,"firstChildWithName:","BINVAL"),"text");
_avatar=objj_msgSend(TNBase64Image,"base64ImageWithContentType:data:delegate:",_76,_77,_71);
}else{
_avatar=nil;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheContactVCardReceivedNotification,_71);
}
}
return YES;
}
}),new objj_method(sel_getUid("changeNickname:"),function(_78,_79,_7a){
with(_78){
var _7b=_nickname;
_nickname=_7a;
objj_msgSend(_78,"sendRosterSet");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheContactNicknameUpdatedNotification,_78);
_nickname=_7b;
}
}),new objj_method(sel_getUid("addGroup:"),function(_7c,_7d,_7e){
with(_7c){
if(objj_msgSend(_groups,"containsObject:",_7e)){
return;
}
objj_msgSend(_groups,"addObject:",_7e);
objj_msgSend(_7c,"sendRosterSet");
objj_msgSend(_groups,"removeObject:",_7e);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheContactGroupUpdatedNotification,_7c);
}
}),new objj_method(sel_getUid("removeGroup:"),function(_7f,_80,_81){
with(_7f){
if(!objj_msgSend(_groups,"containsObject:",_81)){
return;
}
objj_msgSend(_groups,"removeObject:",_81);
objj_msgSend(_7f,"sendRosterSet");
objj_msgSend(_groups,"addObject:",_81);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheContactGroupUpdatedNotification,_7f);
}
}),new objj_method(sel_getUid("setGroups:"),function(_82,_83,_84){
with(_82){
var _85=objj_msgSend(_groups,"copy");
_groups=_84;
objj_msgSend(_82,"sendRosterSet");
_groups=_85;
}
}),new objj_method(sel_getUid("sendRosterSet"),function(_86,_87){
with(_86){
var _88=objj_msgSend(TNStropheStanza,"iqWithAttributes:",{"type":"set"});
objj_msgSend(_88,"addChildWithName:andAttributes:","query",{"xmlns":Strophe.NS.ROSTER});
objj_msgSend(_88,"addChildWithName:andAttributes:","item",{"JID":objj_msgSend(_JID,"bare"),"name":_nickname});
for(var i=0;i<objj_msgSend(_groups,"count");i++){
objj_msgSend(_88,"addChildWithName:","group");
objj_msgSend(_88,"addTextNode:",objj_msgSend(objj_msgSend(_groups,"objectAtIndex:",i),"name"));
objj_msgSend(_88,"up");
}
objj_msgSend(_connection,"send:",_88);
}
}),new objj_method(sel_getUid("sendStanza:"),function(_89,_8a,_8b){
with(_89){
objj_msgSend(_89,"sendStanza:withUserInfo:",_8b,nil);
}
}),new objj_method(sel_getUid("sendStanza:withUserInfo:"),function(_8c,_8d,_8e,_8f){
with(_8c){
objj_msgSend(_8e,"setTo:",_JID);
objj_msgSend(_connection,"send:",_8e);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStropheContactStanzaSentNotification,_8c,_8f);
}
}),new objj_method(sel_getUid("sendStanza:andRegisterSelector:ofObject:withSpecificID:userInfo:"),function(_90,_91,_92,_93,_94,_95,_96){
with(_90){
var _97=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_95,"id"),_98=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_92,"stanza",_95,"id"),ret;
objj_msgSend(_92,"setID:",_95);
if(_93&&!_96){
ret=objj_msgSend(_connection,"registerSelector:ofObject:withDict:",_93,_94,_97);
}else{
if(_93&&_96){
ret=objj_msgSend(_connection,"registerSelector:ofObject:withDict:userInfo:",_93,_94,_97,_96);
}
}
objj_msgSend(_90,"sendStanza:withUserInfo:",_92,_98);
return ret;
}
}),new objj_method(sel_getUid("sendStanza:andRegisterSelector:ofObject:"),function(_99,_9a,_9b,_9c,_9d){
with(_99){
return objj_msgSend(_99,"sendStanza:andRegisterSelector:ofObject:withSpecificID:userInfo:",_9b,_9c,_9d,objj_msgSend(_connection,"getUniqueId"),nil);
}
}),new objj_method(sel_getUid("sendStanza:andRegisterSelector:ofObject:withSpecificID:"),function(_9e,_9f,_a0,_a1,_a2,_a3){
with(_9e){
return objj_msgSend(_9e,"sendStanza:andRegisterSelector:ofObject:withSpecificID:userInfo:",_a0,_a1,_a2,_a3,nil);
}
}),new objj_method(sel_getUid("sendStanza:andRegisterSelector:ofObject:userInfo:"),function(_a4,_a5,_a6,_a7,_a8,_a9){
with(_a4){
return objj_msgSend(_a4,"sendStanza:andRegisterSelector:ofObject:withSpecificID:userInfo:",_a6,_a7,_a8,objj_msgSend(_connection,"getUniqueId"),_a9);
}
}),new objj_method(sel_getUid("getMessages"),function(_aa,_ab){
with(_aa){
var _ac=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","message","name",objj_msgSend(_JID,"bare"),"from",{matchBare:true},"options");
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didReceiveMessage:"),_aa,_ac);
}
}),new objj_method(sel_getUid("_didReceiveMessage:"),function(_ad,_ae,_af){
with(_ad){
var _b0=objj_msgSend(CPNotificationCenter,"defaultCenter"),_b1=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_af,"stanza",objj_msgSend(CPDate,"date"),"date");
if(objj_msgSend(_af,"containsChildrenWithName:","composing")){
objj_msgSend(_b0,"postNotificationName:object:userInfo:",TNStropheContactMessageComposing,_ad,_b1);
}
if(objj_msgSend(_af,"containsChildrenWithName:","paused")){
objj_msgSend(_b0,"postNotificationName:object:userInfo:",TNStropheContactMessagePaused,_ad,_b1);
}
if(objj_msgSend(_af,"containsChildrenWithName:","active")){
objj_msgSend(_b0,"postNotificationName:object:userInfo:",TNStropheContactMessageActive,_ad,_b1);
}
if(objj_msgSend(_af,"containsChildrenWithName:","inactive")){
objj_msgSend(_b0,"postNotificationName:object:userInfo:",TNStropheContactMessageInactive,_ad,_b1);
}
if(objj_msgSend(_af,"containsChildrenWithName:","gone")){
objj_msgSend(_b0,"postNotificationName:object:userInfo:",TNStropheContactMessageGone,_ad,_b1);
}
if(objj_msgSend(_af,"containsChildrenWithName:","body")){
_statusIcon=_imageNewMessage;
objj_msgSend(_messagesQueue,"addObject:",_af);
_numberOfEvents++;
objj_msgSend(_b0,"postNotificationName:object:userInfo:",TNStropheContactMessageReceivedNotification,_ad,_b1);
}
return YES;
}
}),new objj_method(sel_getUid("sendMessage:"),function(_b2,_b3,_b4){
with(_b2){
objj_msgSend(_b2,"sendMessage:withType:",_b4,"chat");
}
}),new objj_method(sel_getUid("sendMessage:withType:"),function(_b5,_b6,_b7,_b8){
with(_b5){
var _b9=objj_msgSend(TNStropheStanza,"messageWithAttributes:",{"type":_b8});
objj_msgSend(_b9,"addChildWithName:","body");
objj_msgSend(_b9,"addTextNode:",_b7);
objj_msgSend(_b5,"sendStanza:",_b9);
}
}),new objj_method(sel_getUid("popMessagesQueue"),function(_ba,_bb){
with(_ba){
if(objj_msgSend(_messagesQueue,"count")==0){
return;
}
var _bc=objj_msgSend(_messagesQueue,"objectAtIndex:",0);
_numberOfEvents--;
if(_numberOfEvents===0){
_statusIcon=_statusReminder;
}
objj_msgSend(_messagesQueue,"removeObjectAtIndex:",0);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheContactMessageTreatedNotification,_ba);
return _bc;
}
}),new objj_method(sel_getUid("freeMessagesQueue"),function(_bd,_be){
with(_bd){
_numberOfEvents=0;
_statusIcon=_statusReminder;
objj_msgSend(_messagesQueue,"removeAllObjects");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheContactMessageTreatedNotification,_bd);
}
}),new objj_method(sel_getUid("imageDidLoad:"),function(_bf,_c0,_c1){
with(_bf){
objj_msgSend(_c1,"setDelegate:",nil);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheContactVCardReceivedNotification,_bf);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("contactWithConnection:JID:group:"),function(_c2,_c3,_c4,_c5,_c6){
with(_c2){
return objj_msgSend(objj_msgSend(TNStropheContact,"alloc"),"initWithConnection:JID:group:",_c4,_c5,_c6);
}
})]);
var _1=objj_getClass("TNStropheContact");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"TNStropheContact\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_c7,_c8,_c9){
with(_c7){
_c7=objj_msgSendSuper({receiver:_c7,super_class:objj_getClass("TNStropheContact").super_class},"initWithCoder:",_c9);
if(_c7){
_JID=objj_msgSend(_c9,"decodeObjectForKey:","_JID");
_nodeName=objj_msgSend(_c9,"decodeObjectForKey:","_nodeName");
_groups=objj_msgSend(_c9,"decodeObjectForKey:","_groups");
_nickname=objj_msgSend(_c9,"decodeObjectForKey:","_nickname");
_XMPPStatus=objj_msgSend(_c9,"decodeObjectForKey:","_XMPPStatus");
_resources=objj_msgSend(_c9,"decodeObjectForKey:","_resources");
_XMPPShow=objj_msgSend(_c9,"decodeObjectForKey:","_XMPPShow");
_statusIcon=objj_msgSend(_c9,"decodeObjectForKey:","_statusIcon");
_type=objj_msgSend(_c9,"decodeObjectForKey:","_type");
_vCard=objj_msgSend(_c9,"decodeObjectForKey:","_vCard");
_messageQueue=objj_msgSend(_c9,"decodeObjectForKey:","_messagesQueue");
_numberOfEvents=objj_msgSend(_c9,"decodeObjectForKey:","_numberOfEvents");
}
return _c7;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_ca,_cb,_cc){
with(_ca){
objj_msgSend(_cc,"encodeObject:forKey:",_JID,"_JID");
objj_msgSend(_cc,"encodeObject:forKey:",_nodeName,"_nodeName");
objj_msgSend(_cc,"encodeObject:forKey:",_groups,"_groups");
objj_msgSend(_cc,"encodeObject:forKey:",_nickname,"_nickname");
objj_msgSend(_cc,"encodeObject:forKey:",_XMPPStatus,"_XMPPStatus");
objj_msgSend(_cc,"encodeObject:forKey:",_XMPPShow,"_XMPPShow");
objj_msgSend(_cc,"encodeObject:forKey:",_type,"_type");
objj_msgSend(_cc,"encodeObject:forKey:",_statusIcon,"_statusIcon");
objj_msgSend(_cc,"encodeObject:forKey:",_messagesQueue,"_messagesQueue");
objj_msgSend(_cc,"encodeObject:forKey:",_numberOfEvents,"_numberOfEvents");
if(_resources){
objj_msgSend(_cc,"encodeObject:forKey:",_resources,"_resources");
}
if(_vCard){
objj_msgSend(_cc,"encodeObject:forKey:",_vCard,"_vCard");
}
}
})]);
p;18;TNStropheGlobals.jt;6185;@STATIC;1.0;t;6166;
TNStropheConnectionStatusConnecting="TNStropheConnectionStatusConnecting";
TNStropheConnectionStatusConnected="TNStropheConnectionStatusConnected";
TNStropheConnectionStatusConnectionFailure="TNStropheConnectionStatusConnectionFailure";
TNStropheConnectionStatusAuthenticating="TNStropheConnectionStatusAuthenticating";
TNStropheConnectionStatusAuthFailure="TNStropheConnectionStatusAuthFailure";
TNStropheConnectionStatusWillDisconnect="TNStropheConnectionStatusWillDisconnect";
TNStropheConnectionStatusDisconnecting="TNStropheConnectionStatusDisconnecting";
TNStropheConnectionStatusDisconnected="TNStropheConnectionStatusDisconnected";
TNStropheConnectionStatusError="TNStropheConnectionStatusError";
TNStropheConnectionStatusDidChangeNotification="TNStropheConnectionStatusDidChangeNotification";
TNStropheClientPresenceUpdatedNotification="TNStropheClientPresenceUpdatedNotification";
TNStropheClientVCardReceived="TNStropheClientVCardReceived";
TNStropheContactStatusAway="away";
TNStropheContactStatusBusy="xa";
TNStropheContactStatusDND="dnd";
TNStropheContactStatusOffline="offline";
TNStropheContactStatusOnline="online";
TNStropheContactNicknameUpdatedNotification="TNStropheContactNicknameUpdatedNotification";
TNStropheContactGroupUpdatedNotification="TNStropheContactGroupUpdatedNotification";
TNStropheContactPresenceUpdatedNotification="TNStropheContactPresenceUpdatedNotification";
TNStropheContactSubscriptionUpdatedNotification="TNStropheContactSubscriptionUpdatedNotification";
TNStropheContactVCardReceivedNotification="TNStropheContactVCardReceivedNotification";
TNStropheContactMessageReceivedNotification="TNStropheContactMessageReceivedNotification";
TNStropheContactMessageTreatedNotification="TNStropheContactMessageTreatedNotification";
TNStropheContactMessageSentNotification="TNStropheContactMessageSentNotification";
TNStropheContactStanzaSentNotification="TNStropheContactStanzaSentNotification";
TNStropheContactMessageComposing="TNStropheContactMessageComposing";
TNStropheContactMessagePaused="TNStropheContactMessagePaused";
TNStropheContactMessageActive="TNStropheContactMessageActive";
TNStropheContactMessageInactive="TNStropheContactMessageInactive";
TNStropheContactMessageGone="TNStropheContactMessageGone";
TNStropheRosterRetrievedNotification="TNStropheRosterRetrievedNotification";
TNStropheRosterPushNotification="TNStropheRosterPushNotification";
TNStropheRosterPushAddedContactNotification="TNStropheRosterPushAddedContactNotification";
TNStropheRosterPushUpdatedContactNotification="TNStropheRosterPushUpdatedContactNotification";
TNStropheRosterPushRemovedContactNotification="TNStropheRosterPushRemovedContactNotification";
TNStropheRosterAddedContactNotification="TNStropheRosterAddedContactNotification";
TNStropheRosterRemovedContactNotification="TNStropheRosterRemovedContactNotification";
TNStropheRosterAddedGroupNotification="TNStropheRosterAddedGroupNotification";
TNStropheRosterRemovedGroupNotification="TNStropheRosterRemovedGroupNotification";
TNStropheGroupRenamedNotification="TNStropheGroupRenamed";
TNStropheGroupRemovedNotification="TNStropheGroupRemoved";
TNStrophePubSubVarTitle="pubsub#title";
TNStrophePubSubVarDeliverNotification="pubsub#deliver_notifications";
TNStrophePubSubVarDeliverPayloads="pubsub#deliver_payloads";
TNStrophePubSubVarPersistItems="pubsub#persist_items";
TNStrophePubSubVarMaxItems="pubsub#max_items";
TNStrophePubSubVarItemExpire="pubsub#item_expire";
TNStrophePubSubVarAccessModel="pubsub#access_model";
TNStrophePubSubVarRosterGroupAllowed="pubsub#roster_groups_allowed";
TNStrophePubSubVarPublishModel="pubsub#publish_model";
TNStrophePubSubVarPurgeOffline="pubsub#purge_offline";
TNStrophePubSubVarSendLastPublishedItem="pubsub#send_last_published_item";
TNStrophePubSubVarPresenceBasedDelivery="pubsub#presence_based_delivery";
TNStrophePubSubVarNotificationType="pubsub#notification_type";
TNStrophePubSubVarNotifyConfig="pubsub#notify_config";
TNStrophePubSubVarNotifyDelete="pubsub#notify_delete";
TNStrophePubSubVarNotifyRectract="pubsub#notify_retract";
TNStrophePubSubVarNotifySub="pubsub#notify_sub";
TNStrophePubSubVarMaxPayloadSize="pubsub#max_payload_size";
TNStrophePubSubVarType="pubsub#type";
TNStrophePubSubVarBodyXSLT="pubsub#body_xslt";
TNStrophePubSubVarAccessModelOpen="open";
TNStrophePubSubVarAccessModelRoster="roster";
TNStrophePubSubVarAccessModelAuthorize="authorize";
TNStrophePubSubVarAccessModelWhitelist="whitelist";
TNStrophePubSubNodeRetrievedNotification="TNStrophePubSubNodeRetrievedNotification";
TNStrophePubSubNodeCreatedNotification="TNStrophePubSubNodeCreatedNotification";
TNStrophePubSubNodeDeletedNotification="TNStrophePubSubNodeDeletedNotification";
TNStrophePubSubNodeConfiguredNotification="TNStrophePubSubNodeConfiguredNotification";
TNStrophePubSubItemPublishedNotification="TNStrophePubSubItemPublishedNotification";
TNStrophePubSubItemRetractedNotification="TNStrophePubSubItemRetractedNotification";
TNStrophePubSubNodeSubscribedNotification="TNStrophePubSubNodeSubscribedNotification";
TNStrophePubSubNodeUnsubscribedNotification="TNStrophePubSubNodeUnsubscribedNotification";
TNStrophePubSubNodeEventNotification="TNStrophePubSubNodeEventNotification";
TNStrophePubSubSubscriptionsRetrievedNotification="TNStrophePubSubSubscriptionsReceivedNotification";
TNStrophePubSubNoOldSubscriptionsLeftNotification="TNStrophePubSubNoOldSubscriptionsLeft";
TNStrophePubSubBatchSubscribeComplete="TNStrophePubSubBatchSubscribeComplete";
TNStrophePubSubBatchUnsubscribeComplete="TNStrophePubSubBatchUnsubscribeComplete";
TNStropheMUCRosterWasUpdatedNotification="TNStropheMUCRosterWasUpdatedNotification";
TNStropheMUCConversationWasUpdatedNotification="TNStropheMUCConversationWasUpdatedNotification";
TNStropheMUCSubjectWasUpdatedNotification="TNStropheMUCSubjectWasUpdatedNotification";
TNStropheMUCDataReceivedNotification="TNStropheMUCDataReceivedNotification";
TNStropheMUCPrivateMessageWasReceivedNotification="TNStropheMUCPrivateMessageWasReceivedNotification";
TNStropheMUCContactJoinedNotification="TNStropheMUCContactJoinedNotification";
TNStropheMUCContactLeftNotification="TNStropheMUCContactLeftNotification";
p;16;TNStropheGroup.jt;3121;@STATIC;1.0;I;23;Foundation/Foundation.ji;18;TNStropheGlobals.jt;3051;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("TNStropheGlobals.j",YES);
var _1=objj_allocateClassPair(CPObject,"TNStropheGroup"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_contacts"),new objj_ivar("_name")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("contacts"),function(_3,_4){
with(_3){
return _contacts;
}
}),new objj_method(sel_getUid("_setContacts:"),function(_5,_6,_7){
with(_5){
_contacts=_7;
}
}),new objj_method(sel_getUid("name"),function(_8,_9){
with(_8){
return _name;
}
}),new objj_method(sel_getUid("_setName:"),function(_a,_b,_c){
with(_a){
_name=_c;
}
}),new objj_method(sel_getUid("initWithName:"),function(_d,_e,_f){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("TNStropheGroup").super_class},"init")){
_contacts=objj_msgSend(CPArray,"array");
_name=_f;
}
return _d;
}
}),new objj_method(sel_getUid("description"),function(_10,_11){
with(_10){
return _name;
}
}),new objj_method(sel_getUid("changeName:"),function(_12,_13,_14){
with(_12){
for(var i=0;i<objj_msgSend(_12,"count");i++){
var _15=objj_msgSend(_contacts,"objectAtIndex:",i),_16=objj_msgSend(objj_msgSend(_15,"groups"),"copy");
objj_msgSend(_16,"removeObject:",_12);
objj_msgSend(_16,"addObject:",objj_msgSend(TNStropheGroup,"stropheGroupWithName:",_14));
objj_msgSend(_15,"setGroups:",_16);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheGroupRenamedNotification,_12);
}
}),new objj_method(sel_getUid("addContact:"),function(_17,_18,_19){
with(_17){
if(objj_msgSend(_19,"class")!=TNStropheContact){
objj_msgSend(CPException,"raise:reason:","Invalid Object","You can only add TNStropheContacts");
}
objj_msgSend(objj_msgSend(_19,"groups"),"addObject:",_17);
objj_msgSend(_contacts,"addObject:",_19);
}
}),new objj_method(sel_getUid("removeContact:"),function(_1a,_1b,_1c){
with(_1a){
objj_msgSend(objj_msgSend(_1c,"groups"),"removeObject:",_1a);
objj_msgSend(_contacts,"removeObject:",_1c);
}
}),new objj_method(sel_getUid("count"),function(_1d,_1e){
with(_1d){
return objj_msgSend(_contacts,"count");
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("stropheGroupWithName:"),function(_1f,_20,_21){
with(_1f){
return objj_msgSend(objj_msgSend(TNStropheGroup,"alloc"),"initWithName:",_21);
}
})]);
var _1=objj_getClass("TNStropheGroup");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"TNStropheGroup\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_22,_23,_24){
with(_22){
_22=objj_msgSendSuper({receiver:_22,super_class:objj_getClass("TNStropheGroup").super_class},"initWithCoder:",_24);
if(_22){
_contacts=objj_msgSend(_24,"decodeObjectForKey:","_contacts");
_name=objj_msgSend(_24,"decodeObjectForKey:","_name");
}
return _22;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_25,_26,_27){
with(_25){
objj_msgSend(_27,"encodeObject:forKey:",_contacts,"_contacts");
objj_msgSend(_27,"encodeObject:forKey:",_name,"_name");
}
})]);
p;19;TNStropheIMClient.jt;4024;@STATIC;1.0;I;23;Foundation/Foundation.ji;21;TNStropheConnection.ji;14;TNStropheJID.ji;17;TNStropheStanza.ji;25;Resources/Strophe/sha1.jsi;18;TNStropheGlobals.ji;17;TNStropheRoster.ji;17;TNStropheClient.jt;3813;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("TNStropheConnection.j",YES);
objj_executeFile("TNStropheJID.j",YES);
objj_executeFile("TNStropheStanza.j",YES);
objj_executeFile("Resources/Strophe/sha1.js",YES);
objj_executeFile("TNStropheGlobals.j",YES);
objj_executeFile("TNStropheRoster.j",YES);
objj_executeFile("TNStropheClient.j",YES);
var _1=objj_allocateClassPair(TNStropheClient,"TNStropheIMClient"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_roster")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("roster"),function(_3,_4){
with(_3){
return _roster;
}
}),new objj_method(sel_getUid("_setRoster:"),function(_5,_6,_7){
with(_5){
_roster=_7;
}
}),new objj_method(sel_getUid("initWithService:rosterClass:"),function(_8,_9,_a,_b){
with(_8){
if(_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("TNStropheIMClient").super_class},"initWithService:",_a)){
if(!_b){
_b=TNStropheRoster;
}
_roster=objj_msgSend(_b,"rosterWithConnection:",_connection);
}
return _8;
}
}),new objj_method(sel_getUid("initWithService:JID:password:rosterClass:"),function(_c,_d,_e,_f,_10,_11){
with(_c){
if(_c=objj_msgSend(_c,"initWithService:rosterClass:",_e,_11)){
_JID=_f;
_password=_10;
}
return _c;
}
}),new objj_method(sel_getUid("onStropheConnected:"),function(_12,_13,_14){
with(_12){
objj_msgSend(_roster,"getRoster");
objj_msgSendSuper({receiver:_12,super_class:objj_getClass("TNStropheIMClient").super_class},"onStropheConnected:",_14);
}
}),new objj_method(sel_getUid("onStropheConnectFail:"),function(_15,_16,_17){
with(_15){
objj_msgSend(_roster,"clear");
objj_msgSendSuper({receiver:_15,super_class:objj_getClass("TNStropheIMClient").super_class},"onStropheConnectFail:",_17);
}
}),new objj_method(sel_getUid("onStropheDisconnected:"),function(_18,_19,_1a){
with(_18){
objj_msgSend(_roster,"clear");
objj_msgSendSuper({receiver:_18,super_class:objj_getClass("TNStropheIMClient").super_class},"onStropheDisconnected:",_1a);
}
}),new objj_method(sel_getUid("onStropheError:"),function(_1b,_1c,_1d){
with(_1b){
objj_msgSend(_roster,"clear");
objj_msgSendSuper({receiver:_1b,super_class:objj_getClass("TNStropheIMClient").super_class},"onStropheError:",_1d);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("IMClientWithService:"),function(_1e,_1f,_20){
with(_1e){
return objj_msgSend(objj_msgSend(TNStropheIMClient,"alloc"),"initWithService:",_20);
}
}),new objj_method(sel_getUid("IMClientWithService:rosterClass:"),function(_21,_22,_23,_24){
with(_21){
return objj_msgSend(objj_msgSend(TNStropheIMClient,"alloc"),"initWithService:rosterClass:",_23,_24);
}
}),new objj_method(sel_getUid("IMClientWithService:JID:password:"),function(_25,_26,_27,_28,_29){
with(_25){
return objj_msgSend(objj_msgSend(TNStropheIMClient,"alloc"),"initWithService:JID:password:",_27,_28,_29);
}
}),new objj_method(sel_getUid("IMClientWithService:JID:password:rosterClass:"),function(_2a,_2b,_2c,_2d,_2e,_2f){
with(_2a){
return objj_msgSend(objj_msgSend(TNStropheIMClient,"alloc"),"initWithService:JID:password:rosterClass:",_2c,_2d,_2e,_2f);
}
})]);
var _1=objj_getClass("TNStropheClient");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"TNStropheClient\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_30,_31,_32){
with(_30){
_30=objj_msgSendSuper({receiver:_30,super_class:objj_getClass("TNStropheClient").super_class},"initWithCoder:",_32);
if(_30){
_roster=objj_msgSend(_32,"decodeObjectForKey:","_roster");
}
return _30;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_33,_34,_35){
with(_33){
objj_msgSendSuper({receiver:_33,super_class:objj_getClass("TNStropheClient").super_class},"encodeWithCoder:",_35);
objj_msgSend(_35,"encodeObject:forKey:",_roster,"_roster");
}
})]);
p;14;TNStropheJID.jt;5681;@STATIC;1.0;I;23;Foundation/Foundation.jt;5634;
objj_executeFile("Foundation/Foundation.j",NO);
TNStropheJIDExceptionJID="TNStropheJIDExceptionJID";
var _1=objj_allocateClassPair(CPObject,"TNStropheJID"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_isServer"),new objj_ivar("_domain"),new objj_ivar("_node"),new objj_ivar("_resource")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("isServer"),function(_3,_4){
with(_3){
return _isServer;
}
}),new objj_method(sel_getUid("_setIsServer:"),function(_5,_6,_7){
with(_5){
_isServer=_7;
}
}),new objj_method(sel_getUid("domain"),function(_8,_9){
with(_8){
return _domain;
}
}),new objj_method(sel_getUid("setDomain:"),function(_a,_b,_c){
with(_a){
_domain=_c;
}
}),new objj_method(sel_getUid("node"),function(_d,_e){
with(_d){
return _node;
}
}),new objj_method(sel_getUid("setNode:"),function(_f,_10,_11){
with(_f){
_node=_11;
}
}),new objj_method(sel_getUid("resource"),function(_12,_13){
with(_12){
return _resource;
}
}),new objj_method(sel_getUid("setResource:"),function(_14,_15,_16){
with(_14){
_resource=_16;
}
}),new objj_method(sel_getUid("initWithNode:domain:resource:"),function(_17,_18,_19,_1a,_1b){
with(_17){
if(_17=objj_msgSendSuper({receiver:_17,super_class:objj_getClass("TNStropheJID").super_class},"init")){
_node=_19;
_domain=_1a;
_resource=_1b;
_isServer=(!_1a&&!_1b);
}
return _17;
}
}),new objj_method(sel_getUid("initWithNode:domain:"),function(_1c,_1d,_1e,_1f){
with(_1c){
return objj_msgSend(_1c,"initWithNode:domain:resource:",_1e,_1f,nil);
}
}),new objj_method(sel_getUid("initWithString:"),function(_20,_21,_22){
with(_20){
if(!_22){
return;
}
var _23=_22.split("@")[0],_24,_25;
if(_22.indexOf("@")!=-1){
_24=_22.split("@")[1].split("/")[0],_25=_22.split("/")[1];
}
if(!_23){
objj_msgSend(CPException,"raise:reason:",TNStropheJIDExceptionJID,_22+" is not a valid JID");
}
return objj_msgSend(_20,"initWithNode:domain:resource:",_23,_24,_25);
}
}),new objj_method(sel_getUid("bare"),function(_26,_27){
with(_26){
if(_domain){
return _node+"@"+_domain;
}else{
return _node;
}
}
}),new objj_method(sel_getUid("setBare:"),function(_28,_29,_2a){
with(_28){
var _2b=_2a.split("@")[0],_2c=_2a.split("@")[1].split("/")[0];
if(!_2b||!_2c){
objj_msgSend(CPException,"raise:reason:",TNStropheJIDExceptionJID,_2a+" is not a valid JID");
}
_node=_2b;
_domain=_2c;
}
}),new objj_method(sel_getUid("full"),function(_2d,_2e){
with(_2d){
if(_resource){
return objj_msgSend(_2d,"bare")+"/"+_resource;
}else{
return objj_msgSend(_2d,"bare");
}
}
}),new objj_method(sel_getUid("setFull:"),function(_2f,_30,_31){
with(_2f){
objj_msgSend(_2f,"setBare:",_31);
var _32=_31.split("/")[1];
if(!_32){
objj_msgSend(CPException,"raise:reason:",TNStropheJIDExceptionJID,_31+" is not a valid JID");
}
_resource=_32;
}
}),new objj_method(sel_getUid("description"),function(_33,_34){
with(_33){
return objj_msgSend(_33,"stringValue");
}
}),new objj_method(sel_getUid("stringValue"),function(_35,_36){
with(_35){
return objj_msgSend(_35,"full");
}
}),new objj_method(sel_getUid("uppercaseString"),function(_37,_38){
with(_37){
return objj_msgSend(objj_msgSend(_37,"stringValue"),"uppercaseString");
}
}),new objj_method(sel_getUid("lowercaseString"),function(_39,_3a){
with(_39){
return objj_msgSend(objj_msgSend(_39,"stringValue"),"lowercaseString");
}
}),new objj_method(sel_getUid("equals:"),function(_3b,_3c,_3d){
with(_3b){
return objj_msgSend(_3b,"fullEquals:",_3d);
}
}),new objj_method(sel_getUid("fullEquals:"),function(_3e,_3f,_40){
with(_3e){
return (objj_msgSend(_3e,"bareEquals:",_40)&&(objj_msgSend(objj_msgSend(_40,"resource"),"uppercaseString")===objj_msgSend(objj_msgSend(_3e,"resource"),"uppercaseString")));
}
}),new objj_method(sel_getUid("bareEquals:"),function(_41,_42,_43){
with(_41){
return ((objj_msgSend(objj_msgSend(_43,"node"),"uppercaseString")===objj_msgSend(objj_msgSend(_41,"node"),"uppercaseString"))&&(objj_msgSend(objj_msgSend(_43,"domain"),"uppercaseString")===objj_msgSend(objj_msgSend(_41,"domain"),"uppercaseString")));
}
}),new objj_method(sel_getUid("compare:"),function(_44,_45,_46){
with(_44){
var _47=objj_msgSend(_44,"stringValue"),_48=objj_msgSend(_46,"stringValue");
return objj_msgSend(_47,"compare:",_48);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("stropheJIDWithNode:domain:resource:"),function(_49,_4a,_4b,_4c,_4d){
with(_49){
return objj_msgSend(objj_msgSend(TNStropheJID,"alloc"),"initWithNode:domain:resource:",_4b,_4c,_4d);
}
}),new objj_method(sel_getUid("stropheJIDWithNode:domain:"),function(_4e,_4f,_50,_51){
with(_4e){
return objj_msgSend(objj_msgSend(TNStropheJID,"alloc"),"initWithNode:domain:",_50,_51);
}
}),new objj_method(sel_getUid("stropheJIDWithString:"),function(_52,_53,_54){
with(_52){
return objj_msgSend(objj_msgSend(TNStropheJID,"alloc"),"initWithString:",_54);
}
})]);
var _1=objj_getClass("TNStropheJID");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"TNStropheJID\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_55,_56,_57){
with(_55){
if(_55=objj_msgSendSuper({receiver:_55,super_class:objj_getClass("TNStropheJID").super_class},"init")){
_node=objj_msgSend(_57,"decodeObjectForKey:","_node");
_domain=objj_msgSend(_57,"decodeObjectForKey:","_domain");
_resource=objj_msgSend(_57,"decodeObjectForKey:","_resource");
}
return _55;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_58,_59,_5a){
with(_58){
objj_msgSend(_5a,"encodeObject:forKey:",_node,"_node");
if(_domain){
objj_msgSend(_5a,"encodeObject:forKey:",_domain,"_domain");
}
if(_resource){
objj_msgSend(_5a,"encodeObject:forKey:",_resource,"_resource");
}
}
})]);
p;17;TNStropheRoster.jt;14219;@STATIC;1.0;I;23;Foundation/Foundation.ji;14;TNStropheJID.ji;21;TNStropheRosterBase.jt;14126;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("TNStropheJID.j",YES);
objj_executeFile("TNStropheRosterBase.j",YES);
var _1=objj_allocateClassPair(TNStropheRosterBase,"TNStropheRoster"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_groups"),new objj_ivar("_pendingPresence")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("groups"),function(_3,_4){
with(_3){
return _groups;
}
}),new objj_method(sel_getUid("_setGroups:"),function(_5,_6,_7){
with(_5){
_groups=_7;
}
}),new objj_method(sel_getUid("pendingPresence"),function(_8,_9){
with(_8){
return _pendingPresence;
}
}),new objj_method(sel_getUid("_setPendingPresence:"),function(_a,_b,_c){
with(_a){
_pendingPresence=_c;
}
}),new objj_method(sel_getUid("initWithConnection:"),function(_d,_e,_f){
with(_d){
if(_d=objj_msgSendSuper({receiver:_d,super_class:objj_getClass("TNStropheRoster").super_class},"initWithConnection:",_f)){
_groups=objj_msgSend(CPArray,"arrayWithObject:",_defaultGroup);
_pendingPresence=objj_msgSend(CPDictionary,"dictionary");
var _10=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","iq","name",Strophe.NS.ROSTER,"namespace","set","type"),_11=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","presence","name",objj_msgSend(objj_msgSend(_connection,"JID"),"bare"),"to");
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didReceiveRosterPush:"),_d,_10);
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didReceivePresence:"),_d,_11);
}
return _d;
}
}),new objj_method(sel_getUid("clear"),function(_12,_13){
with(_12){
objj_msgSend(_groups,"removeAllObjects");
objj_msgSend(_pendingPresence,"removeAllObjects");
objj_msgSendSuper({receiver:_12,super_class:objj_getClass("TNStropheRoster").super_class},"clear");
}
}),new objj_method(sel_getUid("getRoster"),function(_14,_15){
with(_14){
var uid=objj_msgSend(_connection,"getUniqueIdWithSuffix:","roster"),_16=objj_msgSend(TNStropheStanza,"iqWithAttributes:",{"id":uid,"type":"get"}),_17=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_16,"addChildWithName:andAttributes:","query",{"xmlns":Strophe.NS.ROSTER});
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didReceiveRosterResult:"),_14,_17);
objj_msgSend(_connection,"send:",_16);
}
}),new objj_method(sel_getUid("_didReceiveRosterResult:"),function(_18,_19,_1a){
with(_18){
var _1b=objj_msgSend(_1a,"childrenWithName:","item");
for(var i=0;i<objj_msgSend(_1b,"count");i++){
var _1c=objj_msgSend(_1b,"objectAtIndex:",i),_1d=objj_msgSend(_1c,"valueForAttribute:","subscription"),_1e=objj_msgSend(CPArray,"arrayWithObjects:","none","to","from","both");
if(!_1d||!objj_msgSend(_1e,"containsObject:",_1d)){
objj_msgSend(_1c,"setValue:forAttribute:","none","subscription");
}
objj_msgSend(_18,"_addContactFromRosterItem:",_1c);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheRosterRetrievedNotification,_18);
return NO;
}
}),new objj_method(sel_getUid("_didReceiveRosterPush:"),function(_1f,_20,_21){
with(_1f){
var _22=objj_msgSend(_21,"firstChildWithName:","item"),_23=objj_msgSend(TNStropheJID,"stropheJIDWithString:",objj_msgSend(_22,"valueForAttribute:","jid")),_24=objj_msgSend(_22,"valueForAttribute:","subscription"),_25=objj_msgSend(CPArray,"arrayWithObjects:","none","to","from","both","remove"),_26=objj_msgSend(TNStropheStanza,"iqTo:withAttributes:",objj_msgSend(_21,"from"),{"id":objj_msgSend(_21,"ID"),"type":"result"}),_27;
if(objj_msgSend(_21,"from")&&objj_msgSend(_21,"from")!=objj_msgSend(objj_msgSend(_connection,"JID"),"bare")){
return;
}
objj_msgSend(_connection,"send:",_26);
if(!_24||!objj_msgSend(_25,"containsObject:",_24)){
objj_msgSend(_22,"setValue:forAttribute:","none","subscription");
}
if(objj_msgSend(_1f,"containsJID:",_23)){
_27=objj_msgSend(_1f,"_updateContactFromRosterItem:",_22);
}else{
_27=objj_msgSend(_1f,"_addContactFromRosterItem:",_22);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStropheRosterPushAddedContactNotification,_1f,_27);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheRosterPushNotification,_1f);
return YES;
}
}),new objj_method(sel_getUid("_didReceivePresence:"),function(_28,_29,_2a){
with(_28){
if(objj_msgSend(_2a,"type")==="subscribe"){
if(objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("roster:receiveSubscriptionRequest:"))){
objj_msgSend(_delegate,"roster:receiveSubscriptionRequest:",_28,_2a);
}
}else{
if(objj_msgSend(_28,"containsJID:",objj_msgSend(_2a,"from"))){
objj_msgSend(objj_msgSend(_28,"contactWithJID:",objj_msgSend(_2a,"from")),"_didReceivePresence:",_2a);
}else{
var _2b=objj_msgSend(_2a,"fromBare");
if(!objj_msgSend(_pendingPresence,"containsKey:",_2b)){
objj_msgSend(_pendingPresence,"setValue:forKey:",objj_msgSend(CPArray,"array"),_2b);
}
objj_msgSend(objj_msgSend(_pendingPresence,"valueForKey:",_2b),"addObject:",_2a);
}
}
return YES;
}
}),new objj_method(sel_getUid("pendingPresenceForJID:"),function(_2c,_2d,_2e){
with(_2c){
return objj_msgSend(_pendingPresence,"valueForKey:",objj_msgSend(_2e,"bare"));
}
}),new objj_method(sel_getUid("addGroup:"),function(_2f,_30,_31){
with(_2f){
objj_msgSend(_groups,"addObject:",_31);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheRosterAddedGroupNotification,_31);
return _31;
}
}),new objj_method(sel_getUid("addGroupWithName:"),function(_32,_33,_34){
with(_32){
if(objj_msgSend(_32,"containsGroupWithName:",_34)){
return;
}
return objj_msgSend(_32,"addGroup:",objj_msgSend(TNStropheGroup,"stropheGroupWithName:",_34));
}
}),new objj_method(sel_getUid("removeGroup:"),function(_35,_36,_37){
with(_35){
objj_msgSend(_groups,"removeObject:",_37);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStropheRosterRemovedGroupNotification,_37);
}
}),new objj_method(sel_getUid("containsGroup:"),function(_38,_39,_3a){
with(_38){
return objj_msgSend(_groups,"containsObject:",_3a);
}
}),new objj_method(sel_getUid("containsGroupWithName:"),function(_3b,_3c,_3d){
with(_3b){
return objj_msgSend(_3b,"containsGroup:",objj_msgSend(_3b,"groupWithName:",_3d));
}
}),new objj_method(sel_getUid("groupWithName:"),function(_3e,_3f,_40){
with(_3e){
for(var i=0;i<objj_msgSend(_groups,"count");i++){
var _41=objj_msgSend(_groups,"objectAtIndex:",i);
if(objj_msgSend(_41,"name")==_40){
return _41;
}
}
return;
}
}),new objj_method(sel_getUid("groupWithName:orCreate:"),function(_42,_43,_44,_45){
with(_42){
var _46=objj_msgSend(_42,"groupWithName:",_44);
if(_45&&!_46){
return objj_msgSend(_42,"addGroupWithName:",_44);
}
return _46;
}
}),new objj_method(sel_getUid("groupsOfContact:"),function(_47,_48,_49){
with(_47){
return objj_msgSend(contact,"groups");
}
}),new objj_method(sel_getUid("populatedGroupsCount"),function(_4a,_4b){
with(_4a){
return objj_msgSend(objj_msgSend(_4a,"populatedGroups"),"count");
}
}),new objj_method(sel_getUid("populatedGroups"),function(_4c,_4d){
with(_4c){
var _4e=objj_msgSend(CPArray,"array");
for(var i=0;i<objj_msgSend(_groups,"count");i++){
var _4f=objj_msgSend(_groups,"objectAtIndex:",i);
if(objj_msgSend(_4f,"count")>0){
objj_msgSend(_4e,"addObject:",_4f);
}
}
return _4e;
}
}),new objj_method(sel_getUid("addContact:withName:inGroupWithName:"),function(_50,_51,_52,_53,_54){
with(_50){
if(objj_msgSend(_50,"containsJID:",_52)){
return;
}
if(!_53){
_53=objj_msgSend(_52,"node");
}
if(!_54){
_54="General";
}
var uid=objj_msgSend(_connection,"getUniqueId"),_55=objj_msgSend(TNStropheStanza,"iqWithAttributes:",{"type":"set","id":uid}),_56=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id"),_57=objj_msgSend(_50,"groupWithName:orCreate:",_54,YES),_58=objj_msgSend(TNStropheContact,"contactWithConnection:JID:group:",_connection,_52,_57);
objj_msgSend(_58,"setNickname:",_53);
objj_msgSend(_connection,"registerSelector:ofObject:withDict:userInfo:",sel_getUid("_didAddContact:userInfo:"),_50,_56,_52);
objj_msgSend(_58,"sendRosterSet");
}
}),new objj_method(sel_getUid("_didAddContact:userInfo:"),function(_59,_5a,_5b,_5c){
with(_59){
if(objj_msgSend(_5b,"type")==="result"){
CPLog.debug("Contact with JID "+_5c+" was added to roster!");
}else{
CPLog.error("Error adding contact with JID "+_5c+" to roster!");
}
return NO;
}
}),new objj_method(sel_getUid("_addContactFromRosterItem:"),function(_5d,_5e,_5f){
with(_5d){
var _60=objj_msgSend(TNStropheJID,"stropheJIDWithString:",objj_msgSend(_5f,"valueForAttribute:","jid"));
if(objj_msgSend(_60,"bareEquals:",objj_msgSend(_connection,"JID"))){
CPLog.warn("Cannot add: jid is the current account JID "+_60);
return;
}
var _61=objj_msgSend(TNStropheContact,"contactWithConnection:JID:group:",_connection,_60,nil),_62=objj_msgSend(_5f,"valueForAttribute:","name")||objj_msgSend(_60,"node"),_63=objj_msgSend(_5f,"childrenWithName:","group"),_64=objj_msgSend(CPArray,"array"),_65=objj_msgSend(_5d,"pendingPresenceForJID:",_60),_66=objj_msgSend(_5f,"valueForAttribute:","subscription");
objj_msgSend(_contacts,"addObject:",_61);
for(var i=0;i<objj_msgSend(_63,"count");i++){
objj_msgSend(_64,"addObject:",objj_msgSend(_5d,"groupWithName:orCreate:",objj_msgSend(objj_msgSend(_63,"objectAtIndex:",i),"text"),YES));
}
if(objj_msgSend(_64,"count")===0){
objj_msgSend(_64,"addObject:",_defaultGroup);
}
for(var i=0;i<objj_msgSend(_64,"count");i++){
objj_msgSend(objj_msgSend(_64,"objectAtIndex:",i),"addContact:",_61);
}
for(var j=0;j<objj_msgSend(_65,"count");j++){
objj_msgSend(_61,"_didReceivePresence:",objj_msgSend(_65,"objectAtIndex:",j));
}
objj_msgSend(_61,"setNickname:",_62);
objj_msgSend(_61,"setSubscription:",_66);
objj_msgSend(_61,"getMessages");
return _61;
}
}),new objj_method(sel_getUid("_updateContactFromRosterItem:"),function(_67,_68,_69){
with(_67){
var _6a=objj_msgSend(TNStropheJID,"stropheJIDWithString:",objj_msgSend(_69,"valueForAttribute:","jid"));
if(objj_msgSend(_6a,"bareEquals:",objj_msgSend(_connection,"JID"))){
CPLog.warn("Cannot update: jid is the current account JID "+_6a);
return;
}
var _6b=objj_msgSend(_67,"contactWithJID:",_6a),_6c=objj_msgSend(_69,"valueForAttribute:","subscription");
if(_6c==="remove"){
var _6d=objj_msgSend(_6b,"groups");
for(var i=0;i<objj_msgSend(_6d,"count");i++){
var _6e=objj_msgSend(_6d,"objectAtIndex:",i);
objj_msgSend(_6e,"removeContact:",_6b);
objj_msgSend(_contacts,"removeObject:",_6b);
if(objj_msgSend(objj_msgSend(_6e,"contacts"),"count")===0){
objj_msgSend(_67,"removeGroup:",_6e);
}
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStropheRosterPushRemovedContactNotification,_67,_6b);
}else{
var _6f=objj_msgSend(_69,"valueForAttribute:","name")||objj_msgSend(_6a,"node"),_70=objj_msgSend(_69,"childrenWithName:","group"),_6d=objj_msgSend(CPArray,"array");
for(var i=0;i<objj_msgSend(_70,"count");i++){
objj_msgSend(_6d,"addObject:",objj_msgSend(_67,"groupWithName:orCreate:",objj_msgSend(objj_msgSend(_70,"objectAtIndex:",i),"text"),YES));
}
if(objj_msgSend(_6d,"count")===0){
objj_msgSend(_6d,"addObject:",_defaultGroup);
}
objj_msgSend(_6b,"setNickname:",_6f);
var _71=objj_msgSend(_6b,"groups");
for(var i=0;i<objj_msgSend(_71,"count");i++){
objj_msgSend(objj_msgSend(_71,"objectAtIndex:",i),"removeContact:",_6b);
}
for(var i=0;i<objj_msgSend(_6d,"count");i++){
objj_msgSend(objj_msgSend(_6d,"objectAtIndex:",i),"addContact:",_6b);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStropheRosterPushUpdatedContactNotification,_67,_6b);
}
return _6b;
}
}),new objj_method(sel_getUid("removeContact:"),function(_72,_73,_74){
with(_72){
var uid=objj_msgSend(_connection,"getUniqueIdWithSuffix:","roster"),_75=objj_msgSend(TNStropheStanza,"iqWithAttributes:",{"type":"set","id":uid}),_76=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_75,"addChildWithName:andAttributes:","query",{"xmlns":Strophe.NS.ROSTER});
objj_msgSend(_75,"addChildWithName:andAttributes:","item",{"jid":objj_msgSend(objj_msgSend(_74,"JID"),"bare"),"subscription":"remove"});
objj_msgSend(_connection,"registerSelector:ofObject:withDict:userInfo:",sel_getUid("_didRemoveContact:userInfo:"),_72,_76,_74);
objj_msgSend(_connection,"send:",_75);
}
}),new objj_method(sel_getUid("removeContactWithJID:"),function(_77,_78,_79){
with(_77){
objj_msgSend(_77,"removeContact:",objj_msgSend(_77,"contactWithJID:",_79));
}
}),new objj_method(sel_getUid("_didRemoveContact:userInfo:"),function(_7a,_7b,_7c,_7d){
with(_7a){
if(objj_msgSend(_7c,"type")==="result"){
CPLog.debug("Contact was removed from roster!");
}else{
CPLog.error("Error removing contact from roster!");
CPLog.error(_7d);
}
return NO;
}
}),new objj_method(sel_getUid("authorizeJID:"),function(_7e,_7f,_80){
with(_7e){
var _81=objj_msgSend(_7e,"contactWithJID:",_80);
if(!_81){
return;
}
objj_msgSend(_81,"subscribe");
}
}),new objj_method(sel_getUid("unauthorizeJID:"),function(_82,_83,_84){
with(_82){
var _85=objj_msgSend(_82,"contactWithJID:",_84);
if(!_85){
return;
}
objj_msgSend(objj_msgSend(_82,"contactWithJID:",_84),"unsubscribe");
}
}),new objj_method(sel_getUid("askAuthorizationTo:"),function(_86,_87,_88){
with(_86){
var _89=objj_msgSend(_86,"contactWithJID:",_88);
if(!_89){
return;
}
objj_msgSend(objj_msgSend(_86,"contactWithJID:",_88),"askSubscription");
}
}),new objj_method(sel_getUid("answerAuthorizationRequest:answer:"),function(_8a,_8b,_8c,_8d){
with(_8a){
var _8e=objj_msgSend(_8c,"from");
if(_8d==YES){
objj_msgSend(_8a,"authorizeJID:",_8e);
objj_msgSend(_8a,"askAuthorizationTo:",_8e);
}else{
objj_msgSend(_8a,"unauthorizeJID:",_8e);
}
if(!objj_msgSend(_8a,"containsJID:",_8e)){
objj_msgSend(_8a,"addContact:withName:inGroupWithName:",_8e,objj_msgSend(_8e,"node"),nil);
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("rosterWithConnection:"),function(_8f,_90,_91){
with(_8f){
return objj_msgSend(objj_msgSend(TNStropheRoster,"alloc"),"initWithConnection:",_91);
}
})]);
p;21;TNStropheRosterBase.jt;4692;@STATIC;1.0;I;23;Foundation/Foundation.ji;14;TNStropheJID.ji;21;TNStropheConnection.ji;17;TNStropheStanza.ji;16;TNStropheGroup.ji;18;TNStropheContact.ji;18;TNStropheGlobals.jt;4511;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("TNStropheJID.j",YES);
objj_executeFile("TNStropheConnection.j",YES);
objj_executeFile("TNStropheStanza.j",YES);
objj_executeFile("TNStropheGroup.j",YES);
objj_executeFile("TNStropheContact.j",YES);
objj_executeFile("TNStropheGlobals.j",YES);
var _1=objj_allocateClassPair(CPObject,"TNStropheRosterBase"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_contacts"),new objj_ivar("_delegate"),new objj_ivar("_connection"),new objj_ivar("_defaultGroup")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("contacts"),function(_3,_4){
with(_3){
return _contacts;
}
}),new objj_method(sel_getUid("_setContacts:"),function(_5,_6,_7){
with(_5){
_contacts=_7;
}
}),new objj_method(sel_getUid("delegate"),function(_8,_9){
with(_8){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_a,_b,_c){
with(_a){
_delegate=_c;
}
}),new objj_method(sel_getUid("connection"),function(_d,_e){
with(_d){
return _connection;
}
}),new objj_method(sel_getUid("_setConnection:"),function(_f,_10,_11){
with(_f){
_connection=_11;
}
}),new objj_method(sel_getUid("initWithConnection:"),function(_12,_13,_14){
with(_12){
if(_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("TNStropheRosterBase").super_class},"init")){
_connection=_14;
_contacts=objj_msgSend(CPArray,"array");
_defaultGroup=objj_msgSend(TNStropheGroup,"stropheGroupWithName:","General");
}
return _12;
}
}),new objj_method(sel_getUid("disconnect"),function(_15,_16){
with(_15){
objj_msgSend(_connection,"disconnect");
}
}),new objj_method(sel_getUid("clear"),function(_17,_18){
with(_17){
objj_msgSend(_contacts,"removeAllObjects");
}
}),new objj_method(sel_getUid("groupsOfContact:"),function(_19,_1a,_1b){
with(_19){
CPLog.error("TNStropheRosterBase groupsOfContact must be implemented in sub-classes.");
return;
}
}),new objj_method(sel_getUid("removeContact:"),function(_1c,_1d,_1e){
with(_1c){
objj_msgSend(_contacts,"removeObject:",_1e);
objj_msgSend(objj_msgSend(_1c,"groupOfContact:",_1e),"removeContact:",_1e);
}
}),new objj_method(sel_getUid("removeContactWithJID:"),function(_1f,_20,_21){
with(_1f){
objj_msgSend(_1f,"removeContact:",objj_msgSend(_1f,"contactWithJID:",_21));
}
}),new objj_method(sel_getUid("contactWithJID:"),function(_22,_23,_24){
with(_22){
return objj_msgSend(_22,"contactWithFullJID:",_24)||objj_msgSend(_22,"contactWithBareJID:",_24);
}
}),new objj_method(sel_getUid("contactWithFullJID:"),function(_25,_26,_27){
with(_25){
for(var i=0;i<objj_msgSend(_contacts,"count");i++){
var _28=objj_msgSend(_contacts,"objectAtIndex:",i);
if(objj_msgSend(objj_msgSend(_28,"JID"),"equals:",_27)){
return _28;
}
}
}
}),new objj_method(sel_getUid("contactWithBareJID:"),function(_29,_2a,_2b){
with(_29){
for(var i=0;i<objj_msgSend(_contacts,"count");i++){
var _2c=objj_msgSend(_contacts,"objectAtIndex:",i);
if(objj_msgSend(objj_msgSend(_2c,"JID"),"bareEquals:",_2b)){
return _2c;
}
}
return;
}
}),new objj_method(sel_getUid("firstContactWithBareJID:"),function(_2d,_2e,_2f){
with(_2d){
for(var i=0;i<objj_msgSend(_contacts,"count");i++){
var _30=objj_msgSend(_contacts,"objectAtIndex:",i);
if(objj_msgSend(objj_msgSend(_30,"JID"),"bareEquals:",_2f)){
return _30;
}
}
return;
}
}),new objj_method(sel_getUid("containsJID:"),function(_31,_32,_33){
with(_31){
return objj_msgSend(_31,"containsBareJID:",_33)||objj_msgSend(_31,"containsFullJID:",_33);
}
}),new objj_method(sel_getUid("containsFullJID:"),function(_34,_35,_36){
with(_34){
for(var i=0;i<objj_msgSend(_contacts,"count");i++){
if(objj_msgSend(objj_msgSend(objj_msgSend(_contacts,"objectAtIndex:",i),"JID"),"equals:",_36)){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("containsBareJID:"),function(_37,_38,_39){
with(_37){
for(var i=0;i<objj_msgSend(_contacts,"count");i++){
if(objj_msgSend(objj_msgSend(objj_msgSend(_contacts,"objectAtIndex:",i),"JID"),"bareEquals:",_39)){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("changeNickname:ofContact:"),function(_3a,_3b,_3c,_3d){
with(_3a){
objj_msgSend(_3d,"changeNickname:",_3c);
}
}),new objj_method(sel_getUid("changeNickname:ofContactWithJID:"),function(_3e,_3f,_40,_41){
with(_3e){
objj_msgSend(_3e,"changeNickname:ofContact:",_40,objj_msgSend(_3e,"contactWithJID:",_41));
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("rosterWithConnection:"),function(_42,_43,_44){
with(_42){
return objj_msgSend(objj_msgSend(TNStropheRosterBase,"alloc"),"initWithConnection:",_44);
}
})]);
p;17;TNStropheStanza.jt;7230;@STATIC;1.0;I;23;Foundation/Foundation.ji;14;TNStropheJID.ji;11;TNXMLNode.jt;7148;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("TNStropheJID.j",YES);
objj_executeFile("TNXMLNode.j",YES);
var _1=objj_allocateClassPair(TNXMLNode,"TNStropheStanza"),_2=_1.isa;
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("initWithName:to:attributes:bare:"),function(_3,_4,_5,_6,_7,_8){
with(_3){
if(_6&&!_7){
_7={};
}
if(_7){
if(_7.isa){
objj_msgSend(_7,"setValue:forKey:",((_8)?objj_msgSend(_6,"bare"):_6),"to");
}else{
_7.to=((_8)?objj_msgSend(_6,"bare"):objj_msgSend(_6,"full"));
}
}
return objj_msgSendSuper({receiver:_3,super_class:objj_getClass("TNStropheStanza").super_class},"initWithName:andAttributes:",_5,_7);
}
}),new objj_method(sel_getUid("from"),function(_9,_a){
with(_9){
while(objj_msgSend(_9,"up")){
}
return objj_msgSend(TNStropheJID,"stropheJIDWithString:",objj_msgSend(_9,"valueForAttribute:","from"));
}
}),new objj_method(sel_getUid("setFrom:"),function(_b,_c,_d){
with(_b){
if(objj_msgSend(_d,"class")==CPString){
_d=objj_msgSend(TNStropheJID,"stropheJIDWithString:",_d);
}
while(objj_msgSend(_b,"up")){
}
objj_msgSend(_b,"setValue:forAttribute:",objj_msgSend(_d,"full"),"from");
}
}),new objj_method(sel_getUid("fromBare"),function(_e,_f){
with(_e){
return objj_msgSend(objj_msgSend(_e,"from"),"bare");
}
}),new objj_method(sel_getUid("fromUser"),function(_10,_11){
with(_10){
return objj_msgSend(objj_msgSend(_10,"from"),"node");
}
}),new objj_method(sel_getUid("fromDomain"),function(_12,_13){
with(_12){
return objj_msgSend(objj_msgSend(_12,"from"),"domain");
}
}),new objj_method(sel_getUid("fromResource"),function(_14,_15){
with(_14){
return objj_msgSend(objj_msgSend(_14,"from"),"resource");
}
}),new objj_method(sel_getUid("to"),function(_16,_17){
with(_16){
while(objj_msgSend(_16,"up")){
}
return objj_msgSend(TNStropheJID,"stropheJIDWithString:",objj_msgSend(_16,"valueForAttribute:","to"));
}
}),new objj_method(sel_getUid("setTo:"),function(_18,_19,aTo){
with(_18){
if(objj_msgSend(aTo,"class")==CPString){
aTo=objj_msgSend(TNStropheJID,"stropheJIDWithString:",aTo);
}
while(objj_msgSend(_18,"up")){
}
objj_msgSend(_18,"setValue:forAttribute:",objj_msgSend(aTo,"full"),"to");
}
}),new objj_method(sel_getUid("type"),function(_1a,_1b){
with(_1a){
return objj_msgSend(_1a,"valueForAttribute:","type");
}
}),new objj_method(sel_getUid("setType:"),function(_1c,_1d,_1e){
with(_1c){
objj_msgSend(_1c,"setValue:forAttribute:",_1e,"type");
}
}),new objj_method(sel_getUid("ID"),function(_1f,_20){
with(_1f){
return objj_msgSend(_1f,"valueForAttribute:","id");
}
}),new objj_method(sel_getUid("setID:"),function(_21,_22,_23){
with(_21){
while(objj_msgSend(_21,"up")){
}
objj_msgSend(_21,"setValue:forAttribute:",_23,"id");
}
}),new objj_method(sel_getUid("delayTime"),function(_24,_25){
with(_24){
if(objj_msgSend(_24,"containsChildrenWithName:","delay")&&objj_msgSend(objj_msgSend(_24,"firstChildWithName:","delay"),"namespace")==Strophe.NS.DELAY){
var _26=objj_msgSend(objj_msgSend(_24,"firstChildWithName:","delay"),"valueForAttribute:","stamp"),_27=_26.match(new RegExp(/(\d{4}-\d{2}-\d{2})T(\d{2}:\d{2}:\d{2})Z/));
if(!_27||_27.length!=3){
objj_msgSend(CPException,"raise:reason:",CPInvalidArgumentException,"delayTime: the string must be of YYYY-MM-DDTHH:MM:SSZ format");
}
return objj_msgSend(objj_msgSend(CPDate,"alloc"),"initWithString:",(_27[1]+" "+_27[2]+" +0000"));
}
return objj_msgSend(CPDate,"dateWithTimeIntervalSinceNow:",0);
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("stanzaWithStanza:"),function(_28,_29,_2a){
with(_28){
return objj_msgSend(objj_msgSend(TNStropheStanza,"alloc"),"initWithNode:",_2a);
}
}),new objj_method(sel_getUid("stanzaWithName:andAttributes:"),function(_2b,_2c,_2d,_2e){
with(_2b){
return objj_msgSend(objj_msgSend(TNStropheStanza,"alloc"),"initWithName:andAttributes:",_2d,_2e);
}
}),new objj_method(sel_getUid("stanzaWithName:to:attributes:"),function(_2f,_30,_31,_32,_33){
with(_2f){
return objj_msgSend(objj_msgSend(TNStropheStanza,"alloc"),"initWithName:to:attributes:bare:",_31,_32,_33,NO);
}
}),new objj_method(sel_getUid("stanzaWithName:to:attributes:bare:"),function(_34,_35,_36,_37,_38,_39){
with(_34){
return objj_msgSend(objj_msgSend(TNStropheStanza,"alloc"),"initWithName:to:attributes:bare:",_36,_37,_38,_39);
}
}),new objj_method(sel_getUid("iqWithAttributes:"),function(_3a,_3b,_3c){
with(_3a){
return objj_msgSend(TNStropheStanza,"stanzaWithName:andAttributes:","iq",_3c);
}
}),new objj_method(sel_getUid("iq"),function(_3d,_3e){
with(_3d){
return objj_msgSend(TNStropheStanza,"iqWithAttributes:",nil);
}
}),new objj_method(sel_getUid("iqTo:"),function(_3f,_40,_41){
with(_3f){
return objj_msgSend(TNStropheStanza,"iqTo:withAttributes:",_41,nil);
}
}),new objj_method(sel_getUid("iqWithType:"),function(_42,_43,_44){
with(_42){
return objj_msgSend(TNStropheStanza,"iqWithAttributes:",{"type":_44});
}
}),new objj_method(sel_getUid("iqTo:withType:"),function(_45,_46,_47,_48){
with(_45){
return objj_msgSend(TNStropheStanza,"iqTo:withAttributes:",_47,{"type":_48});
}
}),new objj_method(sel_getUid("iqTo:withAttributes:"),function(_49,_4a,_4b,_4c){
with(_49){
return objj_msgSend(TNStropheStanza,"stanzaWithName:to:attributes:bare:","iq",_4b,_4c,NO);
}
}),new objj_method(sel_getUid("iqTo:withAttributes:bare:"),function(_4d,_4e,_4f,_50,_51){
with(_4d){
return objj_msgSend(TNStropheStanza,"stanzaWithName:to:attributes:bare:","iq",_4f,_50,_51);
}
}),new objj_method(sel_getUid("presenceWithAttributes:"),function(_52,_53,_54){
with(_52){
return objj_msgSend(TNStropheStanza,"stanzaWithName:andAttributes:","presence",_54);
}
}),new objj_method(sel_getUid("presence"),function(_55,_56){
with(_55){
return objj_msgSend(TNStropheStanza,"presenceWithAttributes:",nil);
}
}),new objj_method(sel_getUid("presenceTo:"),function(_57,_58,_59){
with(_57){
return objj_msgSend(TNStropheStanza,"presenceTo:withAttributes:",_59,nil);
}
}),new objj_method(sel_getUid("presenceTo:withAttributes:"),function(_5a,_5b,_5c,_5d){
with(_5a){
return objj_msgSend(TNStropheStanza,"stanzaWithName:to:attributes:bare:","presence",_5c,_5d,NO);
}
}),new objj_method(sel_getUid("presenceTo:withAttributes:bare:"),function(_5e,_5f,_60,_61,_62){
with(_5e){
return objj_msgSend(TNStropheStanza,"stanzaWithName:to:attributes:bare:","presence",_60,_61,_62);
}
}),new objj_method(sel_getUid("messageWithAttributes:"),function(_63,_64,_65){
with(_63){
return objj_msgSend(TNStropheStanza,"stanzaWithName:andAttributes:","message",_65);
}
}),new objj_method(sel_getUid("message"),function(_66,_67){
with(_66){
return objj_msgSend(TNStropheStanza,"messageWithAttributes:",nil);
}
}),new objj_method(sel_getUid("messageTo:"),function(_68,_69,_6a){
with(_68){
return objj_msgSend(TNStropheStanza,"messageTo:withAttributes:",_6a,nil);
}
}),new objj_method(sel_getUid("messageTo:withAttributes:"),function(_6b,_6c,_6d,_6e){
with(_6b){
return objj_msgSend(TNStropheStanza,"stanzaWithName:to:attributes:","message",_6d,_6e);
}
}),new objj_method(sel_getUid("messageTo:withAttributes:bare:"),function(_6f,_70,_71,_72,_73){
with(_6f){
return objj_msgSend(TNStropheStanza,"stanzaWithName:to:attributes:bare:","message",_71,_72,_73);
}
})]);
p;11;TNXMLNode.jt;5049;@STATIC;1.0;I;23;Foundation/Foundation.jt;5002;
objj_executeFile("Foundation/Foundation.j",NO);
var _1=objj_allocateClassPair(CPObject,"TNXMLNode"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_xmlNode")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("xmlNode"),function(_3,_4){
with(_3){
return _xmlNode;
}
}),new objj_method(sel_getUid("initWithNode:"),function(_5,_6,_7){
with(_5){
if(_5=objj_msgSendSuper({receiver:_5,super_class:objj_getClass("TNXMLNode").super_class},"init")){
if((_7.c)&&(_7.c)!=undefined){
_xmlNode=_7;
}else{
_xmlNode=new Strophe.Builder("msg");
_xmlNode.nodeTree=_7;
_xmlNode.node=_7;
}
}
return _5;
}
}),new objj_method(sel_getUid("initWithName:andAttributes:"),function(_8,_9,_a,_b){
with(_8){
if(_8=objj_msgSendSuper({receiver:_8,super_class:objj_getClass("TNXMLNode").super_class},"init")){
_xmlNode=new Strophe.Builder(_a,_b);
}
return _8;
}
}),new objj_method(sel_getUid("copy"),function(_c,_d){
with(_c){
return objj_msgSend(TNXMLNode,"nodeWithXMLNode:",Strophe.copyElement(objj_msgSend(_c,"tree")));
}
}),new objj_method(sel_getUid("addNode:"),function(_e,_f,_10){
with(_e){
_xmlNode.cnode(objj_msgSend(_10,"tree"));
}
}),new objj_method(sel_getUid("addTextNode:"),function(_11,_12,_13){
with(_11){
_xmlNode=_xmlNode.t(_13);
}
}),new objj_method(sel_getUid("text"),function(_14,_15){
with(_14){
return Strophe.getText(objj_msgSend(_14,"tree"));
}
}),new objj_method(sel_getUid("tree"),function(_16,_17){
with(_16){
return _xmlNode.tree();
}
}),new objj_method(sel_getUid("up"),function(_18,_19){
with(_18){
if(_xmlNode.node&&_xmlNode.node.parentNode){
ret=_xmlNode.up();
return YES;
}
return NO;
}
}),new objj_method(sel_getUid("stringValue"),function(_1a,_1b){
with(_1a){
return Strophe.serialize(_xmlNode);
}
}),new objj_method(sel_getUid("description"),function(_1c,_1d){
with(_1c){
return objj_msgSend(_1c,"stringValue");
}
}),new objj_method(sel_getUid("valueForAttribute:"),function(_1e,_1f,_20){
with(_1e){
return objj_msgSend(_1e,"tree").getAttribute(_20);
}
}),new objj_method(sel_getUid("setValue:forAttribute:"),function(_21,_22,_23,_24){
with(_21){
var _25={};
_25[_24]=_23;
_xmlNode.attrs(_25);
}
}),new objj_method(sel_getUid("name"),function(_26,_27){
with(_26){
return objj_msgSend(_26,"tree").tagName;
}
}),new objj_method(sel_getUid("namespace"),function(_28,_29){
with(_28){
return objj_msgSend(_28,"valueForAttribute:","xmlns");
}
}),new objj_method(sel_getUid("setNamespace:"),function(_2a,_2b,_2c){
with(_2a){
objj_msgSend(_2a,"setValue:forAttribute:",_2c,"xmlns");
}
}),new objj_method(sel_getUid("addChildWithName:andAttributes:"),function(_2d,_2e,_2f,_30){
with(_2d){
_xmlNode=_xmlNode.c(_2f,_30);
}
}),new objj_method(sel_getUid("addChildWithName:"),function(_31,_32,_33){
with(_31){
objj_msgSend(_31,"addChildWithName:andAttributes:",_33,{});
}
}),new objj_method(sel_getUid("childrenWithName:"),function(_34,_35,_36){
with(_34){
var _37=objj_msgSend(CPArray,"array"),_38=objj_msgSend(_34,"tree").getElementsByTagName(_36);
for(var i=0;i<_38.length;i++){
objj_msgSend(_37,"addObject:",objj_msgSend(TNXMLNode,"nodeWithXMLNode:",_38[i]));
}
return _37;
}
}),new objj_method(sel_getUid("ownChildrenWithName:"),function(_39,_3a,_3b){
with(_39){
var _3c=objj_msgSend(CPArray,"array"),_3d=objj_msgSend(_39,"tree").childNodes;
for(var i=0;i<_3d.length;i++){
if((_3b===nil)||(_3b&&_3d[i].tagName==_3b)){
objj_msgSend(_3c,"addObject:",objj_msgSend(TNXMLNode,"nodeWithXMLNode:",_3d[i]));
}
}
return _3c;
}
}),new objj_method(sel_getUid("firstChildWithName:"),function(_3e,_3f,_40){
with(_3e){
var _41=objj_msgSend(_3e,"tree").getElementsByTagName(_40);
if(_41&&(_41.length>0)){
return objj_msgSend(TNXMLNode,"nodeWithXMLNode:",_41[0]);
}else{
return;
}
}
}),new objj_method(sel_getUid("children"),function(_42,_43){
with(_42){
return objj_msgSend(_42,"ownChildrenWithName:",nil);
}
}),new objj_method(sel_getUid("containsChildrenWithName:"),function(_44,_45,_46){
with(_44){
return (objj_msgSend(_44,"firstChildWithName:",_46))?YES:NO;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("nodeWithXMLNode:"),function(_47,_48,_49){
with(_47){
return objj_msgSend(objj_msgSend(TNXMLNode,"alloc"),"initWithNode:",_49);
}
}),new objj_method(sel_getUid("nodeWithName:"),function(_4a,_4b,_4c){
with(_4a){
return objj_msgSend(objj_msgSend(TNXMLNode,"alloc"),"initWithName:andAttributes:",_4c,nil);
}
}),new objj_method(sel_getUid("nodeWithName:andAttributes:"),function(_4d,_4e,_4f,_50){
with(_4d){
return objj_msgSend(objj_msgSend(TNXMLNode,"alloc"),"initWithName:andAttributes:",_4f,_50);
}
})]);
var _1=objj_getClass("TNXMLNode");
if(!_1){
throw new SyntaxError("*** Could not find definition for class \"TNXMLNode\"");
}
var _2=_1.isa;
class_addMethods(_1,[new objj_method(sel_getUid("initWithCoder:"),function(_51,_52,_53){
with(_51){
_51=objj_msgSendSuper({receiver:_51,super_class:objj_getClass("TNXMLNode").super_class},"initWithCoder:",_53);
if(_51){
}
return _51;
}
}),new objj_method(sel_getUid("encodeWithCoder:"),function(_54,_55,_56){
with(_54){
}
})]);
p;22;MUC/TNStropheMUCRoom.jt;6500;@STATIC;1.0;I;23;Foundation/Foundation.ji;21;../TNStropheGlobals.ji;17;../TNStropheJID.ji;24;../TNStropheConnection.ji;20;../TNStropheStanza.ji;20;TNStropheMUCRoster.jt;6326;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("../TNStropheGlobals.j",YES);
objj_executeFile("../TNStropheJID.j",YES);
objj_executeFile("../TNStropheConnection.j",YES);
objj_executeFile("../TNStropheStanza.j",YES);
objj_executeFile("TNStropheMUCRoster.j",YES);
var _1=objj_allocateClassPair(CPObject,"TNStropheMUCRoom"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_messages"),new objj_ivar("_subject"),new objj_ivar("_delegate"),new objj_ivar("_roomJID"),new objj_ivar("_roster"),new objj_ivar("_handlerIDs"),new objj_ivar("_connection")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("messages"),function(_3,_4){
with(_3){
return _messages;
}
}),new objj_method(sel_getUid("_setMessages:"),function(_5,_6,_7){
with(_5){
_messages=_7;
}
}),new objj_method(sel_getUid("subject"),function(_8,_9){
with(_8){
return _subject;
}
}),new objj_method(sel_getUid("_setSubject:"),function(_a,_b,_c){
with(_a){
_subject=_c;
}
}),new objj_method(sel_getUid("delegate"),function(_d,_e){
with(_d){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_f,_10,_11){
with(_f){
_delegate=_11;
}
}),new objj_method(sel_getUid("roomJID"),function(_12,_13){
with(_12){
return _roomJID;
}
}),new objj_method(sel_getUid("_setRoomJID:"),function(_14,_15,_16){
with(_14){
_roomJID=_16;
}
}),new objj_method(sel_getUid("roster"),function(_17,_18){
with(_17){
return _roster;
}
}),new objj_method(sel_getUid("_setRoster:"),function(_19,_1a,_1b){
with(_19){
_roster=_1b;
}
}),new objj_method(sel_getUid("initWithRoom:onService:usingConnection:withNick:"),function(_1c,_1d,_1e,_1f,_20,_21){
with(_1c){
if(_1c=objj_msgSendSuper({receiver:_1c,super_class:objj_getClass("TNStropheMUCRoom").super_class},"init")){
_connection=_20;
_roomJID=objj_msgSend(TNStropheJID,"stropheJIDWithNode:domain:resource:",_1e,_1f,_21);
_handlerIDs=objj_msgSend(CPArray,"array");
_messages=objj_msgSend(CPArray,"array");
_roster=objj_msgSend(TNStropheMUCRoster,"rosterWithConnection:forRoom:",_connection,_1c);
}
return _1c;
}
}),new objj_method(sel_getUid("directedPresence"),function(_22,_23){
with(_22){
return objj_msgSend(TNStropheStanza,"presenceTo:",_roomJID);
}
}),new objj_method(sel_getUid("join"),function(_24,_25){
with(_24){
var _26=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","message","name",objj_msgSend(_roomJID,"full"),"from","groupchat","type",{matchBare:true},"options"),_27=objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("receiveMessage:"),_24,_26);
objj_msgSend(_handlerIDs,"addObject:",_27);
var _28=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","message","name",objj_msgSend(_roomJID,"full"),"from","chat","type",{matchBare:true},"options"),_29=objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("receivePrivateMessage:"),_24,_28);
objj_msgSend(_handlerIDs,"addObject:",_29);
objj_msgSend(_connection,"send:",objj_msgSend(_24,"directedPresence"));
}
}),new objj_method(sel_getUid("leave"),function(_2a,_2b){
with(_2a){
var _2c=objj_msgSend(_2a,"directedPresence");
objj_msgSend(_2c,"setType:","unavailable");
objj_msgSend(_connection,"send:",_2c);
for(var i=0;i<objj_msgSend(_handlerIDs,"count");i++){
objj_msgSend(_connection,"deleteRegisteredSelector:",objj_msgSend(_handlerIDs,"objectAtIndex:",i));
}
}
}),new objj_method(sel_getUid("setSubject:"),function(_2d,_2e,_2f){
with(_2d){
var _30=objj_msgSend(TNStropheStanza,"message");
objj_msgSend(_30,"setType:","groupchat");
objj_msgSend(_30,"addChildWithName:","subject");
objj_msgSend(_30,"addTextNode:",_2f);
objj_msgSend(_2d,"sendStanzaToRoom:",_30);
}
}),new objj_method(sel_getUid("sayToRoom:"),function(_31,_32,_33){
with(_31){
var _34=objj_msgSend(TNStropheStanza,"message");
objj_msgSend(_34,"setType:","groupchat");
objj_msgSend(_34,"addChildWithName:","body");
objj_msgSend(_34,"addTextNode:",_33);
objj_msgSend(_31,"sendStanzaToRoom:",_34);
}
}),new objj_method(sel_getUid("sendStanzaToRoom:"),function(_35,_36,_37){
with(_35){
objj_msgSend(_37,"setTo:",objj_msgSend(_roomJID,"bare"));
objj_msgSend(_connection,"send:",_37);
}
}),new objj_method(sel_getUid("receiveMessage:"),function(_38,_39,_3a){
with(_38){
if(objj_msgSend(_3a,"containsChildrenWithName:","subject")){
_subject=objj_msgSend(objj_msgSend(_3a,"firstChildWithName:","subject"),"text");
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("mucRoom:receivedNewSubject:"))){
objj_msgSend(_delegate,"mucRoom:receivedNewSubject:",_38,_subject);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStropheMUCSubjectWasUpdatedNotification,_38,_3a);
}
if(objj_msgSend(_3a,"containsChildrenWithName:","body")){
var _3b=objj_msgSend(objj_msgSend(_3a,"firstChildWithName:","body"),"text"),_3c=objj_msgSend(_roster,"contactWithJID:",objj_msgSend(_3a,"from")),_3d=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_3b,"body",_3c,"from",objj_msgSend(_3a,"delayTime"),"time");
objj_msgSend(_messages,"addObject:",_3d);
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("mucRoom:receivedMessage:"))){
objj_msgSend(_delegate,"mucRoom:receivedMessage:",_38,_3d);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStropheMUCConversationWasUpdatedNotification,_38,_3a);
}
var _3e=objj_msgSend(_3a,"children");
objj_msgSend(_3e,"removeObjectsInArray:",objj_msgSend(_3a,"childrenWithName:","body"));
objj_msgSend(_3e,"removeObjectsInArray:",objj_msgSend(_3a,"childrenWithName:","subject"));
if(objj_msgSend(_3e,"count")>0){
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("mucRoom:receivedData:"))){
objj_msgSend(_delegate,"mucRoom:receivedData:",_38,_3a);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStropheMUCDataReceivedNotification,_38,_3a);
}
return YES;
}
}),new objj_method(sel_getUid("receivePrivateMessage:"),function(_3f,_40,_41){
with(_3f){
return YES;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("joinRoom:onService:usingConnection:withNick:"),function(_42,_43,_44,_45,_46,_47){
with(_42){
return objj_msgSend(objj_msgSend(TNStropheMUCRoom,"alloc"),"initWithRoom:onService:usingConnection:withNick:",_44,_45,_46,_47);
}
})]);
p;24;MUC/TNStropheMUCRoster.jt;5238;@STATIC;1.0;I;23;Foundation/Foundation.ji;24;../TNStropheRosterBase.jt;5162;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("../TNStropheRosterBase.j",YES);
var _1=objj_allocateClassPair(TNStropheRosterBase,"TNStropheMUCRoster"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_admins"),new objj_ivar("_moderators"),new objj_ivar("_owners"),new objj_ivar("_participants"),new objj_ivar("_visitors"),new objj_ivar("_room")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("admins"),function(_3,_4){
with(_3){
return _admins;
}
}),new objj_method(sel_getUid("_setAdmins:"),function(_5,_6,_7){
with(_5){
_admins=_7;
}
}),new objj_method(sel_getUid("moderators"),function(_8,_9){
with(_8){
return _moderators;
}
}),new objj_method(sel_getUid("_setModerators:"),function(_a,_b,_c){
with(_a){
_moderators=_c;
}
}),new objj_method(sel_getUid("owners"),function(_d,_e){
with(_d){
return _owners;
}
}),new objj_method(sel_getUid("_setOwners:"),function(_f,_10,_11){
with(_f){
_owners=_11;
}
}),new objj_method(sel_getUid("participants"),function(_12,_13){
with(_12){
return _participants;
}
}),new objj_method(sel_getUid("_setParticipants:"),function(_14,_15,_16){
with(_14){
_participants=_16;
}
}),new objj_method(sel_getUid("visitors"),function(_17,_18){
with(_17){
return _visitors;
}
}),new objj_method(sel_getUid("_setVisitors:"),function(_19,_1a,_1b){
with(_19){
_visitors=_1b;
}
}),new objj_method(sel_getUid("room"),function(_1c,_1d){
with(_1c){
return _room;
}
}),new objj_method(sel_getUid("_setRoom:"),function(_1e,_1f,_20){
with(_1e){
_room=_20;
}
}),new objj_method(sel_getUid("initWithConnection:forRoom:"),function(_21,_22,_23,_24){
with(_21){
if(_21=objj_msgSendSuper({receiver:_21,super_class:objj_getClass("TNStropheMUCRoster").super_class},"initWithConnection:",_23)){
_room=_24;
_visitors=objj_msgSend(TNStropheGroup,"stropheGroupWithName:","Visitors");
_participants=objj_msgSend(TNStropheGroup,"stropheGroupWithName:","Participants");
_moderators=objj_msgSend(TNStropheGroup,"stropheGroupWithName:","Moderators");
_admins=objj_msgSend(TNStropheGroup,"stropheGroupWithName:","Admins");
_owners=objj_msgSend(TNStropheGroup,"stropheGroupWithName:","Owners");
var _25=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","presence","name",objj_msgSend(objj_msgSend(_room,"roomJID"),"full"),"from",{matchBare:true},"options");
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didReceivePresence:"),_21,_25);
}
return _21;
}
}),new objj_method(sel_getUid("_didReceivePresence:"),function(_26,_27,_28){
with(_26){
var _29=objj_msgSend(_26,"contactWithFullJID:",objj_msgSend(_28,"from")),_2a=objj_msgSend(_28,"firstChildWithName:","x"),_2b;
if(_2a&&objj_msgSend(_2a,"namespace")=="http://jabber.org/protocol/muc#user"){
switch(objj_msgSend(objj_msgSend(_2a,"firstChildWithName:","item"),"valueForAttribute:","role")){
case "visitor":
_2b=_visitors;
break;
case "participant":
_2b=_participants;
break;
case "moderator":
_2b=_moderators;
break;
}
}
if(_29){
objj_msgSend(_29,"_didReceivePresence:",_28);
}else{
_29=objj_msgSend(_26,"addContact:withName:inGroup:",objj_msgSend(_28,"from"),objj_msgSend(objj_msgSend(_28,"from"),"resource"),_2b);
}
if(objj_msgSend(_28,"type")==="unavailable"){
var _2c;
if(objj_msgSend(_2a,"containsChildrenWithName:","status")){
_2c=objj_msgSend(objj_msgSend(_2a,"firstChildWithName:","status"),"valueForAttribute:","code");
}
objj_msgSend(_26,"removeContact:withStatusCode:",_29,_2c);
}
return YES;
}
}),new objj_method(sel_getUid("addContact:withName:inGroup:"),function(_2d,_2e,_2f,_30,_31){
with(_2d){
if(objj_msgSend(_2d,"containsFullJID:",_2f)){
return;
}
if(!_31){
_31=_visitors;
}
var _32=objj_msgSend(TNStropheContact,"contactWithConnection:JID:group:",_connection,_2f,_31);
objj_msgSend(_32,"setNickname:",_30);
objj_msgSend(_31,"addContact:",_32);
objj_msgSend(_contacts,"addObject:",_32);
var _33=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_32,"contact");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStropheMUCContactJoinedNotification,_2d,_33);
return _32;
}
}),new objj_method(sel_getUid("removeContact:withStatusCode:"),function(_34,_35,_36,_37){
with(_34){
objj_msgSendSuper({receiver:_34,super_class:objj_getClass("TNStropheMUCRoster").super_class},"removeContact:",_36);
var _38=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",_37,"statusCode",_36,"contact");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStropheMUCContactLeftNotification,_34,_38);
}
}),new objj_method(sel_getUid("groupOfContact:"),function(_39,_3a,_3b){
with(_39){
var _3c=objj_msgSend(CPArray,"arrayWithObjects:",_visitors,_participants,_moderators,_admins,_owners);
for(var i=0;i<objj_msgSend(_3c,"count");i++){
var _3d=objj_msgSend(_3c,"objectAtIndex:",i);
if(objj_msgSend(objj_msgSend(_3d,"contacts"),"containsObject:",_3b)){
return _3d;
}
}
return;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("rosterWithConnection:forRoom:"),function(_3e,_3f,_40,_41){
with(_3e){
return objj_msgSend(objj_msgSend(TNStropheMUCRoster,"alloc"),"initWithConnection:forRoom:",_40,_41);
}
})]);
p;27;PubSub/TNPubSubController.jt;10262;@STATIC;1.0;I;23;Foundation/Foundation.ji;21;../TNStropheGlobals.ji;24;../TNStropheConnection.ji;14;TNPubSubNode.jt;10140;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("../TNStropheGlobals.j",YES);
objj_executeFile("../TNStropheConnection.j",YES);
objj_executeFile("TNPubSubNode.j",YES);
var _1=objj_allocateClassPair(CPObject,"TNPubSubController"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_nodes"),new objj_ivar("_servers"),new objj_ivar("_delegate"),new objj_ivar("_subscriptionBatches"),new objj_ivar("_unsubscriptionBatches"),new objj_ivar("_connection"),new objj_ivar("_numberOfPromptedServers")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("nodes"),function(_3,_4){
with(_3){
return _nodes;
}
}),new objj_method(sel_getUid("_setNodes:"),function(_5,_6,_7){
with(_5){
_nodes=_7;
}
}),new objj_method(sel_getUid("servers"),function(_8,_9){
with(_8){
return _servers;
}
}),new objj_method(sel_getUid("setServers:"),function(_a,_b,_c){
with(_a){
_servers=_c;
}
}),new objj_method(sel_getUid("delegate"),function(_d,_e){
with(_d){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_f,_10,_11){
with(_f){
_delegate=_11;
}
}),new objj_method(sel_getUid("initWithConnection:pubSubServer:"),function(_12,_13,_14,_15){
with(_12){
if(_12=objj_msgSendSuper({receiver:_12,super_class:objj_getClass("TNPubSubController").super_class},"init")){
_connection=_14;
_servers=objj_msgSend(CPArray,"arrayWithObject:",(_15||objj_msgSend(TNStropheJID,"stropheJIDWithString:","pubsub."+objj_msgSend(objj_msgSend(_14,"JID"),"domain"))));
_numberOfPromptedServers=0;
_nodes=objj_msgSend(CPArray,"array");
_subscriptionBatches=objj_msgSend(CPDictionary,"dictionary");
_unsubscriptionBatches=objj_msgSend(CPDictionary,"dictionary");
}
return _12;
}
}),new objj_method(sel_getUid("_didSubscribeToNode:"),function(_16,_17,_18){
with(_16){
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("pubSubController:subscribedToNode:"))){
objj_msgSend(_delegate,"pubSubController:subscribedToNode:",_16,objj_msgSend(_18,"object"));
}
}
}),new objj_method(sel_getUid("_didUnsubscribeToNode:"),function(_19,_1a,_1b){
with(_19){
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("pubSubController:unsubscribedFromNode:"))){
objj_msgSend(_delegate,"pubSubController:unsubscribedFromNode:",_19,objj_msgSend(_1b,"object"));
}
}
}),new objj_method(sel_getUid("_didBatchSubscribe:"),function(_1c,_1d,_1e){
with(_1c){
var _1f=objj_msgSend(_1e,"object"),_20=objj_msgSend(_1e,"useInfo"),_21=objj_msgSend(_subscriptionBatches,"valueForKey:",_20),_22=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_20,"batchID");
objj_msgSend(_21,"removeObjectIdenticalTo:",objj_msgSend(_1f,"name"));
if(objj_msgSend(_21,"count")===0){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStrophePubSubBatchSubscribeComplete,_1c,_22);
}
}
}),new objj_method(sel_getUid("_didBatchUnsubscribe:"),function(_23,_24,_25){
with(_23){
var _26=objj_msgSend(_25,"object"),_27=objj_msgSend(_25,"useInfo"),_28=objj_msgSend(_unsubscriptionBatches,"valueForKey:",_27),_29=objj_msgSend(CPDictionary,"dictionaryWithObject:forKey:",_27,"batchID");
objj_msgSend(_28,"removeObjectIdenticalTo:",objj_msgSend(_26,"name"));
if(objj_msgSend(_28,"count")===0){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStrophePubSubBatchUnsubscribeComplete,_23,_29);
}
}
}),new objj_method(sel_getUid("containsServerJID:"),function(_2a,_2b,_2c){
with(_2a){
for(var i=0;i<objj_msgSend(_servers,"count");i++){
if(objj_msgSend(objj_msgSend(_servers,"objectAtIndex:",i),"node")==objj_msgSend(_2c,"node")){
return YES;
}
}
return NO;
}
}),new objj_method(sel_getUid("nodeWithName:server:"),function(_2d,_2e,_2f,_30){
with(_2d){
for(var i=0;i<objj_msgSend(_nodes,"count");i++){
var _31=objj_msgSend(_nodes,"objectAtIndex:",i);
if((objj_msgSend(_31,"name")===_2f)&&(!_30||objj_msgSend(objj_msgSend(_31,"server"),"equals:",_30))){
return _31;
}
}
return;
}
}),new objj_method(sel_getUid("nodeWithName:"),function(_32,_33,_34){
with(_32){
return objj_msgSend(_32,"nodeWithName:server:",_34,nil);
}
}),new objj_method(sel_getUid("findOrCreateNodeWithName:server:"),function(_35,_36,_37,_38){
with(_35){
var _39=objj_msgSend(_35,"nodeWithName:server:",_37,_38);
if(!objj_msgSend(_35,"containsServerJID:",_38)){
objj_msgSend(_servers,"addObject:",_38);
}
if(!_39){
_39=objj_msgSend(TNPubSubNode,"pubSubNodeWithNodeName:connection:pubSubServer:",_37,_connection,_38);
objj_msgSend(_nodes,"addObject:",_39);
}
return _39;
}
}),new objj_method(sel_getUid("retrieveSubscriptions"),function(_3a,_3b){
with(_3a){
_numberOfPromptedServers=0;
for(var i=0;i<objj_msgSend(_servers,"count");i++){
var uid=objj_msgSend(_connection,"getUniqueId"),_3c=objj_msgSend(TNStropheStanza,"iqWithAttributes:",{"type":"get","to":objj_msgSend(_servers,"objectAtIndex:",i),"id":uid}),_3d=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_3c,"addChildWithName:andAttributes:","pubsub",{"xmlns":Strophe.NS.PUBSUB});
objj_msgSend(_3c,"addChildWithName:","subscriptions");
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didRetrieveSubscriptions:"),_3a,_3d);
objj_msgSend(_connection,"send:",_3c);
}
}
}),new objj_method(sel_getUid("_didRetrieveSubscriptions:"),function(_3e,_3f,_40){
with(_3e){
if(objj_msgSend(_40,"type")=="result"){
var _41=objj_msgSend(_40,"childrenWithName:","subscription"),_42=objj_msgSend(_40,"from");
for(var i=0;i<objj_msgSend(_41,"count");i++){
var _43=objj_msgSend(_41,"objectAtIndex:",i),_44=objj_msgSend(_43,"valueForAttribute:","node"),_45=objj_msgSend(_43,"valueForAttribute:","subid"),_46=objj_msgSend(_3e,"findOrCreateNodeWithName:server:",_44,_42);
objj_msgSend(_46,"addSubscriptionID:",_45);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_3e,sel_getUid("_didSubscribeToNode:"),TNStrophePubSubNodeSubscribedNotification,_46);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_3e,sel_getUid("_didUnsubscribeToNode:"),TNStrophePubSubNodeUnsubscribedNotification,_46);
}
_numberOfPromptedServers++;
if(_numberOfPromptedServers>=objj_msgSend(_servers,"count")){
_numberOfPromptedServers=0;
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStrophePubSubSubscriptionsRetrievedNotification,_3e);
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("pubSubController:retrievedSubscriptions:"))){
objj_msgSend(_delegate,"pubSubController:retrievedSubscriptions:",_3e,YES);
}
}
}else{
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("pubSubController:retrievedSubscriptions:"))){
objj_msgSend(_delegate,"pubSubController:retrievedSubscriptions:",_3e,NO);
}
CPLog.error("Cannot retrieve the contents of pubsub node");
CPLog.error(_40);
}
return NO;
}
}),new objj_method(sel_getUid("subscribeToNodeWithName:server:nodeDelegate:"),function(_47,_48,_49,_4a,_4b){
with(_47){
var _4c=objj_msgSend(_47,"findOrCreateNodeWithName:server:",_49,_4a);
objj_msgSend(_4c,"setDelegate:",_4b);
objj_msgSend(_4c,"subscribe");
return _4c;
}
}),new objj_method(sel_getUid("subscribeToNodeWithName:server:"),function(_4d,_4e,_4f,_50){
with(_4d){
return objj_msgSend(_4d,"subscribeToNodeWithName:server:nodeDelegate:",_4f,_50,nil);
}
}),new objj_method(sel_getUid("subscribeToNodesWithNames:nodesDelegate:"),function(_51,_52,_53,_54){
with(_51){
var _55=objj_msgSend(_connection,"getUniqueId"),_56=objj_msgSend(_53,"allKeys");
objj_msgSend(_subscriptionBatches,"setValue:forKey:",_53,_55);
for(var k=0;k<objj_msgSend(_56,"count");k++){
var _57=objj_msgSend(_56,"objectAtIndex:",k),_58=objj_msgSend(_56,"valueForKey:",_57);
for(var i=0;i<objj_msgSend(_58,"count");i++){
var _59=objj_msgSend(_58,"objectAtIndex:",i),_5a=objj_msgSend(_51,"subscribeToNodeWithName:server:nodeDelegate:",_59,_57,_54);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:userInfo:",_51,sel_getUid("_didBatchSubscribe:"),TNStrophePubSubNodeSubscribedNotification,_5a,_55);
}
}
return _55;
}
}),new objj_method(sel_getUid("unsubscribeFromNodeWithName:server:nodeDelegate:"),function(_5b,_5c,_5d,_5e,_5f){
with(_5b){
var _60=objj_msgSend(_5b,"findOrCreateNodeWithName:server:",_5d,_5e);
objj_msgSend(_nodes,"removeObject:",_60);
objj_msgSend(_60,"setDelegate:",_5f);
objj_msgSend(_60,"unsubscribe");
return _60;
}
}),new objj_method(sel_getUid("unsubscribeFromNodeWithName:server:"),function(_61,_62,_63,_64){
with(_61){
return objj_msgSend(_61,"unsubscribeFromNodeWithName:server:nodeDelegate:",_63,_64,nil);
}
}),new objj_method(sel_getUid("unsubscribeFromNodesWithNames:nodesDelegate:"),function(_65,_66,_67,_68){
with(_65){
var _69=objj_msgSend(_connection,"getUniqueId"),_6a=objj_msgSend(_67,"allKeys");
objj_msgSend(_unsubscriptionBatches,"setValue:forKey:",_67,_69);
for(var k=0;k<objj_msgSend(_6a,"count");k++){
var _6b=objj_msgSend(_6a,"objectAtIndex:",k),_6c=objj_msgSend(_6a,"valueForKey:",_6b);
for(var i=0;i<objj_msgSend(_6c,"count");i++){
var _6d=objj_msgSend(_6c,"objectAtIndex:",i),_6e=objj_msgSend(_65,"unsubscribeFromNodeWithName:server:nodeDelegate:",_6d,_6b,_68);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:userInfo:",_65,sel_getUid("_didBatchUnsubscribe:"),TNStrophePubSubNodeUnsubscribedNotification,_6e,_69);
}
}
return _69;
}
}),new objj_method(sel_getUid("unsubscribeFromAllNodes"),function(_6f,_70){
with(_6f){
for(var i=0;i<objj_msgSend(_nodes,"count");i++){
objj_msgSend(objj_msgSend(_nodes,"objectAtIndex:",i),"unsubscribe");
}
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("pubSubControllerWithConnection:pubSubServer:"),function(_71,_72,_73,_74){
with(_71){
return objj_msgSend(objj_msgSend(TNPubSubController,"alloc"),"initWithConnection:pubSubServer:",_73,_74);
}
}),new objj_method(sel_getUid("pubSubControllerWithConnection:"),function(_75,_76,_77){
with(_75){
return objj_msgSend(objj_msgSend(TNPubSubController,"alloc"),"initWithConnection:pubSubServer:",_77,nil);
}
})]);
p;21;PubSub/TNPubSubNode.jt;19076;@STATIC;1.0;I;23;Foundation/Foundation.ji;21;../TNStropheGlobals.ji;24;../TNStropheConnection.ji;20;../TNStropheStanza.jt;18948;
objj_executeFile("Foundation/Foundation.j",NO);
objj_executeFile("../TNStropheGlobals.j",YES);
objj_executeFile("../TNStropheConnection.j",YES);
objj_executeFile("../TNStropheStanza.j",YES);
var _1=objj_allocateClassPair(CPObject,"TNPubSubNode"),_2=_1.isa;
class_addIvars(_1,[new objj_ivar("_content"),new objj_ivar("_nodeName"),new objj_ivar("_delegate"),new objj_ivar("_pubSubServer"),new objj_ivar("_subscriptionIDs"),new objj_ivar("_eventSelectorID"),new objj_ivar("_connection")]);
objj_registerClassPair(_1);
class_addMethods(_1,[new objj_method(sel_getUid("content"),function(_3,_4){
with(_3){
return _content;
}
}),new objj_method(sel_getUid("_setContent:"),function(_5,_6,_7){
with(_5){
_content=_7;
}
}),new objj_method(sel_getUid("name"),function(_8,_9){
with(_8){
return _nodeName;
}
}),new objj_method(sel_getUid("_setNodeName:"),function(_a,_b,_c){
with(_a){
_nodeName=_c;
}
}),new objj_method(sel_getUid("delegate"),function(_d,_e){
with(_d){
return _delegate;
}
}),new objj_method(sel_getUid("setDelegate:"),function(_f,_10,_11){
with(_f){
_delegate=_11;
}
}),new objj_method(sel_getUid("server"),function(_12,_13){
with(_12){
return _pubSubServer;
}
}),new objj_method(sel_getUid("_setPubSubServer:"),function(_14,_15,_16){
with(_14){
_pubSubServer=_16;
}
}),new objj_method(sel_getUid("initWithNodeName:connection:pubSubServer:"),function(_17,_18,_19,_1a,_1b){
with(_17){
if(_17=objj_msgSendSuper({receiver:_17,super_class:objj_getClass("TNPubSubNode").super_class},"init")){
_nodeName=_19;
_connection=_1a;
_pubSubServer=_1b?_1b:objj_msgSend(TNStropheJID,"stropheJIDWithString:","pubsub."+objj_msgSend(objj_msgSend(_connection,"JID"),"domain"));
_subscriptionIDs=objj_msgSend(CPArray,"array");
objj_msgSend(_17,"_setEventHandler");
}
return _17;
}
}),new objj_method(sel_getUid("initWithNodeName:connection:pubSubServer:subscriptionIDs:"),function(_1c,_1d,_1e,_1f,_20,_21){
with(_1c){
if(_1c=objj_msgSend(_1c,"initWithNodeName:connection:pubSubServer:",_1e,_1f,_20)){
_subscriptionIDs=_21;
}
return _1c;
}
}),new objj_method(sel_getUid("retrieveItems"),function(_22,_23){
with(_22){
var uid=objj_msgSend(_connection,"getUniqueId"),_24=objj_msgSend(TNStropheStanza,"iq"),_25=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_24,"setTo:",_pubSubServer);
objj_msgSend(_24,"setType:","get");
objj_msgSend(_24,"setID:",uid);
objj_msgSend(_24,"addChildWithName:andAttributes:","pubsub",{"xmlns":Strophe.NS.PUBSUB});
objj_msgSend(_24,"addChildWithName:andAttributes:","items",{"node":_nodeName});
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didRetrievePubSubNode:"),_22,_25);
objj_msgSend(_connection,"send:",_24);
}
}),new objj_method(sel_getUid("_didRetrievePubSubNode:"),function(_26,_27,_28){
with(_26){
if(objj_msgSend(_28,"type")=="result"){
_content=objj_msgSend(_28,"childrenWithName:","item");
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStrophePubSubNodeRetrievedNotification,_26);
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("pubSubNode:retrievedItems:"))){
objj_msgSend(_delegate,"pubSubNode:retrievedItems:",_26,YES);
}
}else{
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("pubSubNode:retrievedItems:"))){
objj_msgSend(_delegate,"pubSubNode:retrievedItems:",_26,NO);
}
CPLog.error("Cannot retrieve the contents of pubsub node");
CPLog.error(_28);
}
return NO;
}
}),new objj_method(sel_getUid("create"),function(_29,_2a){
with(_29){
var uid=objj_msgSend(_connection,"getUniqueId"),_2b=objj_msgSend(TNStropheStanza,"iq"),_2c=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_2b,"setTo:",_pubSubServer);
objj_msgSend(_2b,"setType:","set");
objj_msgSend(_2b,"setID:",uid);
objj_msgSend(_2b,"addChildWithName:andAttributes:","pubsub",{"xmlns":Strophe.NS.PUBSUB});
objj_msgSend(_2b,"addChildWithName:andAttributes:","create",{"node":_nodeName});
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didCreatePubSubNode:"),_29,_2c);
objj_msgSend(_connection,"send:",_2b);
}
}),new objj_method(sel_getUid("_didCreatePubSubNode:"),function(_2d,_2e,_2f){
with(_2d){
if(objj_msgSend(_2f,"type")=="result"){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStrophePubSubNodeCreatedNotification,_2d);
}else{
CPLog.error("Cannot create the pubsub node");
CPLog.error(_2f);
}
return NO;
}
}),new objj_method(sel_getUid("delete"),function(_30,_31){
with(_30){
var uid=objj_msgSend(_connection,"getUniqueId"),_32=objj_msgSend(TNStropheStanza,"iq"),_33=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_32,"setTo:",_pubSubServer);
objj_msgSend(_32,"setType:","set");
objj_msgSend(_32,"setID:",uid);
objj_msgSend(_32,"addChildWithName:andAttributes:","pubsub",{"xmlns":Strophe.NS.PUBSUB_OWNER});
objj_msgSend(_32,"addChildWithName:andAttributes:","delete",{"node":_nodeName});
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("didDeletePubSubNode:"),_30,_33);
objj_msgSend(_connection,"send:",_32);
}
}),new objj_method(sel_getUid("_didCreatePubSubNode:"),function(_34,_35,_36){
with(_34){
if(objj_msgSend(_36,"type")=="result"){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStrophePubSubNodeDeletedNotification,_34);
}else{
CPLog.error("Cannot delete the pubsub node");
CPLog.error(_36);
}
return NO;
}
}),new objj_method(sel_getUid("configureWithDict:"),function(_37,_38,_39){
with(_37){
var uid=objj_msgSend(_connection,"getUniqueId"),_3a=objj_msgSend(TNStropheStanza,"iq"),_3b=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_3a,"setTo:",_pubSubServer);
objj_msgSend(_3a,"setType:","set");
objj_msgSend(_3a,"setID:",uid);
objj_msgSend(_3a,"addChildWithName:andAttributes:","pubsub",{"xmlns":Strophe.NS.PUBSUB_OWNER});
objj_msgSend(_3a,"addChildWithName:andAttributes:","configure",{"node":_nodeName});
objj_msgSend(_3a,"addChildWithName:andAttributes:","x",{"xmlns":"jabber:x:data","type":"submit"});
objj_msgSend(_3a,"addChildWithName:andAttributes:","field",{"var":"FORM_TYPE","type":"hidden"});
objj_msgSend(_3a,"addChildWithName:","value");
objj_msgSend(_3a,"addTextNode:",Strophe.NS.PUBSUB_NODE_CONFIG);
objj_msgSend(_3a,"up");
objj_msgSend(_3a,"up");
for(var i=0;i<objj_msgSend(objj_msgSend(_39,"allKeys"),"count");i++){
var key=objj_msgSend(objj_msgSend(_39,"allKeys"),"objectAtIndex:",i),_3c=objj_msgSend(_39,"objectForKey:",key);
objj_msgSend(_3a,"addChildWithName:andAttributes:","field",{"var":key});
if(objj_msgSend(_3c,"class")==CPArray){
for(var j=0;j<objj_msgSend(_3c,"count");j++){
objj_msgSend(_3a,"addChildWithName:","value");
objj_msgSend(_3a,"addTextNode:",""+objj_msgSend(_3c,"objectAtIndex:",j)+"");
objj_msgSend(_3a,"up");
}
}else{
objj_msgSend(_3a,"addChildWithName:","value");
objj_msgSend(_3a,"addTextNode:",""+_3c+"");
objj_msgSend(_3a,"up");
}
objj_msgSend(_3a,"up");
}
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didConfigurePubSubNode:"),_37,_3b);
objj_msgSend(_connection,"send:",_3a);
}
}),new objj_method(sel_getUid("_didConfigurePubSubNode:"),function(_3d,_3e,_3f){
with(_3d){
if(objj_msgSend(_3f,"type")=="result"){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStrophePubSubNodeConfiguredNotification,_3d);
}else{
CPLog.error("Cannot configure the pubsub node");
CPLog.error(_3f);
}
return NO;
}
}),new objj_method(sel_getUid("publishItem:"),function(_40,_41,_42){
with(_40){
var uid=objj_msgSend(_connection,"getUniqueId"),_43=objj_msgSend(TNStropheStanza,"iq"),_44=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_43,"setTo:",_pubSubServer);
objj_msgSend(_43,"setType:","set");
objj_msgSend(_43,"setID:",uid);
objj_msgSend(_43,"addChildWithName:andAttributes:","pubsub",{"xmlns":Strophe.NS.PUBSUB});
objj_msgSend(_43,"addChildWithName:andAttributes:","publish",{"node":_nodeName});
objj_msgSend(_43,"addChildWithName:","item");
objj_msgSend(_43,"addNode:",_42);
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didPublishPubSubItem:"),_40,_44);
objj_msgSend(_connection,"send:",_43);
}
}),new objj_method(sel_getUid("_didPublishPubSubItem:"),function(_45,_46,_47){
with(_45){
if(objj_msgSend(_47,"type")=="result"){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_45,sel_getUid("_didUpdateContentAfterPublishing:"),TNStrophePubSubNodeRetrievedNotification,_45);
objj_msgSend(_45,"retrieveItems");
}else{
CPLog.error("Cannot publish the pubsub item in node");
CPLog.error(_47);
}
return NO;
}
}),new objj_method(sel_getUid("_didUpdateContentAfterPublishing:"),function(_48,_49,_4a){
with(_48){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_48,TNStrophePubSubNodeRetrievedNotification,_48);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStrophePubSubItemPublishedNotification,_48);
}
}),new objj_method(sel_getUid("retractItem:"),function(_4b,_4c,_4d){
with(_4b){
objj_msgSend(_4b,"retractItemWithID:",objj_msgSend(_4d,"valueForAttribute:","id"));
}
}),new objj_method(sel_getUid("retractItemWithID:"),function(_4e,_4f,_50){
with(_4e){
var uid=objj_msgSend(_connection,"getUniqueId"),_51=objj_msgSend(TNStropheStanza,"iq"),_52=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_51,"setTo:",_pubSubServer);
objj_msgSend(_51,"setType:","set");
objj_msgSend(_51,"setID:",uid);
objj_msgSend(_51,"addChildWithName:andAttributes:","pubsub",{"xmlns":Strophe.NS.PUBSUB});
objj_msgSend(_51,"addChildWithName:andAttributes:","retract",{"node":_nodeName});
objj_msgSend(_51,"addChildWithName:andAttributes:","item",{"id":_50});
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didRetractPubSubItem:"),_4e,_52);
objj_msgSend(_connection,"send:",_51);
}
}),new objj_method(sel_getUid("_didRetractPubSubItem:"),function(_53,_54,_55){
with(_53){
if(objj_msgSend(_55,"type")=="result"){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"addObserver:selector:name:object:",_53,sel_getUid("_didUpdateContentAfterRetracting:"),TNStrophePubSubNodeRetrievedNotification,_53);
objj_msgSend(_53,"retrieveItems");
}else{
CPLog.error("Cannot remove the pubsub item in node");
CPLog.error(_55);
}
return NO;
}
}),new objj_method(sel_getUid("_didUpdateContentAfterRetracting:"),function(_56,_57,_58){
with(_56){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"removeObserver:name:object:",_56,TNStrophePubSubNodeRetrievedNotification,_56);
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStrophePubSubItemRetractedNotification,_56);
}
}),new objj_method(sel_getUid("subscribe"),function(_59,_5a){
with(_59){
objj_msgSend(_59,"subscribeWithOptions:",nil);
}
}),new objj_method(sel_getUid("subscribeWithOptions:"),function(_5b,_5c,_5d){
with(_5b){
var uid=objj_msgSend(_connection,"getUniqueId"),_5e=objj_msgSend(TNStropheStanza,"iq"),_5f=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_5e,"setType:","set");
objj_msgSend(_5e,"setID:",uid);
objj_msgSend(_5e,"setTo:",_pubSubServer);
objj_msgSend(_5e,"addChildWithName:andAttributes:","pubsub",{"xmlns":Strophe.NS.PUBSUB});
objj_msgSend(_5e,"addChildWithName:andAttributes:","subscribe",{"node":_nodeName,"jid":objj_msgSend(objj_msgSend(_connection,"JID"),"bare")});
if(_5d&&objj_msgSend(_5d,"count")>0){
objj_msgSend(subscribeStanza,"up");
objj_msgSend(subscribeStanza,"addChildWithName:","options");
objj_msgSend(subscribeStanza,"addChildWithName:andAttributes:","x",{"xmlns":Strophe.NS.X_DATA,"type":"submit"});
objj_msgSend(subscribeStanza,"addChildWithName:andAttributes:","field",{"var":"FORM_TYPE","type":"hidden"});
objj_msgSend(subscribeStanza,"addChildWithName:","value");
objj_msgSend(subscribeStanza,"addTextNode:",Strophe.NS.PUBSUB_SUBSCRIBE_OPTIONS);
objj_msgSend(subscribeStanza,"up");
objj_msgSend(subscribeStanza,"up");
var _60=objj_msgSend(_5d,"allKeys");
for(var i=0;i<objj_msgSend(_60,"count");i++){
var key=objj_msgSend(_60,"objectAtIndex:",i),_61=objj_msgSend(_5d,"valueForKey:",key);
objj_msgSend(subscribeStanza,"addChildWithName:andAttributes:","field",{"var":key});
objj_msgSend(subscribeStanza,"addChildWithName:","value");
objj_msgSend(subscribeStanza,"addTextNode:",_61);
objj_msgSend(subscribeStanza,"up");
objj_msgSend(subscribeStanza,"up");
}
}
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didSubscribe:"),_5b,_5f);
objj_msgSend(_connection,"send:",_5e);
}
}),new objj_method(sel_getUid("_didSubscribe:"),function(_62,_63,_64){
with(_62){
if(objj_msgSend(_64,"type")=="result"){
var _65=objj_msgSend(_64,"firstChildWithName:","subscription"),_66=objj_msgSend(_65,"valueForAttribute:","subid"),_67=objj_msgSend(_65,"valueForAttribute:","subscription");
if(objj_msgSend(_66,"length")>0){
objj_msgSend(_subscriptionIDs,"addObject:",_66);
}
if(_67==="subscribed"){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStrophePubSubNodeSubscribedNotification,_62);
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("pubSubNode:subscribed:"))){
objj_msgSend(_delegate,"pubSubNode:subscribed:",_62,YES);
}
}
objj_msgSend(_62,"_setEventHandler");
}else{
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("pubSubNode:subscribed:"))){
objj_msgSend(_delegate,"pubSubNode:subscribed:",_62,NO);
}
CPLog.error("Cannot subscribe the pubsub node");
CPLog.error(_64);
}
return NO;
}
}),new objj_method(sel_getUid("addSubscriptionID:"),function(_68,_69,_6a){
with(_68){
objj_msgSend(_subscriptionIDs,"addObject:",_6a);
}
}),new objj_method(sel_getUid("unsubscribeWithSubID:"),function(_6b,_6c,_6d){
with(_6b){
var uid=objj_msgSend(_connection,"getUniqueId"),_6e=objj_msgSend(TNStropheStanza,"iq"),_6f=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:",uid,"id");
objj_msgSend(_6e,"setType:","set");
objj_msgSend(_6e,"setID:",uid);
objj_msgSend(_6e,"setTo:",_pubSubServer);
objj_msgSend(_6e,"addChildWithName:andAttributes:","pubsub",{"xmlns":Strophe.NS.PUBSUB});
objj_msgSend(_6e,"addChildWithName:andAttributes:","unsubscribe",{"node":_nodeName,"jid":objj_msgSend(objj_msgSend(_connection,"JID"),"bare")});
if(_6d){
objj_msgSend(_6e,"setValue:forAttribute:",_6d,"subid");
}
objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didUnsubscribe:"),_6b,_6f);
objj_msgSend(_connection,"send:",_6e);
}
}),new objj_method(sel_getUid("unsubscribe"),function(_70,_71){
with(_70){
if(objj_msgSend(_subscriptionIDs,"count")>0){
for(var i=0;i<objj_msgSend(_subscriptionIDs,"count");i++){
objj_msgSend(_70,"unsubscribeWithSubID:",objj_msgSend(_subscriptionIDs,"objectAtIndex:",i));
}
}else{
objj_msgSend(_70,"unsubscribeWithSubID:",nil);
}
}
}),new objj_method(sel_getUid("_didUnsubscribe:"),function(_72,_73,_74){
with(_72){
if(objj_msgSend(_74,"type")=="result"){
var _75=objj_msgSend(CPDictionary,"dictionary"),_76=objj_msgSend(objj_msgSend(objj_msgSend(_74,"firstChildWithName:","pubsub"),"firstChildWithName:","subscription"),"valueForAttribute:","subid");
if(objj_msgSend(_76,"length")>0){
objj_msgSend(_subscriptionIDs,"removeObject:",_76);
objj_msgSend(_75,"setObject:forKey:",_76,"subscriptionID");
}else{
if(objj_msgSend(_subscriptionIDs,"count")===1){
objj_msgSend(_subscriptionIDs,"removeAllObjects");
}
}
if(objj_msgSend(_subscriptionIDs,"count")===0){
if(_eventSelectorID){
objj_msgSend(_connection,"deleteRegisteredSelector:",_eventSelectorID);
_eventSelectorID=nil;
}
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStrophePubSubNodeUnsubscribedNotification,_72,_75);
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("pubSubNode:unsubscribed:"))){
objj_msgSend(_delegate,"pubSubNode:unsubscribed:",_72,YES);
}
}else{
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("pubSubNode:unsubscribed:"))){
objj_msgSend(_delegate,"pubSubNode:unsubscribed:",_72,NO);
}
CPLog.error("Cannot unsubscribe the pubsub node");
CPLog.error(_74);
}
return NO;
}
}),new objj_method(sel_getUid("numberOfSubscriptions"),function(_77,_78){
with(_77){
return objj_msgSend(_subscriptionIDs,"count");
}
}),new objj_method(sel_getUid("_setEventHandler"),function(_79,_7a){
with(_79){
var _7b=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","message","name",objj_msgSend(_pubSubServer,"node"),"from");
_eventSelectorID=objj_msgSend(_connection,"registerSelector:ofObject:withDict:",sel_getUid("_didReceiveEvent:"),_79,_7b);
}
}),new objj_method(sel_getUid("_didReceiveEvent:"),function(_7c,_7d,_7e){
with(_7c){
var _7f=objj_msgSend(_7e,"firstChildWithName:","event");
if(objj_msgSend(_7f,"namespace")!=Strophe.NS.PUBSUB_EVENT){
return YES;
}
if(objj_msgSend(_7f,"containsChildrenWithName:","subscription")){
var _80=objj_msgSend(_7f,"firstChildWithName:","subscription"),_81=objj_msgSend(_80,"valueForAttribute:","subscription"),_82=objj_msgSend(_80,"valueForAttribute:","node");
if(_81==="subscribed"&&_82===_nodeName){
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:",TNStrophePubSubNodeSubscribedNotification,_7c);
}
return YES;
}
if(_nodeName!=objj_msgSend(objj_msgSend(_7f,"firstChildWithName:","items"),"valueForAttribute:","node")){
return YES;
}
if(_delegate&&objj_msgSend(_delegate,"respondsToSelector:",sel_getUid("pubSubNode:receivedEvent:"))){
objj_msgSend(_delegate,"pubSubNode:receivedEvent:",_7c,_7e);
}
objj_msgSend(objj_msgSend(CPNotificationCenter,"defaultCenter"),"postNotificationName:object:userInfo:",TNStrophePubSubNodeEventNotification,_7c,_7e);
return YES;
}
}),new objj_method(sel_getUid("description"),function(_83,_84){
with(_83){
return _nodeName;
}
})]);
class_addMethods(_2,[new objj_method(sel_getUid("registerSelector:ofObject:forPubSubEventWithConnection:"),function(_85,_86,_87,_88,_89){
with(_85){
var _8a=objj_msgSend(CPDictionary,"dictionaryWithObjectsAndKeys:","message","name","headline","type",{"matchBare":YES},"options",Strophe.NS.PUBSUB_EVENT,"namespace");
return objj_msgSend(_89,"registerSelector:ofObject:withDict:",_87,_88,_8a);
}
}),new objj_method(sel_getUid("pubSubNodeWithNodeName:connection:pubSubServer:"),function(_8b,_8c,_8d,_8e,_8f){
with(_8b){
return objj_msgSend(objj_msgSend(TNPubSubNode,"alloc"),"initWithNodeName:connection:pubSubServer:",_8d,_8e,_8f);
}
}),new objj_method(sel_getUid("pubSubNodeWithNodeName:connection:pubSubServer:subscriptionIDs:"),function(_90,_91,_92,_93,_94,_95){
with(_90){
return objj_msgSend(objj_msgSend(TNPubSubNode,"alloc"),"initWithNodeName:connection:pubSubServer:subscriptionIDs:",_92,_93,_94,_95);
}
})]);
e;