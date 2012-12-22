//
//  Disposable.h
//  RxTest
//
// Copyright (c) Microsoft Corporation. All rights reserved. See License.txt in the project root
//

#import <Foundation/Foundation.h>
#import "IDisposable.h"
#import "ActionsAndFuncs.h"

@interface Disposable : NSObject {

}
+(id <IDisposable>) Create:(Action) action;
@end
