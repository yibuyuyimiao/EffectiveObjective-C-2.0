//
//  ViewController.m
//  多态
//
//  Created by 原 on 2017/5/20.
//  Copyright © 2017年 ybym.training. All rights reserved.
//

#import "ViewController.h"
#import "Dog.h"
#import "Cat.h"
#import "Person.h"
#import "ColorPrinter.h"
#import "BlackPrinter.h"
#import "SelectorSub.h"
#import "MyClass.h"
#import "person1.h"
#import <objc/runtime.h>
#import "person2.h"
#import "Teacher.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    [self demo6];
    
    
    
    
    
    
}
#pragma mark -- NSObject有在运行时获得类的信息
// http://www.jianshu.com/p/6c8f5f0bfa6a description 用于打印出便于查看的log
-(void)demo6{

    person2*person = [[person2 alloc]init];
    
    Teacher*teacher = [[Teacher alloc]init];
    
    /*   
     
        是否有拓展性
         -(BOOL) isKindOfClass: classObj判断是否是这个类或者这个类的子类的实例
         -(BOOL) isMemberOfClass: classObj 判断是否是这个类的实例
         -(BOOL)isSubclassOfClass:(Class)aClass 
        //意思是返回一个BOOL类型的值，表示调用该方法的类 是不是 参数类的一个子类 或者 是这个类的本身
     
     */
    if ([teacher isMemberOfClass:[Teacher class]]) {
        
        NSLog(@"teacher Teacher类的成员");
    }
    if ([teacher isMemberOfClass:[person2 class]]) {
        
        NSLog(@"teacher Person类的成员");
    }
    
    if ([teacher isMemberOfClass:[NSObject class]]) {
    
      NSLog(@"teacher NSObject类的成员");
    }
    
    if ([teacher isKindOfClass:[Teacher class]]) {
        
        NSLog(@"teacher 是 Teacher类或Teacher的子类");
    }
    if ([teacher isKindOfClass:[person2 class]]) {
        
        NSLog(@"teacher 是 Person类或Person的子类");
    }
    if ([teacher isKindOfClass:[NSObject class]]) {
        
        NSLog(@"teacher 是 NSObject类或NSObject的子类");
    }
    
    /*  
        -(BOOL) respondsToSelector: selector 判读实例是否有这样方法
        +(BOOL) instancesRespondToSelector:  判断类是否有这个方法。此方法是类方法，不能用在类的对象
     */
    
    
    if ( [teacher respondsToSelector: @selector( setName: )] == YES ) {
        
        NSLog(@"teacher responds to setSize: method" );
    }
    
    if ( [teacher respondsToSelector: @selector( abcde )] == YES ) {
        
        NSLog(@"teacher responds to nonExistant method" );
    }
    if ( [Teacher respondsToSelector: @selector( alloc )] == YES ) {
        
        NSLog(@"teacher class responds to alloc method\n" );
        
    }
    
    
    
    
    if ( [Person instancesRespondToSelector: @selector(teach)] == YES ) {
        
        NSLog(@"Person instance responds to teach method" );
    }
    
      if ( [Teacher instancesRespondToSelector: @selector(teach)] == YES ) {
          
          NSLog(@"Teacher instance responds to teach method");
      
      }
      if ( [Teacher instancesRespondToSelector: @selector(setName:)] == YES ) {
          
          NSLog(@"Teacher instance responds to setName: method" );
      }
    
    // id类型类似于(void*) ,可以指向任何类的实例。而不需要强制转换。
    
    id p = person;
    id t = teacher;
    [t setName:@"张三老师"];
    [t teach];
    
    /* 
     1.description方法是NSObject自带的方法，包括类方法和对象方法
     2.默认情况下利用NSLog和%@输出对象的时返回的就是类名和内存地址
     3.修改NSLog和%@的默认输出：重写类对象或者实例对象的description方法即可。因为NSLog函数进行打印的时候会自动调用description方法
     
     
     */
    Class c = [person2 class];
    NSLog(@"%@",c);
    
    NSLog(@"%@",person);
    
    
    
    
    
}

