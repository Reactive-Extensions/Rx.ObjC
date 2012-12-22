//
//  Observable.h
//  RxTest
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
//
#import "IObservable.h"
#import "ActionsAndFuncs.h"

@interface Observable : NSObject {

}
+(IObservable*) Create:(FuncObserverAction) observer;
+(IObservable*) Return:(id) value;
+(IObservable*) ToObservable:(UIControl*) control forControlEvents:(UIControlEvents)controlEvents;
@end
