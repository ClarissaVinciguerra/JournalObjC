//
//  CEVEntryListTableViewController.m
//  JournalOBJC
//
//  Created by Clarissa Vinciguerra on 9/28/20.
//

#import "CEVEntryListTableViewController.h"
#import "CEVEntryController.h"
#import "CEVEntry.h"
#import "CEVEntryViewController.h"

@interface CEVEntryListTableViewController ()

@end

@implementation CEVEntryListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.tableView.reloadData;
    
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return CEVEntryController.sharedInstance.entries.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"entryCell" forIndexPath:indexPath];
    
    CEVEntry *entry = CEVEntryController.sharedInstance.entries[indexPath.row];
    
    cell.textLabel.text = entry.title;
    
    return cell;
}

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
       
        CEVEntry *entry = CEVEntryController.sharedInstance.entries[indexPath.row];
        [CEVEntryController.sharedInstance removeEntry:entry];
        
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }
}


#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // IIDOO
    if ([segue.identifier isEqualToString:@"toDetailVC"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        CEVEntryViewController *destination = segue.destinationViewController;
        destination.entry = indexPath;
    }
}

@end
