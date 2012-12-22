//
//  Observable.m
//  RxTest
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
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
