#import <UIKit/UIKit.h>

@class SwitchClass;

@interface Pig_LatinAppDelegate : NSObject <UIApplicationDelegate> {
    SwitchClass *switchClass;
	UIWindow *window;
}

@property (nonatomic,retain) IBOutlet SwitchClass *switchClass;
@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

