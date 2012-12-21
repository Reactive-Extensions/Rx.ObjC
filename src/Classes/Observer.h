//
//  Observer.h
//  RxTest
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
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
