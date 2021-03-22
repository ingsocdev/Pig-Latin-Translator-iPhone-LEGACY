#import <UIKit/UIKit.h>

@class MainView;
@class TranslatorView;

@interface SwitchClass : UIViewController {
	MainView *mainView;
	TranslatorView *translatorView;

}

@property (retain,nonatomic) MainView *mainView;
@property (retain,nonatomic) TranslatorView *translatorView;

-(IBAction) switchMainView: (id) sender;
-(IBAction) switchTranslatorView: (id) sender;


@end
