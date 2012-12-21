//
//  AnonymousObservable.h
//  RxTest
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
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
