//
//  TestTableViewController.swift
//  sampleSplitView
//
//  Created by 木下岳 on 2016/11/12.
//  Copyright © 2016年 gakukinoshita. All rights reserved.
//

import UIKit

class TestTableViewController: UIViewController {
    
    private let tableData = ["Tab1ViewController", "Tab2ViewController", "Tab3ViewController"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //ナビゲーションバーの左ボタンに画面モードの切り替えボタンを表示する。
        navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
        
        //戻るボタンの後ろに表示する。
        navigationItem.leftItemsSupplementBackButton = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //データの個数を返すメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    //データを返すメソッド
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        //セルを取得し、テキストを設定して返す。
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell")! as UITableViewCell
        cell.textLabel?.text = tableData[indexPath.row]
        
        return cell
    }
    
    
    
    //画面遷移実行前の呼び出しメソッド
    //func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        //遷移先のナビゲーションコントローラーからビューコントローラーを取得し、画像を設定する。
      //  if let navigationController = segue.destination as? UINavigationController {
        //    if let selectedRowIndexPath = tableView.indexPathForSelectedRow {
          //      let controller = navigationController.viewControllers.first as! Tab1ViewController
                //controller.imageName = tableData[selectedRowIndexPath.row]
            //}
        //}
    //}
   
}
