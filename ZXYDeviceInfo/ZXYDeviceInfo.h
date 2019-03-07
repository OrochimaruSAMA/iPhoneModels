//
//  ZXYDeviceInfo.h
//  ZXYProgressView
//
//  Created by zxy on 2019/3/7.
//  Copyright © 2019 赵向禹. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZXYDeviceInfo : NSObject

/** 获取当前设备型号 */
+ (NSString *)getCurrentDeviceModel;

@end

NS_ASSUME_NONNULL_END
