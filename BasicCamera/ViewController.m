//
//  ViewController.m
//  BasicCamera
//
//  Created by Rie Ito on 13/11/23.
//  Copyright (c) 2013年 Rie Ito. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize imageView;
@synthesize saveImageButton;

- (IBAction)showCameraAction:(id)sender {
    
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.sourceType = UIImagePickerControllerSourceTypeCamera;
    imagePickerController.delegate = self;
    imagePickerController.allowsEditing = TRUE;
    [self presentViewController:imagePickerController animated:TRUE completion:NULL];
    
}


- (IBAction)saveImageAction:(id)sender {
    UIImage *image = imageView.image;
    UIImageWriteToSavedPhotosAlbum(image,NULL,NULL,NULL);
    saveImageButton.enabled = FALSE;
}


- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {

    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    imageView.image = image;
    saveImageButton.enabled = TRUE;
    [self dismissViewControllerAnimated:TRUE completion:NULL];
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
