//
//  Translator.m
//  Pig Latin Game
//
//  Created by Tom Brown on 4/2/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Translator.h"


@implementation Translator

-(NSString *) englishToPigLatin:(NSString *)rawInput
{
	NSString *translatedString = [rawInput lowercaseString];
	NSString * characterAtIndex;
	BOOL startsWithConsenent = FALSE;
	BOOL hitVowel = FALSE;
	BOOL ayAdded = FALSE;
	
	int length = translatedString.length;
	
	for(int index = 0; index < length; index ++)
	{
		characterAtIndex = [rawInput substringWithRange:NSMakeRange(index, 1)];
		if ([characterAtIndex isEqualToString:@"a"]==FALSE 
			&& [characterAtIndex isEqualToString:@"e"]==FALSE 
			&& [characterAtIndex isEqualToString:@"i"]==FALSE
			&& [characterAtIndex isEqualToString:@"o"] == FALSE
			&& [characterAtIndex isEqualToString:@"u"] == FALSE)
		{
			if (index == 0)
			{
				startsWithConsenent = TRUE;
			}
			if (hitVowel == FALSE)
			{
			translatedString = [translatedString stringByAppendingFormat:characterAtIndex];
				translatedString = [translatedString substringFromIndex:1];
			}
			if (index == length -1)
			{
				translatedString = [translatedString stringByAppendingFormat:@"ay"];
				ayAdded=TRUE;
			}
		} 
		else if(startsWithConsenent == FALSE) {
			index = rawInput.length;
			translatedString = [translatedString stringByAppendingFormat:@"way"];
		}
		else {
			hitVowel = TRUE;
		}
		if (index == length -1 && ayAdded == FALSE)
		{
			translatedString = [translatedString stringByAppendingFormat:@"ay"];
			ayAdded = TRUE;
		}

	}
	translatedString = [translatedString stringByAppendingFormat:@" "];
	return translatedString;
}

@end
