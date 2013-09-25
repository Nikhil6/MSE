//
//  ViewController.h


#import <UIKit/UIKit.h>
#import "newViewController.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
- (IBAction)submit:(UIButton *)sender;

@end
