//
//  ObservableExtensions.h
//  RxDemo
//
//  Created by Jeffrey van Gogh on 7/9/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "IObservable.h"
#import "ActionsAndFuncs.h"


@interface IObservable (linq) 
-(IObservable*) Where:(Predicate) predicate;		
-(IObservable*) Select:(FuncIdId) selector;		
@end
