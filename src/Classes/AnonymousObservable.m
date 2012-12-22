//
//  AnonymousObservable.m
//  RxTest
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
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
