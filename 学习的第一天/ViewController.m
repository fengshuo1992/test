//
//  ViewController.m
//  学习的第一天
//
//  Created by 杭州米发 on 2017/12/5.
//  Copyright © 2017年 杭州米发. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UIPickerView *pickView;
@property (nonatomic, copy) NSArray * dataArray;

@end

@implementation ViewController


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"%s", __func__);
    NSLog(@"控制器即将出现的时候");
    
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"%s", __func__);
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
     NSLog(@"%s", __func__);
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
     NSLog(@"%s", __func__);
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
     NSLog(@"%s", __func__);
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
     NSLog(@"%s", __func__);
}



- (void)viewDidLoad {
    [super viewDidLoad];
     NSLog(@"%s", __func__);
    
    NSLog(@"%@", NSHomeDirectory());
    
    
//    UIImageView * imageview = [[UIImageView alloc] initWithFrame:CGRectMake(0, 64, 400, 300)];
//    [self.view addSubview:imageview];
    
//    for ( int i = 0 ; i < 100; i++) {
////        UIImage * image = [UIImage imageNamed:@"3"];
//        NSBundle *bundle = [NSBundle mainBundle];
//        NSString *resourcePath = [bundle resourcePath];
//
//        NSString *filePath = [resourcePath stringByAppendingPathComponent:@"3"];
//        UIImage * iamgeq = [UIImage imageWithContentsOfFile:filePath];
//        imageview.image = iamgeq;
//        NSLog(@"%@", iamgeq);
//    }
//
    
    
    
//    [self ToolBar];
  
    
    [self picViewDelegate];
//    [self.view addSubview:imageView];
    
//    NSLog(@"%@", self.dataArray);
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (NSArray *)dataArray
{
    if (_dataArray == nil) {
        NSString * path = [[NSBundle mainBundle] pathForResource:@"Date.plist" ofType:nil];
        _dataArray = [NSArray arrayWithContentsOfFile:path];
    }
    return _dataArray;
}

-(void)picViewDelegate
{
    self.pickView.delegate = self;
     self.pickView.dataSource = self;
   
    
}

// returns the number of 'columns' to display.
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return self.dataArray.count;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    NSArray * array = self.dataArray[component];
    
    return [self.dataArray[component] count];
}
// returns width of column and height of row for each component.
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    return [UIScreen mainScreen].bounds.size.width / 2;
}
- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 50;
}


- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component __TVOS_PROHIBITED
{
    NSDictionary * dic = self.dataArray[component][row];
    if (component == 0) {
        [pickerView selectRow:0 inComponent:1 animated:NO];
    }
    return dic[@"Name"];
}
//- (nullable NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(nullable UIView *)view
{
    
    //设置分割线的颜色
    for(UIView *singleLine in pickerView.subviews)
    {
        if (singleLine.frame.size.height < 1)
        {
            singleLine.backgroundColor = [UIColor redColorsin];
        }
    }
    UILabel* pickerLabel = (UILabel*)view;
    //设置分割线的颜色
   
    if (!pickerLabel){
        pickerLabel = [[UILabel alloc] init];
        pickerLabel.adjustsFontSizeToFitWidth = YES;
        [pickerLabel setTextAlignment:NSTextAlignmentCenter];
        [pickerLabel setBackgroundColor:[UIColor clearColor]];
        pickerLabel.text = @"你好";
        [pickerLabel setFont: [UIFont systemFontOfSize:17]];
    }
    return pickerLabel;
    
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    NSLog(@"%ld ----- %ld", component, row);
}

