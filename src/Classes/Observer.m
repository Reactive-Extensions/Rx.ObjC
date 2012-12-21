//
//  Observer.m
//  RxTest
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
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
