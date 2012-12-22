//
//  Observer.h
//  RxTest
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
//

#import <Foundation/Foundation.h>
#import "IObserver.h"
#import "AnonymousObserver.h"

@interface Observer : NSObject {
}
+(id <IObserver>) Create:(ActionId) onNext;
+(id <IObserver>) Create:(ActionId) onNext andOnError: (ActionException) onError;
+(id <IObserver>) Create:(ActionId) onNext andOnError: (ActionException) onError andOnCompleted: (Action) onCompleted;

@end
