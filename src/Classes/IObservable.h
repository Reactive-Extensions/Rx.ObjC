//
//  IObservable.h
//  RxTest
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "IDisposable.h"
#import "IObserver.h"


@interface  IObservable : NSObject
- (id<IDisposable>) Subscribe:(id<IObserver>) observer;

@end
