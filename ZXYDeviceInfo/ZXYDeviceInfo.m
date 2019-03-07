//
//  ZXYDeviceInfo.m
//  ZXYProgressView
//
//  Created by zxy on 2019/3/7.
//  Copyright © 2019 赵向禹. All rights reserved.
//

#import "ZXYDeviceInfo.h"
#import <sys/utsname.h>

@implementation ZXYDeviceInfo

+ (NSString *)getCurrentDeviceModel {
    struct utsname systemInfo;
    uname(&systemInfo);
    NSString *model = [NSString stringWithCString: systemInfo.machine encoding:NSASCIIStringEncoding];
    
    //iPhone
    if ([model isEqualToString:@"iPhone1,1"])       return @"iPhone 1";
    if ([model isEqualToString:@"iPhone1,2"])       return @"iPhone 3G";
    if ([model isEqualToString:@"iPhone2,1"])       return @"iPhone 3GS";
    if ([model isEqualToString:@"iPhone3,1"] ||
        [model isEqualToString:@"iPhone3,2"] ||
        [model isEqualToString:@"iPhone3,3"])       return @"iPhone 4";
    if ([model isEqualToString:@"iPhone4,1"])       return @"iPhone 4S";
    if ([model isEqualToString:@"iPhone5,1"] ||
        [model isEqualToString:@"iPhone5,2"])       return @"iPhone 5";
    if ([model isEqualToString:@"iPhone5,3"] ||
        [model isEqualToString:@"iPhone5,4"])       return @"iPhone 5C";
    if ([model isEqualToString:@"iPhone6,1"] ||
        [model isEqualToString:@"iPhone6,2"])       return @"iPhone 5S";
    if ([model isEqualToString:@"iPhone7,1"])       return @"iPhone 6 Plus";
    if ([model isEqualToString:@"iPhone7,2"])       return @"iPhone 6";
    if ([model isEqualToString:@"iPhone8,1"])       return @"iPhone 6S";
    if ([model isEqualToString:@"iPhone8,2"])       return @"iPhone 6S Plus";
    if ([model isEqualToString:@"iPhone8,4"])       return @"iPhone SE";
    if ([model isEqualToString:@"iPhone9,1"] ||
        [model isEqualToString:@"iPhone9,3"])        return @"iPhone 7";
    if ([model isEqualToString:@"iPhone9,2"] ||
        [model isEqualToString:@"iPhone9,4"])       return @"iPhone 7 Plus";
    if ([model isEqualToString:@"iPhone10,1"] ||
        [model isEqualToString:@"iPhone10,4"])      return @"iPhone 8";
    if ([model isEqualToString:@"iPhone10,2"] ||
        [model isEqualToString:@"iPhone10,5"])      return @"iPhone 8 Plus";
    if ([model isEqualToString:@"iPhone10,3"] ||
        [model isEqualToString:@"iPhone10,6"])      return @"iPhone X";
    if ([model isEqualToString:@"iPhone11,2"])      return @"iPhone XS";
    if ([model isEqualToString:@"iPhone11,4"] ||
        [model isEqualToString:@"iPhone11.6"])      return @"iPhone XS Max";
    if ([model isEqualToString:@"iPhone11,8"])      return @"iPhone XR";
    
    //iPod
    if ([model isEqualToString:@"iPod1,1"])         return @"iPod Touch";
    if ([model isEqualToString:@"iPod2,1"])         return @"iPod Touch 2";
    if ([model isEqualToString:@"iPod3,1"])         return @"iPod Touch 3";
    if ([model isEqualToString:@"iPod4,1"])         return @"iPod Touch 4";
    if ([model isEqualToString:@"iPod5,1"])         return @"iPod Touch 5";
    if ([model isEqualToString:@"iPod7,1"])         return @"iPod Touch 6";
    
    //iPad
    if ([model isEqualToString:@"iPad1,1"])         return @"iPad";
    if ([model isEqualToString:@"iPad2,1"] ||
        [model isEqualToString:@"iPad2,2"] ||
        [model isEqualToString:@"iPad2,3"] ||
        [model isEqualToString:@"iPad2,4"])         return @"iPad 2";
    if ([model isEqualToString:@"iPad3,1"] ||
        [model isEqualToString:@"iPad3,2"] ||
        [model isEqualToString:@"iPad3,3"])         return @"iPad 3";
    if ([model isEqualToString:@"iPad3,4"] ||
        [model isEqualToString:@"iPad3,5"] ||
        [model isEqualToString:@"iPad3,6"])         return @"iPad 4";
    if ([model isEqualToString:@"iPad4,1"] ||
        [model isEqualToString:@"iPad4,2"] ||
        [model isEqualToString:@"iPad4,3"])         return @"iPad Air";
    if ([model isEqualToString:@"iPad5,3"] ||
        [model isEqualToString:@"iPad5,4"])         return @"iPad Air 2";
    if ([model isEqualToString:@"iPad6,3"] ||
        [model isEqualToString:@"iPad6,4"])         return @"iPad Pro 9.7-inch";
    if ([model isEqualToString:@"iPad6,7"] ||
        [model isEqualToString:@"iPad6,8"])         return @"iPad Pro 12.9-inch";
    if ([model isEqualToString:@"iPad6,11"] ||
        [model isEqualToString:@"iPad6,12"])        return @"iPad 5";
    if ([model isEqualToString:@"iPad7,1"] ||
        [model isEqualToString:@"iPad7,2"])         return @"iPad Pro 12.9-inch 2";
    if ([model isEqualToString:@"iPad7,3"] ||
        [model isEqualToString:@"iPad7,4"])         return @"iPad Pro 10.5-inch";
    if ([model isEqualToString:@"iPad7,5"] ||
        [model isEqualToString:@"iPad7,6"])         return @"iPad 6";
    if ([model isEqualToString:@"iPad8,1"] ||
        [model isEqualToString:@"iPad8,2"] ||
        [model isEqualToString:@"iPad8,3"] ||
        [model isEqualToString:@"iPad8,4"])         return @"iPad Pro 11-inch";
    if ([model isEqualToString:@"iPad8,5"] ||
        [model isEqualToString:@"iPad8,6"] ||
        [model isEqualToString:@"iPad8,7"] ||
        [model isEqualToString:@"iPad8,8"])         return @"iPad Pro 12.9-inch 3";
    
    //iPad mini
    if ([model isEqualToString:@"iPad2,5"] ||
        [model isEqualToString:@"iPad2,6"] ||
        [model isEqualToString:@"iPad2,7"])         return @"iPad mini";
    if ([model isEqualToString:@"iPad4,4"] ||
        [model isEqualToString:@"iPad4,5"] ||
        [model isEqualToString:@"iPad4,6"])         return @"iPad mini 2";
    if ([model isEqualToString:@"iPad4,7"] ||
        [model isEqualToString:@"iPad4,8"] ||
        [model isEqualToString:@"iPad4,9"])         return @"iPad mini 3";
    if ([model isEqualToString:@"iPad5,1"] ||
        [model isEqualToString:@"iPad5,2"])         return @"iPad mini 4";
    
    //Simulator
    if ([model isEqualToString:@"i386"])            return @"iPhone Simulator";
    if ([model isEqualToString:@"x86_64"])          return @"iPhone Simulator";
    
    return model;
}

@end