- (void)ToolBar{
//    CGSize size = self.view.frame.size;
//    // 创建一个工具条，并设置它的大小和位置
//    UIToolbar* toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 20, size.width, 46)];
//    // 设置工具条的style
//    [toolbar setBarStyle:UIBarStyleDefault];
//
//    // 创建使用文本标题的UIBarButtonItem
//    UIBarButtonItem* leftItem = [[UIBarButtonItem alloc] initWithTitle:@"左边" style:UIBarButtonItemStylePlain target:self action:@selector(onClick:)];
//    [leftItem setTag:1];
//
//    // 创建使用自定义图片的UIBarButtonItem
//    UIBarButtonItem* centerItem = [[UIBarButtonItem alloc]
//                                   initWithImage:[UIImage imageNamed:@"heart.gif"]
//                                   style:UIBarButtonItemStylePlain
//                                   target:self
//                                   action:@selector(onClick:)];
//    [centerItem setTag:2];
//    // 创建使用系统图标的UIBarButtonItem
//    UIBarButtonItem* rightItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSearch target:self action:@selector(onClick:)];
//    [rightItem setTag:3];
//    // 为工具条设置工具按钮
//    NSArray* barButtonItems = [NSArray arrayWithObjects:leftItem,centerItem,rightItem, nil];
//
//    [toolbar setItems:barButtonItems animated:YES];
//    // 将工具条添加到当前应用的界面中
////    [self.view addSubview:toolbar];
//
//
//    UIImageView * imageView = [[UIImageView alloc] initWithFrame:self.view.bounds];
//    imageView.userInteractionEnabled = YES;
//    imageView.contentMode = UIViewContentModeScaleToFill;
//
    
    
    
    UIToolbar *myToolBar = [[UIToolbar alloc] initWithFrame:CGRectMake(20.0f, 64, 320.0f, 44.0f)];
    myToolBar.backgroundColor = [UIColor orangeColor];
    
    
    //添加系统的样式
    // 自定义样式
    UIBarButtonItem *firstButton = [[UIBarButtonItem alloc] initWithTitle:@"编辑" style:UIBarButtonItemStyleBordered target:self action:nil];
    firstButton.tintColor = [UIColor redColor];
    
    // 设置固定的空隙
    UIBarButtonItem *twoButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:self action:nil];
    twoButton.width = 30.0f;
    twoButton.tintColor = [UIColor greenColor];
    
    // 播放样式按钮
    UIBarButtonItem *threeButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:nil];
    threeButton.tintColor = [UIColor whiteColor];
    
    // 几个空间之间的距离平均分配
    UIBarButtonItem *twoButton1 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:nil];
    twoButton1.tintColor = [UIColor greenColor];
    
    // 暂停样式按钮
    UIBarButtonItem *fourButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemPause target:self action:nil];
    fourButton.tintColor = [UIColor yellowColor];
    
    // 添加到UIToolBar上面，并释放内存
    [myToolBar setItems:@[firstButton, twoButton, threeButton, twoButton1, fourButton] animated:YES];
    [self.view addSubview:myToolBar];
    
    
//    NSMutableArray *myToolBarItems = [NSMutableArray array];
//
//    [myToolBarItems addObject:[[UIBarButtonItem alloc]
//
//                               initWithTitle:@"myTile"
//
//                               style:UIBarButtonItemStylePlain
//
//                               target:self
//
//                               action:@selector(action)] ];
//
//    [myToolBar setItems:myToolBarItems animated:YES];
//
//
//    [imageView addSubview:myToolBar];
    
}


- (void)onClick:(id) sender {
    NSString* title = @"";
    switch ([sender tag]) {
        case 1:
            title = @"文字";
            break;
        case 2:
            title = @"自定义图片";
            break;
        case 3:
            title = @"系统图标";
            break;
        default:
            break;
    }
    
    // 使用UIAlertView显示用户点击了哪个按钮
    NSString* msg = [NSString stringWithFormat:@"您点击了【%@】按钮"
                     , title];
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"提示"
                                                    message:msg
                                                   delegate:nil
                                          cancelButtonTitle:@"确定"
                                          otherButtonTitles:nil];
    [alert show];
    
}

- (void)action
{
    NSLog(@"这个是方法");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
