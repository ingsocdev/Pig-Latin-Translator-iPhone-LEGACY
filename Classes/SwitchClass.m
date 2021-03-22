#import "SwitchClass.h"
#import "MainView.h"
#import "TranslatorView.h"

@implementation SwitchClass
@synthesize mainView;
@synthesize translatorView;

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void) viewDidLoad
{
	MainView *mainView_a=[[MainView alloc] initWithNibName:@"MainView" bundle:nil];
	self.mainView = mainView_a;
	
	[self.view insertSubview:mainView.view atIndex:0];
	[mainView release];
	[super viewDidLoad];
}

- (void) switchMainView: (id) sender
{
	MainView *mainView_a=[[MainView alloc] initWithNibName:@"MainView" bundle:nil];
	self.mainView = mainView_a;
	[self.view insertSubview:mainView.view atIndex:0];
	[super.view bringSubviewToFront:mainView.view];
	[mainView release];	
}

- (void) switchTranslatorView: (id) sender
{
	MainView *mainView_a=[[MainView alloc] initWithNibName:@"MainView" bundle:nil];
	self.mainView = mainView_a;
	[self.view insertSubview:mainView.view atIndex:0];
	[super.view bringSubviewToFront:mainView.view];
	[mainView release];	
}



- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	if(self.mainView.view.superview == nil)
	{
		self.mainView = nil;
	}
	else if(self.translatorView.view.superview == nil)
	{
		self.mainView = nil;
	}
	
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
	self.mainView=nil;
	self.translatorView=nil;
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
