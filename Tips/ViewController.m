//
//  ViewController.m
//  Tips
//
//  Created by Fernando Arturo Perez on 6/23/20.
//  Copyright © 2020 Fernando Arturo Perez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *billField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;

@property (weak, nonatomic) IBOutlet UISegmentedControl *tipControl;
@property (weak, nonatomic) IBOutlet UILabel *tLable;
@property (weak, nonatomic) IBOutlet UILabel *tiLable;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.billField becomeFirstResponder];
    

}

- (IBAction)onTap:(id)sender {
    
    [self.view endEditing:YES];
    
}
- (IBAction)onEdit:(id)sender {

    double bill = [self.billField.text doubleValue];
    NSArray *percent = @[@(0.15),@(0.2),@(0.22)];
    double tipPercentage = [percent[self.tipControl.selectedSegmentIndex] doubleValue];
    
    double tip = tipPercentage * bill;
    double total = bill + tip;
 
    self.tipLabel.text = [NSString stringWithFormat:@"$%.2f",tip];
    self.totalLabel.text = [NSString stringWithFormat:@"$%.2f",total];
    
    
}
- (IBAction)onEditEnd:(id)sender {
    /*CGRect newFrame = self.billField.frame;
    newFrame.origin.y -= 35;
    
    [UIView animateWithDuration:0.2 animations:^{
       self.billField.frame = newFrame;
    }];*/
 
    /*[UIView animateWithDuration:1 animations:^{
    self.tipLabel.alpha = 1;
    }];*/
}

- (IBAction)onEditBegin:(id)sender {

   [UIView animateWithDuration:1 animations:^{
    self.totalLabel.frame = CGRectMake(self.totalLabel.frame.origin.x, self.totalLabel.frame.origin.y - 150, self.totalLabel.frame.size.width, self.totalLabel.frame.size.height);
        
    }];
  [UIView animateWithDuration:1 animations:^{
  self.tLable.frame = CGRectMake(self.tLable.frame.origin.x, self.tLable.frame.origin.y - 150, self.tLable.frame.size.width, self.tLable.frame.size.height);
      
  }];
     [UIView animateWithDuration:1 animations:^{
      self.tipLabel.frame = CGRectMake(self.tipLabel.frame.origin.x, self.tipLabel.frame.origin.y - 180, self.tipLabel.frame.size.width, self.tipLabel.frame.size.height);
          
      }];
    [UIView animateWithDuration:1 animations:^{
    self.tiLable.frame = CGRectMake(self.tiLable.frame.origin.x, self.tiLable.frame.origin.y - 180, self.tiLable.frame.size.width, self.tiLable.frame.size.height);
        
    }];
   /* [UIView animateWithDuration:1 animations:^{
    self.tipLabel.alpha = 0;
    }];*/
}

@end
