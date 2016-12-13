//
//  LEActionSheet.h
//  LEActionSheet
//
//  Created by akira on 2016/12/7.
//  Copyright © 2016年 上海挚极信息科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

@class LEActionSheet;

@protocol LEActionSheetDelegate <NSObject>

@optional

/**
 *  点击按钮
 */
- (void)actionSheet:(LEActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex;

@end

@interface LEActionSheet : UIView

/**
 *  代理
 */
@property (nonatomic, weak) id <LEActionSheetDelegate> delegate;

/**
 *  创建对象方法
 */
- (instancetype)initWithDelegate:(id<LEActionSheetDelegate>)delegate CancelTitle:(NSString *)cancelTitle OtherTitles:(NSString*)otherTitles,... NS_REQUIRES_NIL_TERMINATION;

- (void)show;


@end

