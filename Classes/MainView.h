#import <UIKit/UIKit.h>


@interface MainView : UIViewController {
	UIButton *startBtn;
	UIButton *aboutBtn;
	UIButton *exitBtn;
	UILabel *startLabel;
	UILabel *aboutLabel;
	UILabel *exitLabel;
	UIImageView *aboutImageView;
	UILabel *aboutLabel2;
	UILabel *descriptionLabel;
	UIButton *backBtn;
	UILabel *backBtnLabel;
	

}
@property (nonatomic,retain) IBOutlet UIButton *startBtn;
@property (nonatomic,retain) IBOutlet UIButton *aboutBtn;
@property (nonatomic,retain) IBOutlet UIButton *exitBtn;
@property (nonatomic,retain) IBOutlet UILabel *startLabel;
@property (nonatomic,retain) IBOutlet UILabel *aboutLabel;
@property (nonatomic,retain) IBOutlet UILabel *exitLabel;
@property (nonatomic,retain) IBOutlet UIImageView *aboutImageView;
@property (nonatomic,retain) IBOutlet UILabel *aboutLabel2;
@property (nonatomic,retain) IBOutlet UILabel *descriptionLabel;
@property (nonatomic,retain) IBOutlet UIButton *backBtn;
@property (nonatomic,retain) IBOutlet UILabel *backBtnLabel;

- (IBAction) startBtnClicked: (id) sender;
- (IBAction) aboutBtnClicked: (id) sender;
- (IBAction) exitBtnClicked: (id) sender;
- (IBAction) backBtnClicked: (id) sender;

@end
