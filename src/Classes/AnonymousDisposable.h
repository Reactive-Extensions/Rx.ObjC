//
//  AnonymousDisposable.h
//  RxTest
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDisposable.h"
#import "ActionsAndFuncs.h"


@interface AnonymousDisposable : NSObject <IDisposable>
{
	@private
	Action action;
}
-(id) initWithAction: (Action) action;
@end
		