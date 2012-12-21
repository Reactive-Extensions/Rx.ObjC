//
//  ObservableExtensions.m
//  RxDemo
//
//  Created by Jeffrey van Gogh on 7/9/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "ObservableExtensions.h"
#import "Observable.h"
#import "Observer.h"
#import "IDisposable.h"


@implementation IObservable (linq)
-(IObservable*)Where:(Predicate) predicate
{
	return [Observable Create: ^(id<IObserver> observer)
			{
				__block id<IDisposable> subscription = [self Subscribe: [Observer 
				Create: (^(id value) 
				{ 				
					bool matches = false;
					@try
					{
						matches = predicate(value);
					}
					@catch(NSException *exception)
					{
						[observer OnError: exception];
						return;
					}
					if (matches)
					{
						[observer OnNext: value];
					}
				})
				andOnError: (^(NSException * error) 
				{
					[observer OnError: error];
				})
			    andOnCompleted: (^()
				{
					[observer OnCompleted];
				})]];
				return Block_copy(^() { [subscription Dispose]; });
			}];
}			
-(IObservable*)Select:(FuncIdId) selector
{
	return [Observable Create: ^(id<IObserver> observer)
			{
				__block id<IDisposable> subscription = [self Subscribe: [Observer 
																		 Create: (^(id value) 
																				  { 				
																					  id newValue = nil;
																					  @try
																					  {
																						  newValue = selector(value);
																					  }
																					  @catch(NSException *exception)
																					  {
																						  [observer OnError: exception];
																						  return;
																					  }
																					  [observer OnNext: newValue];
																				  })
																		 andOnError: (^(NSException * error) 
																					  {
																						  [observer OnError: error];
																					  })
																		 andOnCompleted: (^()
																						  {
																							  [observer OnCompleted];
																						  })]];
				return Block_copy(^() { [subscription Dispose]; });
			}];
}			
@end
