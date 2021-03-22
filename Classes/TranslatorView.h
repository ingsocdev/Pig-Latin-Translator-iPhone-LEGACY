#import <UIKit/UIKit.h>


@interface TranslatorView : UIViewController {
	UITextField *rawTextField;
	UIButton *translateBtn, *backBtn;
	UILabel *playerOneScoreLabel,*playerTwoScoreLabel,*translatedText;
	int playerOneScore,playerTwoScore;
	bool isPlayerOneTurn;
	
}
@property (nonatomic,retain) IBOutlet UITextField *rawTextField;
@property (nonatomic,retain) IBOutlet UIButton *translateBtn;
@property (nonatomic,retain) IBOutlet UIButton *backBtn;
@property (nonatomic,retain) IBOutlet UILabel *playerOneScoreLabel;
@property (nonatomic,retain) IBOutlet UILabel *playerTwoScoreLabel;
@property (nonatomic,retain) IBOutlet UILabel *translatedText;

-(IBAction) textEntered: (id) sender;
-(IBAction) dismissKeyboard:(id) sender;
-(IBAction) translateBtnClicked: (id) sender;


@end
