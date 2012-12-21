/*
 *  ActionsAndFuncs.h
 *  RxTest
 *
 *  Created by Jeffrey van Gogh on 6/17/10.
 *  Copyright 2010 __MyCompanyName__. All rights reserved.
 *
 */

#import "IObserver.h"
#import "IDisposable.h"

typedef void(^Action)();
typedef void(^ActionId)(id);
typedef void(^ActionException)(NSException*);
typedef void(^ActionString)(NSString*);
typedef Action(^FuncObserverAction)(id<IObserver> observer);
typedef id<IDisposable>(^FuncObserverIDisposable)(id<IObserver> observer);
typedef int(^Predicate)(id value);
typedef id(^FuncIdId)(id value);
