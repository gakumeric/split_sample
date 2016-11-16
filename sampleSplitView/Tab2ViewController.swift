//
//  Tab2ViewController.swift
//  sampleSplitView
//
//  Created by 木下岳 on 2016/11/15.
//  Copyright © 2016年 gakukinoshita. All rights reserved.
//

import UIKit

class Tab2ViewController: UIViewController, UITableViewDataSource, UISearchBarDelegate {

    @IBOutlet weak var myTable: UITableView!
    @IBOutlet weak var mySearch: UISearchBar!
    
    var dataList = ["先週月曜日","先週水曜日","先週金曜日","土曜日","日曜日","今週火曜日","今週木曜日","来週土曜日","来週日曜日"]
    
    var searchResult = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mySearch.delegate = self
        
        mySearch.enablesReturnKeyAutomatically = false
        
        searchResult = dataList
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TestCell", for: indexPath) as UITableViewCell
        
        cell.textLabel?.text = searchResult[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searchResult.count
    }

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        mySearch.endEditing(true)
        searchResult.removeAll()
        if(mySearch.text == "") {
        searchResult = dataList
        } else {
            for data in dataList {
                if data.containsString(mySearch.text) {
                    searchResult.append(data)
                }
            }
        }
        myTable.reloadData()
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
