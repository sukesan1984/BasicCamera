//
//  ViewController.h
//  BasicCamera
//
//  Created by Rie Ito on 13/11/23.
//  Copyright (c) 2013年 Rie Ito. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) IBOutlet UIBarButtonItem *saveImageButton;

- (IBAction)showCameraAction:(id)sender;
- (IBAction)saveImageAction:(id)sender;

@end
