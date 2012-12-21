//
//  Observable.m
//  RxTest
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Observable.h"
#import "AnonymousObservable.h"
#import "Disposable.h"
#import "EventWrapper.h"

@implementation Observable
+(IObservable*) Create:(FuncObserverAction) observer
{
	FuncObserverIDisposable innerObserver = ^(id<IObserver> source) { return [Disposable Create: observer(source) ]; };
	return [[AnonymousObservable alloc] initWithObserver: innerObserver];
}

+(IObservable*) Return:(id) value
{
	return [Observable Create: ^(id<IObserver> observer) 
	{
		[observer OnNext: value];
		[observer OnCompleted];
		return ^(){};
	}];
}
+(IObservable*) ToObservable:(UIControl*) control forControlEvents:(UIControlEvents)controlEvents
{
	return [Observable Create: ^(id<IObserver> observer)
			{
				__block EventWrapper* wrapper = [[EventWrapper alloc] initWithObserver: observer forControl: control forControlEvents:controlEvents];
				Action subscription = ^() { [wrapper unhook]; };
				return Block_copy(subscription); 
			}];
}

@end
