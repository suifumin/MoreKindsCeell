//
//  ViewController.m
//  Cell
//
//  Created by suifumin on 2020/11/11.
//

#import "ViewController.h"
#import "AModel.h"
#import "BModel.h"
#import "CModel.h"
#import "DModel.h"
#import "BaseCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@property(nonatomic,strong)NSMutableArray * dataArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    AModel *modelA = [[AModel alloc]init];
    BModel *bmodel = [[BModel alloc]init];
    CModel *cmodel = [[CModel alloc]init];
    DModel *dmodel = [[DModel alloc]init];
    self.dataArray = [NSMutableArray array];
    [self.dataArray addObject:modelA];
    [self.dataArray addObject:bmodel];
    [self.dataArray addObject:cmodel];
    [self.dataArray addObject:dmodel];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStylePlain];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
    self.tableView.tableFooterView = [[UIView alloc]init];
    [self.tableView reloadData];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    id <ModelConfigProtocol>model = self.dataArray[indexPath.row];
    BaseCell *cell = (BaseCell *)[model tableView:tableView reuseIdenyifier:[model cellReuseIdentifier]];
    cell.model = model;
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    id <ModelConfigProtocol>model = self.dataArray[indexPath.row];
    return [model cellHeightWithindexPath:indexPath];
}
@end
