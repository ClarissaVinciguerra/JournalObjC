//
//  CEVEntry.m
//  JournalOBJC
//
//  Created by Clarissa Vinciguerra on 9/28/20.
//

#import "CEVEntry.h"

@implementation CEVEntry

- (instancetype) initWithTitle:(NSString *)title
                      bodyText:(NSString *)bodyText
{
    self = [super init];
    
    if (self) {
        _title = title;
        _bodyText = bodyText;
        _timestamp = [NSDate date];
    }
    return self;
}

@end
