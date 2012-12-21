//
//  Disposable.m
//  RxTest
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Disposable.h"
#import "AnonymousDisposable.h"

@implementation Disposable
+(id <IDisposable>) Create:(Action) action
{
	AnonymousDisposable *myDisposable = [AnonymousDisposable alloc];
	[myDisposable initWithAction: action];
	return myDisposable;
}
@end
