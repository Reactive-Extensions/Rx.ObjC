//
//  RxDemoViewController.m
//  RxDemo
//
//  Created by Jeffrey van Gogh on 6/17/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "RxDemoViewController.h"
#import "IObservable.h"
#import "IObserver.h"
#import "Observable.h"
#import "Observer.h"
#import "ObservableExtensions.h"

@implementation RxDemoViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	//[button addTarget:self action:@selector(click:) forControlEvents: UIControlEventTouchUpInside];
	/*IObservable* observable = [Observable ToObservable: button forControlEvents: UIControlEventTouchUpInside];
	 */
	IObservable* observable = [[Observable Return: @"Test"] Select: ^(id value) { NSString* msg = (NSString*)value; return (id)([msg stringByAppendingString: msg]); }];
	 [observable Subscribe: [Observer Create: ^(id sender) {
		UIAlertView *alert = [[UIAlertView alloc] 
							  initWithTitle:@"Your Message" message: ((NSString*)sender)
							  delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes", nil];
		[alert show];
		[alert release];
	}]];
	
}



/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
