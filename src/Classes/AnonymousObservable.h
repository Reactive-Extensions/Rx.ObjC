//
//  AnonymousObservable.h
//  RxTest
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
//

#import <Foundation/Foundation.h>
#import "IObservable.h"
#import "ActionsAndFuncs.h"

@interface AnonymousObservable : IObservable {
@private
	FuncObserverIDisposable observer;
}
-(id) initWithObserver: (FuncObserverIDisposable) observer;

@end
