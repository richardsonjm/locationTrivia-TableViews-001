//
//  FISLocationsTableViewController.m
//  locationTrivia-tableviews
//
//  Created by John Richardson on 6/6/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISLocationsTableViewController.h"
#import "FISLocation.h"

@implementation FISLocationsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.accessibilityLabel = @"Table";
    self.view.accessibilityIdentifier = @"Table";
}

- (void)didReceiveMemoryWarning {
    [self didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.locations count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *SimpleIdentifier = @"SimpleIdentifier";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleIdentifier];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:SimpleIdentifier];
    }

    FISLocation *location = self.locations[indexPath.row];
    cell.textLabel.text = location.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu",[location.trivia count]];
    return cell;
}


@end
