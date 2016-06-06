//
//  FISTriviaTableViewController.m
//  locationTrivia-tableviews
//
//  Created by John Richardson on 6/6/16.
//  Copyright © 2016 Joe Burgess. All rights reserved.
//

#import "FISTriviaTableViewController.h"
#import "FISTrivium.h"

@implementation FISTriviaTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.accessibilityLabel = @"Trivia Table";
    self.view.accessibilityIdentifier = @"Trivia Table";
}

- (void)didReceiveMemoryWarning {
    [self didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.trivia count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *SimpleIdentifier = @"SimpleIdentifier";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:SimpleIdentifier];

    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:SimpleIdentifier];
    }

    FISTrivium *trivium = self.trivia[indexPath.row];
    cell.textLabel.text = trivium.content;
    return cell;
}

@end
