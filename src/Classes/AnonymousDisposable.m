//
//  AnonymousDisposable.m
//  RxTest
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
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
