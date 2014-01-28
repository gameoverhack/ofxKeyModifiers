/*
 *  KeyModifiers.h
 *
 *  Created by gameover on 20/12/11.
 *  Copyright 2011 trace media. All rights reserved.
 *
 */

#ifndef _H_KEYMODIFIERS
#define _H_KEYMODIFIERS

#include "ofMain.h"

#ifdef __OBJC__
@class AppleKeyModifiers;
#endif

class KeyModifiers {

public:
	
    KeyModifiers();
    ~KeyModifiers();
    
    bool getAppleCommandModifier();
    bool getAppleShiftModifier();
    bool getAppleControlModifier();
    bool getAppleAlternateModifier();
    
private:
	
#ifdef __OBJC__
	AppleKeyModifiers* modifiers; //only obj-c needs to know the type of this protected var
#else
	void* modifiers;
#endif
};


#endif