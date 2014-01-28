/*
 *  KeyModifiers.mm
 *
 *  Created by gameover on 20/12/11.
 *  Copyright 2011 trace media. All rights reserved.
 *
 */

#include "KeyModifiers.h"

#import <AppKit/AppKit.h>


@interface AppleKeyModifiers : NSObject
{

}

- (id)setup;
- (BOOL)getAppleCommandModifier;
- (BOOL)getAppleShiftModifier;
- (BOOL)getAppleControlModifier;
- (BOOL)getAppleAlternateModifier;

@end

@implementation AppleKeyModifiers;

- (id) setup{
	
	NSLog(@"KeyModifiers setup");
	self = [super init];
	return self;
}

// could impliment all of these on mac, but I guess we really just want the command key??
//enum {
//    NSAlphaShiftKeyMask         = 1 << 16,
//    NSShiftKeyMask              = 1 << 17,
//    NSControlKeyMask            = 1 << 18,
//    NSAlternateKeyMask          = 1 << 19,
//    NSCommandKeyMask            = 1 << 20,
//    NSNumericPadKeyMask         = 1 << 21,
//    NSHelpKeyMask               = 1 << 22,
//    NSFunctionKeyMask           = 1 << 23,
//#if MAC_OS_X_VERSION_MAX_ALLOWED >= MAC_OS_X_VERSION_10_4
//    NSDeviceIndependentModifierFlagsMask    = 0xffff0000UL
//#endif
//};

- (BOOL)getAppleCommandModifier{
    return (([[NSApp currentEvent] modifierFlags] & NSCommandKeyMask) == NSCommandKeyMask);
}

- (BOOL)getAppleShiftModifier{
    return (([[NSApp currentEvent] modifierFlags] & NSShiftKeyMask) == NSShiftKeyMask);
}

- (BOOL)getAppleControlModifier{
    return (([[NSApp currentEvent] modifierFlags] & NSControlKeyMask) == NSControlKeyMask);
}

- (BOOL)getAppleAlternateModifier{
    return (([[NSApp currentEvent] modifierFlags] & NSAlternateKeyMask) == NSAlternateKeyMask);
}

@end

//--------------------------------------------------------------
KeyModifiers::KeyModifiers(){
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    modifiers = [[AppleKeyModifiers alloc] setup];
    [pool release];
}

//--------------------------------------------------------------
KeyModifiers::~KeyModifiers(){
    
}

bool KeyModifiers::getAppleCommandModifier(){
    return (bool)[modifiers getAppleCommandModifier];
}

bool KeyModifiers::getAppleShiftModifier(){
    return (bool)[modifiers getAppleShiftModifier];
}

bool KeyModifiers::getAppleControlModifier(){
    return (bool)[modifiers getAppleControlModifier];
}

bool KeyModifiers::getAppleAlternateModifier(){
    return (bool)[modifiers getAppleAlternateModifier];
}