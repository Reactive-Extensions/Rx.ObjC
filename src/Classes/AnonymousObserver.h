//
//  AnonymousObserver.h
//  RxTest
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "IObserver.h"
#import "ActionsAndFuncs.h"

@interface AnonymousObserver : NSObject<IObserver> {
@private
	Action onNext;
	ActionException onError;
    Action onCompleted;
}
-(id) initWithOnNext: (ActionId) onNext;
-(id) initWithOnNext: (ActionId) onNext andOnError: (ActionException) onError;
-(id) initWithOnNext: (ActionId) onNext andOnError: (ActionException) onError andOnCompleted: (Action) onCompleted;
-(id) initWithOnNext: (ActionId) onNext andOnCompleted: (Action) onCompleted;
-(id) initWithOnError: (ActionException) onError;
-(id) initWithOnError: (ActionException) onError andOnCompleted: (Action) onCompleted;
-(id) initWithOnCompleted: (Action) onCompleted;

@end
