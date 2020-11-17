//
//  ACell.m
//  Cell
//
//  Created by suifumin on 2020/11/11.
//

#import "ACell.h"

@implementation ACell

- (void)setModel:(id<ModelConfigProtocol>)model {
    NSLog(@"%@",[model class]);
    
}
- (void)play:(NSString *)name {
    NSLog(@"%@",name);
}
@end
