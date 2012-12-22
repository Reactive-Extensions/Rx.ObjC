//
//  Disposable.m
//  RxTest
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
//

#import "Disposable.h"
#import "AnonymousDisposable.h"

@implementation Disposable
+(id <IDisposable>) Create:(Action) action
{
	AnonymousDisposable *myDisposable = [AnonymousDisposable alloc];
	[myDisposable initWithAction: action];
	return myDisposable;
}
@end
