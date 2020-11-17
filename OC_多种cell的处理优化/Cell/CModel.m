//
//  CModel.m
//  Cell
//
//  Created by suifumin on 2020/11/11.
//

#import "CModel.h"
#import "CCell.h"
@implementation CModel
- (NSString *)cellReuseIdentifier {
    return @"C";
}
- (CGFloat)cellHeightWithindexPath:(NSIndexPath *)indexPath {
    return 150;
}
- (void)cellDidSelectRowAtIndexPath:(NSIndexPath *)indexPath other:(id)other {
    NSLog(@"CCCCCC");
}
- (UITableViewCell*)tableView:(UITableView *)tableView reuseIdenyifier:(NSString *)reusedItentifier {
    CCell *bcell = [tableView dequeueReusableCellWithIdentifier:reusedItentifier];
    if (!bcell) {
        bcell = [[CCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedItentifier];
    }
    bcell.contentView.backgroundColor = [UIColor purpleColor];
    return bcell;
}
@end
