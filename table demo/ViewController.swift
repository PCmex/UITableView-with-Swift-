//
//  ViewController.swift
//  table demo
//
//  Created by Parth Changela on 01/01/17.
//  Copyright © 2017 Parth Changela. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var phoneName = ["apple","nokia","samsung","LG","google"]
    var indexArray = ["A","B","C","D","E","F"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return indexArray.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return indexArray[section]
    }
    func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        return indexArray
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return phoneName.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell

        cell.lblName.text! = phoneName[indexPath.row]
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(phoneName[indexPath.row])
    }
}

