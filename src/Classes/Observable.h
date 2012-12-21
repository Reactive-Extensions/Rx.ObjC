//
//  Observable.h
//  RxTest
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//
#import "IObservable.h"
#import "ActionsAndFuncs.h"

@interface Observable : NSObject {

}
+(IObservable*) Create:(FuncObserverAction) observer;
+(IObservable*) Return:(id) value;
+(IObservable*) ToObservable:(UIControl*) control forControlEvents:(UIControlEvents)controlEvents;
@end
