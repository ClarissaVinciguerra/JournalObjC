//
//  CEVEntryViewController.h
//  JournalOBJC
//
//  Created by Clarissa Vinciguerra on 9/28/20.
//

#import <UIKit/UIKit.h>
#import "CEVEntry.h"
#import "CEVEntryController.h"

NS_ASSUME_NONNULL_BEGIN

@interface CEVEntryViewController : UIViewController
// MARK: - Outlets
@property (weak, nonatomic) IBOutlet UITextField *titleTextField;
@property (weak, nonatomic) IBOutlet UITextView *bodyTextView;

// MARK: - Properties
@property (nonatomic, strong)CEVEntry *entry;

// MARK: - Actions

- (IBAction)saveButtonTapped:(id)sender;
- (IBAction)clearButtonTapped:(id)sender;

- (void)updateViewsWithEntry:(CEVEntry *)entry;

@end

NS_ASSUME_NONNULL_END
