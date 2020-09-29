//
//  CEVEntryController.m
//  JournalOBJC
//
//  Created by Clarissa Vinciguerra on 9/28/20.
//

#import "CEVEntryController.h"
#import "CEVEntry.h"

@implementation CEVEntryController
+ (CEVEntryController *) sharedInstance
{
    static CEVEntryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [CEVEntryController new];
    });
    return sharedInstance;
}

//initialize array and allocate memory
- (instancetype)init
{
    self = [super init];
    if (self) {
        _entries = [[NSMutableArray alloc] init];
    }
    return self;
}

// MARK: - CRUD Functions
- (void)addEntryWithTitle:(NSString *)title bodyText:(NSString *)bodyText
{
    CEVEntry *newEntry = [[CEVEntry alloc] initWithTitle:title bodyText:bodyText];
    NSLog(@"Title: '@' body: '@'", newEntry.title, newEntry.bodyText);
    [_entries addObject:newEntry];
}

- (void)removeEntry:(CEVEntry *)entry
{
    [_entries removeObject:entry];
//    for (eachEntry in _entries) {
//        if
//    }
}

-(void)updateEntry:(CEVEntry *)entry title:(NSString *)title bodyText:(NSString *)bodyText
{
    entry.title = title;
    entry.bodyText = bodyText;
    entry.timestamp = [NSDate date];
}

@end
