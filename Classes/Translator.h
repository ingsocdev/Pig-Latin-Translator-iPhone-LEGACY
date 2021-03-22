

#import <Foundation/Foundation.h>


@interface Translator : NSObject {
NSString *englishString;

}

-(NSString*)englishToPigLatin:(NSString *)rawInput;
@end
