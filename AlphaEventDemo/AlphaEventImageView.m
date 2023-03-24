//
//  AlphaEventImageView.m
//  AlphaEventDemo
//
//  Created by MakeID-研发 on 2023/3/22.
//

#import "AlphaEventImageView.h"

@implementation AlphaEventImageView

- (instancetype)initWithImage:(UIImage *)image
{
    if (self = [super initWithImage:image]) {
        self.userInteractionEnabled = YES;
    }
    return self;
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event {
    //判断当前手势是否点击在当前imageView 上面
//    NSLog(@"响应的view的他给：%ld",(long)self.tag);
    BOOL con = CGRectContainsPoint(self.bounds, point);
    if (con) {
        
        unsigned char pixel[1] = {0};
        CGContextRef context = CGBitmapContextCreate(pixel,
        1, 1, 8, 1, NULL,
        kCGImageAlphaOnly);
        UIGraphicsPushContext(context);
        //这一部很重要，因为去drawAtPoint 是根据图片本身大小去的，所以需要算一个比例值
        CGFloat scW = self.image.size.width/self.bounds.size.width;
        CGFloat scH = self.image.size.height/self.bounds.size.height;
        [self.image drawAtPoint:CGPointMake(-point.x * scW, -point.y * scH)];
        UIGraphicsPopContext();
        CGContextRelease(context);
        CGFloat alpha = pixel[0]/255.0f;
        //alpha 小于0.01f，认为是透明的
        BOOL transparent = alpha < 0.01f;
//        NSLog(@"当前的透明度：%lf",alpha);
        return !transparent;
    } else {
//        NSLog(@"没有点击在图片上面，对应的tag：%ld",(long)self.tag);
        return NO;
    }
}

@end
