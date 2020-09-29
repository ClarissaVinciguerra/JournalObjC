//
//  CEVEntry.h
//  JournalOBJC
//
//  Created by Clarissa Vinciguerra on 9/28/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CEVEntry : NSObject

@property(nonatomic, copy)NSDate *timestamp;
@property(nonatomic, copy)NSString *title;
@property(nonatomic, copy)NSString *bodyText;

-(instancetype) initWithTitle:(NSString *)title
                     bodyText:(NSString *)bodyText;

- (void)updateViews;

@end

NS_ASSUME_NONNULL_END