-(void)demo1{
    
    Dog *dog = [[Dog alloc]init];
    dog.name = @"狗";
    dog.age = 12;
    dog.weight = 12.34;
    [dog printAnimalFood];
    NSLog(@"%@",dog.description);
    //父类的对象指针指向子类的对象
    //调用的方法看具体对象的类型,先从子类查找对应方法的实现,子类没有实现对应的方法,跳到父类查找对应的方法实现,父类没有实现对应的方法,再继续向上追踪到父类的父类
    animal *dogAnimal = dog;
    [dogAnimal printAnimalFood];
    NSLog(@"%@",dogAnimal.description);
    
    Cat *cat = [[Cat alloc] init];
    cat.name = @"猫";
    cat.age  = 10;
    cat.colorOfCat = @"白色";
    [cat printAnimalFood];
    NSLog(@"%@",[cat description]);
    
    animal *catAnimal = cat;
    [catAnimal printAnimalFood];
    NSLog(@"%@",catAnimal.description);
    
    NSLog(@"==========多态=========");
    //多态,根据不同的对象,打印不同的结果
    NSLog(@"%@",dog);
    NSLog(@"%@",cat);

}
    
-(void)demo2{
    
    Person *person =[[Person alloc] init];
    
    
    //多态的定义
     printer *p1 = [[ColorPrinter alloc] init];
     printer *p2 = [[BlackPrinter alloc] init];
     
     [person doPrint:p1];
     [person doPrint:p2];
     
 };

    -(void)demo3{
    
        SelectorSub *ss = [[SelectorSub alloc]init];
        // 生成sel,执行sel找到的方法方法
        ss.methodTest = @selector(parentMethod);
        [ss TestSubMethod];
        
        ss.methodTest = @selector(SubMethod);
        [ss TestParentMethod];
}
    
    -(void)demo4{
    
        MyClass *theInstance = [[MyClass alloc]init];
        
        
        class_addMethod([MyClass class],@selector(dynGenerateMethod),class_getMethodImplementation([ViewController class], @selector(addFind)),"v@:i");
      //  [[MyClass class] dynGenerateMethod:10];
       [ theInstance performSelector:@selector(dynGenerateMethod)];
    
    
    }
    -(void)demo5{
    
        person1 *p = [[person1 alloc]init];
        
        class_addMethod([person1 class], @selector(findInSelf), class_getMethodImplementation([ViewController class], @selector(addFind)), "v@:");
        
        [p performSelector:@selector(findInSelf)];
        
        
        [self exchangeMethod];
        
        [self printPerson];
    
    }
    
    -(void)exchangeMethod{
    
        Method old = class_getInstanceMethod([ViewController class], @selector(viewWillAppear:));
        Method new = class_getInstanceMethod([ViewController class], @selector(addFind));
        
        method_exchangeImplementations(old, new);
    
    }
   
    -(void)printPerson{
    
        NSLog(@"\n\n\n------ivar list------");
        unsigned int count;
        
        //ivar
        Ivar *ivars = class_copyIvarList([person1 class], &count);
        
        for (int i = 0; i < count; i ++) {
            Ivar ivar = ivars[i];
            NSLog(@"ivar === %s",ivar_getName(ivar));
            
        }
        NSLog(@"\n\n\n---------method list---------");
        Method *methods = class_copyMethodList([person1 class], &count);
        
        for (int i = 0; i < count; i++) {
            
            Method method = methods[i];
            NSLog(@"method == %s",method_getName(method));
        }
        NSLog(@"\n\n\n--------------property list------------------");
        objc_property_t *propertys =class_copyMethodList([person1 class], &count);
        
        for (int i = 0; i < count; i++) {
            
            objc_property_t property = propertys[i];
            NSLog(@"property === %s",property_getName(property));

            
        }
        
    
    
    }
    
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

    -(void)addFind{
        
        NSLog(@"Wow,you are in ruins");
    
    }

@end
