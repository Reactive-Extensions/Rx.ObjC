//
//  ObservableExtensions.h
//  RxDemo
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "IObservable.h"
#import "ActionsAndFuncs.h"


@interface IObservable (linq) 
-(IObservable*) Where:(Predicate) predicate;		
-(IObservable*) Select:(FuncIdId) selector;		
@end
