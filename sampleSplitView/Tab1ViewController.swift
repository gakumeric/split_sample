//
//  Tab1ViewController.swift
//  sampleSplitView
//
//  Created by 木下岳 on 2016/11/12.
//  Copyright © 2016年 gakukinoshita. All rights reserved.
//

import UIKit

class Tab1ViewController: UIViewController {

    @IBOutlet weak var testImageView: UIImageView!
    var imageName:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //最初からあるメソッド
        func viewDidLoad() {
            super.viewDidLoad()
            
            //画像を設定する。
            if(imageName != nil) {
                testImageView.image = UIImage(named: imageName)
            }
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


}
