//
//  AnonymousObservable.m
//  RxTest
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "AnonymousObservable.h"


@implementation AnonymousObservable

-(id) initWithObserver: (FuncObserverIDisposable) observer
{
	if (self = [super init])
	{
		self->observer = [observer copy];
		return self;
	}
	return nil;
}
-(id<IDisposable>) Subscribe:(id<IObserver>) observer
{
	return self->observer(observer);
}

-(void) dealloc
{
	[self->observer dealloc];
	self->observer = nil;
	[super dealloc];
}
@end
