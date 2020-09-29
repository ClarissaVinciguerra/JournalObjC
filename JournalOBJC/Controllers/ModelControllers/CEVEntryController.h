//
//  CEVEntryController.h
//  JournalOBJC
//
//  Created by Clarissa Vinciguerra on 9/28/20.
//

#import <Foundation/Foundation.h>
#import "CEVEntry.h"

NS_ASSUME_NONNULL_BEGIN

@interface CEVEntryController : NSObject

// MARK: - Properties
+ (CEVEntryController *) sharedInstance;
@property (nonatomic, strong)NSMutableArray *entries;


// MARK: - CRUD Functions
- (void)addEntryWithTitle:(NSString *)title
                 bodyText:(NSString *)bodyText;

- (void)removeEntry:(CEVEntry *)entry;

- (void)updateEntry:(CEVEntry *)entry
              title:(NSString *)title
           bodyText:(NSString *)bodyText;
@end

NS_ASSUME_NONNULL_END
