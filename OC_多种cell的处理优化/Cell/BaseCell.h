//
//  BaseCell.h
//  Cell
//
//  Created by suifumin on 2020/11/11.
//

#import <UIKit/UIKit.h>
#import "ModelConfigProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface BaseCell : UITableViewCell
@property(nonatomic,strong)id<ModelConfigProtocol>model;
- (void)play:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
