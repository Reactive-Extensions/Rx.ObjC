//
//  NamedBlock.m
//  RxDemo
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
//

#import "EventWrapper.h"
#import "Observable.h"

@implementation EventWrapper

-(id) initWithObserver: (id<IObserver>) observer forControl:(UIControl*) control forControlEvents:(UIControlEvents)controlEvents;
{
	if (self = [super init])
	{
		self->control = control;
		self->controlEvents = controlEvents;
		self->observer = observer;
		[control addTarget: self action: @selector(invoke:) forControlEvents: controlEvents];
		return self;
	}
	return nil;
}

-(void) unhook;
{
	[control removeTarget: self action: @selector(invoke:) forControlEvents: self->controlEvents];
}


-(void) invoke: (id) sender
{
	[self->observer OnNext: sender];
}

-(void) dealloc
{
	self->control = nil;
	self->observer = nil;
	[super dealloc];
}
@end