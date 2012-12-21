//
//  AnonymousDisposable.m
//  RxTest
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AnonymousDisposable.h"


@implementation AnonymousDisposable
	-(id) initWithAction: (Action) actionToUse
{
	if (self = [super init])
	{
		self->action = [actionToUse copy];
		return self;
	}
	return nil;
}
-(void) Dispose
{
	self->action();
}

-(void) dealloc
{
	[self->action dealloc];
	self->action = nil;
	[super dealloc];
}
@end
