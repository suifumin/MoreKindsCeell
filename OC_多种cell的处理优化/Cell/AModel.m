//
//  AModel.m
//  Cell
//
//  Created by suifumin on 2020/11/11.
//

#import "AModel.h"
#import "ACell.h"
@implementation AModel
- (NSString *)cellReuseIdentifier {
    return @"A";
}
- (CGFloat)cellHeightWithindexPath:(NSIndexPath *)indexPath {
    return 55;
}
- (void)cellDidSelectRowAtIndexPath:(NSIndexPath *)indexPath other:(id)other {
    NSLog(@"AAAAAAAA");
}
- (UITableViewCell*)tableView:(UITableView *)tableView reuseIdenyifier:(NSString *)reusedItentifier {
    ACell *acell = [tableView dequeueReusableCellWithIdentifier:reusedItentifier];
    if (!acell) {
        acell = [[ACell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedItentifier];
    }
    acell.contentView.backgroundColor = [UIColor redColor];
    return acell;
}
@end
