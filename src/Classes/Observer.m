//
//  Observer.m
//  RxTest
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
//

#import "Observer.h"


@implementation Observer
+(id <IObserver>) Create:(ActionId) onNext
{
	return [[AnonymousObserver alloc] initWithOnNext: onNext];
}
+(id <IObserver>) Create:(ActionId) onNext andOnError: (ActionException) onError
{
	return [[AnonymousObserver alloc] initWithOnNext: onNext andOnError: onError];	
}
+(id <IObserver>) Create:(ActionId) onNext andOnError: (ActionException) onError andOnCompleted: (Action) onCompleted
{
	return [[AnonymousObserver alloc] initWithOnNext: onNext andOnError: onError andOnCompleted: onCompleted];	
}

@end
