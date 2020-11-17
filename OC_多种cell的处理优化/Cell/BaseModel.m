//
//  BaseModel.m
//  Cell
//
//  Created by suifumin on 2020/11/11.
//

#import "BaseModel.h"

@implementation BaseModel

- (NSString *)cellReuseIdentifier {
    return @"";
}
- (CGFloat)cellHeightWithindexPath:(NSIndexPath *)indexPath {
    return 0.0;
}
- (void)cellDidSelectRowAtIndexPath:(NSIndexPath *)indexPath other:(id)other {
    
}
- (UITableViewCell*)tableView:(NSString *)tableView reuseIdenyifier:(NSString *)reusedItentifier {
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    return cell;
}
@end
