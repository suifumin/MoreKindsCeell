//
//  ModelConfigProtocol.h
//  Cell
//
//  Created by suifumin on 2020/11/11.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@protocol ModelConfigProtocol <NSObject>
@optional
///获取cell的复用标识
- (NSString *)cellReuseIdentifier;

///获取cell的高度
- (CGFloat)cellHeightWithindexPath:(NSIndexPath*)indexPath;
///点击事件
- (void)cellDidSelectRowAtIndexPath:(NSIndexPath*)indexPath other:(_Nullable id)other;
- (UITableViewCell*)tableView:(UITableView *)tableView reuseIdenyifier:(NSString *)reusedItentifier;
@end

NS_ASSUME_NONNULL_END
