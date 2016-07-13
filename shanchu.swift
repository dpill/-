//
//  shanchu.swift
//  7.4
//
//  Created by yj on 16/7/6.
//  Copyright © 2016年 1. All rights reserved.
//
import UIKit

class shanchu: UIViewController {
    
    var db:SQLiteDB!
    
    @IBOutlet weak var text1: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        db = SQLiteDB.sharedInstance()
        //如果表还不存在则创建表（其中uid为自增主键）
        db.execute("create table if not exists user(uid integer primary key,uname varchar(20),mobile varchar(20),email varcher(20),address varcher(20))")
        //如果有数据则加载
        //initUser()
    }

   
    @IBAction func shan(sender: AnyObject) {
    del()

    }
    func del(){
        let a=text1.text!
        let sql = "delete from user where uname='\(a)'"
        let result = db.execute(sql)
        print(result)
        
    }
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
