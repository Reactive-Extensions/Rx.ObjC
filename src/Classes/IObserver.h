//
//  IObserver.h
//  RxTest
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
//

#import <UIKit/UIKit.h>


@protocol IObserver
-(void) OnNext:(id) value;
-(void) OnError:(NSException*) exception;
-(void) OnCompleted;
@end
