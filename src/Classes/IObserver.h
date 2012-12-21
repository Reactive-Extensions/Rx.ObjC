//
//  IObserver.h
//  RxTest
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol IObserver
-(void) OnNext:(id) value;
-(void) OnError:(NSException*) exception;
-(void) OnCompleted;
@end
