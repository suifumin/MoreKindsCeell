//
//  BModel.m
//  Cell
//
//  Created by suifumin on 2020/11/11.
//

#import "BModel.h"
#import "BCell.h"
@implementation BModel
- (NSString *)cellReuseIdentifier {
    return @"B";
}
- (CGFloat)cellHeightWithindexPath:(NSIndexPath *)indexPath {
    return 100;
}
- (void)cellDidSelectRowAtIndexPath:(NSIndexPath *)indexPath other:(id)other {
    NSLog(@"BBBBBBB");
}
- (UITableViewCell*)tableView:(UITableView *)tableView reuseIdenyifier:(NSString *)reusedItentifier {
    BCell *bcell = [tableView dequeueReusableCellWithIdentifier:reusedItentifier];
    if (!bcell) {
        bcell = [[BCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedItentifier];
    }
    bcell.contentView.backgroundColor = [UIColor greenColor];
    return bcell;
}
@end
