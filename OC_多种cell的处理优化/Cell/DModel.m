//
//  DModel.m
//  Cell
//
//  Created by suifumin on 2020/11/11.
//

#import "DModel.h"
#import "DCell.h"
@implementation DModel
- (NSString *)cellReuseIdentifier {
    return @"D";
}
- (CGFloat)cellHeightWithindexPath:(NSIndexPath *)indexPath {
    return 200;
}
- (void)cellDidSelectRowAtIndexPath:(NSIndexPath *)indexPath other:(id)other {
    NSLog(@"DDDDDDD");
}
- (UITableViewCell*)tableView:(UITableView *)tableView reuseIdenyifier:(NSString *)reusedItentifier {
    DCell *bcell = [tableView dequeueReusableCellWithIdentifier:reusedItentifier];
    if (!bcell) {
        bcell = [[DCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reusedItentifier];
    }
    bcell.contentView.backgroundColor = [UIColor systemOrangeColor];
    return bcell;
}
@end
