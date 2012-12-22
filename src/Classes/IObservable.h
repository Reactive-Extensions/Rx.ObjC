//
//  IObservable.h
//  RxTest
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
//
#import <Foundation/Foundation.h>
#import "IDisposable.h"
#import "IObserver.h"


@interface  IObservable : NSObject
- (id<IDisposable>) Subscribe:(id<IObserver>) observer;

@end
