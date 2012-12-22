//
//  NamedBlock.h
//  RxDemo
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
//

#import <Foundation/Foundation.h>
#import "IObserver.h"
#import "IObservable.h"
#import "ActionsAndFuncs.h"
#import <UIKit/UIKit.h>

@interface EventWrapper : NSObject
{
@private
	id<IObserver> observer;
	UIControl* control;
    UIControlEvents controlEvents;
}
-(id) initWithObserver: (id<IObserver>) observer forControl:(UIControl*) control forControlEvents:(UIControlEvents)controlEvents;
-(void) invoke: (id) sender;
-(void) unhook;
  
@end
