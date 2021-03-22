#import "MainView.h"

@implementation MainView

@synthesize startBtn;
@synthesize aboutBtn;
@synthesize exitBtn;
@synthesize startLabel;
@synthesize aboutLabel;
@synthesize exitLabel;
@synthesize aboutImageView;
@synthesize aboutLabel2;
@synthesize descriptionLabel;
@synthesize backBtn;
@synthesize backBtnLabel;

-(IBAction) startBtnClicked: (id) sender
{
	
}

-(IBAction) aboutBtnClicked: (id) sender
{
	startBtn.hidden=YES;
	aboutBtn.hidden=YES;
	exitBtn.hidden=YES;
	startLabel.hidden=YES;
	aboutLabel.hidden=YES;
	exitLabel.hidden=YES;
	aboutImageView.hidden=NO;
	aboutLabel2.hidden=NO;
	backBtn.hidden=NO;
	backBtnLabel.hidden=NO;
	descriptionLabel.hidden=NO;
	
	
}

-(IBAction) exitBtnClicked: (id) sender
{
	exit(0);
}

-(IBAction) backBtnClicked: (id) sender
{
	startBtn.hidden=NO;
	aboutBtn.hidden=NO;
	exitBtn.hidden=NO;
	startLabel.hidden=NO;
	aboutLabel.hidden=NO;
	exitLabel.hidden=NO;
	aboutImageView.hidden=YES;
	aboutLabel2.hidden=YES;
	backBtn.hidden=YES;
	backBtnLabel.hidden=YES;
	descriptionLabel.hidden=YES;
}


- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[startBtn release];
	[aboutBtn release];
	[exitBtn release];
	[startLabel release];
	[aboutLabel release];
	[exitLabel release];
	[aboutImageView release];
	[aboutLabel2 release];
	[backBtn release];
	[backBtnLabel release];
	[descriptionLabel release];
    [super dealloc];
}


@end
