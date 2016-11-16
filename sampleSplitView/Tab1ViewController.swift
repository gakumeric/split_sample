//
//  Tab1ViewController.swift
//  sampleSplitView
//
//  Created by 木下岳 on 2016/11/12.
//  Copyright © 2016年 gakukinoshita. All rights reserved.
//

import UIKit

class Tab1ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var myLabel: UILabel!
    
    
        //強さ、テイスト、ベース
        var myUIPicker: UIPickerView = UIPickerView()
        var salarymanArr: NSArray = ["強い","普通","弱い"]
        var yakushokuArr: NSArray = ["辛い","甘い","酸っぱい","薬草"]
        var kinmuchiArr: NSArray = ["ウォッカ","ラム","ジン","テキーラ","リキュール","ビール","その他"]
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            myUIPicker.delegate = self
            myUIPicker.dataSource = self
        }
        
        //表示列
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 3
        }
        
        //表示個数
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            
            if (component == 0){
                return salarymanArr.count
            }else if (component == 1){
                return yakushokuArr.count
            }else if (component == 2){
                return kinmuchiArr.count
            }
            return 0;
        }
        
        //表示内容
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            
            if (component == 0){
                return salarymanArr[row] as! String
            }else if (component == 1){
                return yakushokuArr[row] as! String
            }else if (component == 2){
                return kinmuchiArr[row] as! String
            }
            return "";
        }
        
        //選択時
        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            
            if (component == 0){
                print("列: \(row)")
                print("値: \(salarymanArr[row])")
            }else if (component == 1){
                print("列: \(row)")
                print("値: \(yakushokuArr[row])")
            }else if (component == 2){
                print("列: \(row)")
                print("値: \(kinmuchiArr[row])")
            }
            
        }
    
    
    
    
    
    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
}

