//
//  CEVEntryViewController.m
//  JournalOBJC
//
//  Created by Clarissa Vinciguerra on 9/28/20.
//

#import "CEVEntryViewController.h"

@interface CEVEntryViewController ()

@end

@implementation CEVEntryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
 }

#pragma mark - Helper functions and methods

-(void)setEntry:(CEVEntry *)entry
{
    [self updateViewsWithEntry:entry];
}

- (void)updateViewsWithEntry:(CEVEntry *)entry
{
    if (self) {
        _titleTextField.text = self.entry.title;
        _bodyTextView.text = self.entry.bodyText;
    }
}

- (IBAction)clearButtonTapped:(id)sender {
    _titleTextField.text = @"";
    _bodyTextView.text = @"";
}

- (IBAction)saveButtonTapped:(id)sender {
    NSString *newTitle = _titleTextField.text;
    NSString *newBodyText = _bodyTextView.text;
    CEVEntry *newEntry = _entry;
    if (_entry) {
        //if entry exists then update
        [CEVEntryController.sharedInstance updateEntry: newEntry title:newTitle bodyText:newBodyText];
    } else {
        //create new entry
        [CEVEntryController.sharedInstance addEntryWithTitle:newTitle bodyText:newBodyText];
    }
}
@end
