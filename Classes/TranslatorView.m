#import "TranslatorView.h"
#import "Translator.h"

@implementation TranslatorView

@synthesize rawTextField;
@synthesize translateBtn;
@synthesize backBtn;
@synthesize playerOneScoreLabel;
@synthesize playerTwoScoreLabel;
@synthesize translatedText;

- (void) viewDidLoad
{
	isPlayerOneTurn = TRUE;
	
	NSString *score = [NSString stringWithFormat:@"Player 1 Score: %i",playerOneScore];
	playerOneScoreLabel.text = score;
	score = [NSString stringWithFormat:@"Player 2 Score: %i",playerTwoScore];
	playerTwoScoreLabel.text=score;
	rawTextField.autocorrectionType = UITextAutocorrectionTypeNo;
	[super viewDidLoad];
}

-(IBAction) textEntered: (id) sender
{
	
}

-(IBAction) dismissKeyboard:(id) sender
{
	[rawTextField resignFirstResponder];
}

-(IBAction) translateBtnClicked: (id) sender
{
	NSString *finishedTranslation = @"";
	Translator *myTranslator = [[Translator alloc] init];
	if (isPlayerOneTurn == TRUE)
	{
	NSString *rawInput = rawTextField.text;
		NSString *englishWord = [NSString stringWithFormat:@"%@",rawTextField.text];
		[[NSUserDefaults standardUserDefaults] setObject:englishWord forKey:@"englishWord"];
	NSArray *wordArary = [rawInput componentsSeparatedByString:@" "];
	NSString *currentString;
	for (int index = 0; index < [wordArary count]; index++)
	{
		currentString = [myTranslator englishToPigLatin:[wordArary objectAtIndex:index]];
		finishedTranslation = [finishedTranslation stringByAppendingString: currentString];
	}
	translatedText.text = finishedTranslation;
	rawTextField.text = @"";
	rawTextField.placeholder = @"Player 2: now translate the pig latin back to english";
	isPlayerOneTurn = FALSE;
	}
	else {
		NSString *score;
		
		NSString *wordGetter = [[NSUserDefaults standardUserDefaults] stringForKey:@"englishWord"];
		NSString *englishWord = wordGetter;
		if ([englishWord isEqualToString:rawTextField.text]==TRUE)
		{
			playerTwoScore +=1;
			score = [NSString stringWithFormat:@"Player 2 Score: %i",playerTwoScore];
			playerTwoScoreLabel.text = score;
			playerTwoScoreLabel.textColor =  [UIColor greenColor];
			playerOneScoreLabel.textColor = [UIColor blackColor];
			
		}
		else {
			playerOneScore +=1;
			score = [NSString stringWithFormat:@"Player 1 Score: %i",playerOneScore];
			playerOneScoreLabel.text = score;
			playerOneScoreLabel.textColor = [UIColor greenColor];
			playerTwoScoreLabel.textColor = [UIColor blackColor];
		}
		rawTextField.text = @"";
		rawTextField.placeholder = @"Player 1: type in your text then hand to Player 2";
		isPlayerOneTurn = TRUE;
	}
		
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
	self.view = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
