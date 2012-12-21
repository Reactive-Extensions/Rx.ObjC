//
//  NamedBlock.h
//  RxDemo
//
//  Created by Jeffrey van Gogh on 7/9/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
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
