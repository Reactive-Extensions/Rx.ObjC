//
//  AnonymousObserver.m
//  RxTest
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
//

#import "AnonymousObserver.h"


@implementation AnonymousObserver
-(id) initWithOnNext: (ActionId) onNext
{
	ActionException onError = ^(NSException* exception) {};
	Action onCompleted = ^() {};
	return [self initWithOnNext: onNext andOnError: onError andOnCompleted: onCompleted];	
}
-(id) initWithOnNext: (ActionId) onNext andOnError: (ActionException) onError
{
	Action onCompleted = ^() {};
	return[self initWithOnNext: onNext andOnError: onError andOnCompleted: onCompleted];	
}
-(id) initWithOnNext: (ActionId) onNext andOnError: (ActionException) onError andOnCompleted: (Action) onCompleted
{	
	if (self = [super init])
	{
		self->onNext = [onNext copy];
		self->onError = [onError copy];
		self->onCompleted = [onCompleted copy];
		return self;
	}
	return nil;
}
-(id) initWithOnNext: (ActionId) onNext andOnCompleted: (Action) onCompleted
{
	ActionException onError = ^(NSException* exception) {};
    return [self initWithOnNext: onNext andOnError: onError andOnCompleted: onCompleted];
}
-(id) initWithOnError: (ActionException) onError
{
	ActionId onNext = ^(id value) {};
	Action onCompleted = ^() {};
	return [self initWithOnNext: onNext andOnError: onError andOnCompleted: onCompleted];
}
-(id) initWithOnError: (ActionException) onError andOnCompleted: (Action) onCompleted
{
	ActionId onNext = ^(id value) {};
	return [self initWithOnNext: onNext andOnError: onError andOnCompleted: onCompleted];	
}
-(id) initWithOnCompleted: (Action) onCompleted
{
	ActionId onNext = ^(id value) {};
	ActionException onError = ^(NSException* exception) {};
	return [self initWithOnNext: onNext andOnError: onError andOnCompleted: onCompleted];
}

-(void) OnNext:(id)value
{
	self->onNext(value);
}

-(void) OnError:(NSException*) error
{
	self->onError(error);
}

-(void) OnCompleted
{
	self->onCompleted();
}

-(void) dealloc
{
	[self->onNext dealloc];
	self->onNext = nil;
	[self->onError dealloc];
	self->onError = nil;
	[self->onCompleted dealloc];
	self->onCompleted = nil;
	[super dealloc];
}
@end
