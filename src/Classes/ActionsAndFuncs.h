/*
 *  ActionsAndFuncs.h
 *  RxTest
 *
 * Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
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
