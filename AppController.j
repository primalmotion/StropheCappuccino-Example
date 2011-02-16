/*
 * AppController.j
 * StropheCappuccinoExample
 *
 * Created by You on February 16, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

@import <Foundation/CPObject.j>
@import <StropheCappuccino/StropheCappuccino.j>


XMPP_BOSH_SERVICE   = @"http://ramucho:5280/http-bind";
XMPP_JID            = @"controller@ramucho";
XMPP_PASSWORD       = @"password";

@implementation AppController : CPObject
{
    TNStropheConnection _xmppConnection;
    
    CPTextField         _fieldJID;
    CPTextField         _fieldPassword;
    CPTextField         _fieldService;
    CPTextField         _labelStatus;
    CPTextField         _lastMessage;
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    var theWindow = [[CPWindow alloc] initWithContentRect:CGRectMakeZero() styleMask:CPBorderlessBridgeWindowMask],
        contentView = [theWindow contentView];

    // Interface building
    _fieldJID = [[CPTextField alloc] initWithFrame:CGRectMake(10, 10, 300, 30)];
    [_fieldJID setEditable:YES];
    [_fieldJID setBezeled:YES];
    [_fieldJID setPlaceholderString:@"JID"];
    [_fieldJID setStringValue:XMPP_JID];
    [contentView addSubview:_fieldJID];
    
    _fieldPassword = [[CPTextField alloc] initWithFrame:CGRectMake(10, 40, 300, 30)];
    [_fieldPassword setEditable:YES];
    [_fieldPassword setBezeled:YES];
    [_fieldPassword setPlaceholderString:@"Password"];
    [_fieldPassword setStringValue:XMPP_PASSWORD];
    [contentView addSubview:_fieldPassword];
    
    _fieldService = [[CPTextField alloc] initWithFrame:CGRectMake(10, 70, 300, 30)];
    [_fieldService setEditable:YES];
    [_fieldService setBezeled:YES];
    [_fieldService setPlaceholderString:@"BOSH URL"];
    [_fieldService setStringValue:XMPP_BOSH_SERVICE];
    [contentView addSubview:_fieldService];
    
    _labelStatus = [[CPTextField alloc] initWithFrame:CGRectMake(10, 110, 300, 30)];
    [_labelStatus setStringValue:@"disconnected"];
    [contentView addSubview:_labelStatus];
    
    var button = [[CPButton alloc] initWithFrame:CGRectMake(244, 110, 100, 30)];
    [button setTitle:@"Connect"];
    [button sizeToFit];
    [button setTarget:self];
    [button setAction:@selector(connect:)];
    [contentView addSubview:button];
    
    var title = [[CPTextField alloc] initWithFrame:CGRectMake(10, 150, 400, 300)];
    [title setStringValue:@"Last received message:"];
    [title setFont:[CPFont boldSystemFontOfSize:12]];
    [contentView addSubview:title];
    
    _lastMessage = [[CPTextField alloc] initWithFrame:CGRectMake(10, 170, 400, 300)];
    [contentView addSubview:_lastMessage];
    
    
    [theWindow orderFront:self];
}

#pragma mark -
#pragma mark Actions

- (IBAction)connect:(id)aSender
{
    // Connection initialization
    _xmppConnection = [TNStropheConnection connectionWithService:[_fieldService stringValue] andDelegate:self];
    
    // Connection
    [_xmppConnection connectWithJID:[TNStropheJID stropheJIDWithString:[_fieldJID stringValue]] andPassword:[_fieldPassword stringValue]];
    
    [_labelStatus setStringValue:@"connecting..."];
}



#pragma mark -
#pragma mark XMPP Processing

/*! called when a message stanza is received
*/
- (BOOL)xmppMessage:(TNStropheStanza)aMessage
{
    CPLog.info([aMessage stringValue]);
    
    // if stanza contains a body, display it
    if ([aMessage firstChildWithName:@"body"])
        [_lastMessage setStringValue:[[aMessage firstChildWithName:@"body"] text]];
        
    // return YES to keep selector registred
    // and to be able to continue to receive message
    return YES;
}


#pragma mark -
#pragma mark TNStropheConnection delegates

/*! called by TNStropheConnection when it's connected
*/
- (void)onStropheConnected:(TNStropheConnection)aConnection
{
    [_labelStatus setStringValue:@"connected"];
    
    // send initial presence (empty one)
    [_xmppConnection send:[TNStropheStanza presence]];

    // register xmppMessage: as handler for any messages from anybody
    var params = [CPDictionary dictionaryWithObjectsAndKeys:@"message", @"name"]
    [_xmppConnection registerSelector:@selector(xmppMessage:) ofObject:self withDict:params];
}

/*! called by TNStropheConnection if connection fails
*/
- (void)onStropheConnectFail:(TNStropheConnection)aConnection
{
    [_labelStatus setStringValue:@"connection failed."];
}

@end
