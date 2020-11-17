//
//  ViewController.swift
//  Cell
//
//  Created by suifumin on 2020/11/12.
//

import UIKit

class ViewController: UIViewController {
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.backgroundColor = .white
        tableView.tableFooterView = UIView()
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
    lazy var dataArray:[ModelProtocol] = [ModelProtocol]()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(self.tableView)
        self.tableView.frame = self.view.bounds
        let amodel = Amodel()
        let bmodel = Bmodel()
        let cmodel = Cmodel()
        self.dataArray.append(amodel)
        self.dataArray.append(bmodel)
        self.dataArray.append(cmodel)
        self.tableView.reloadData()
        
            
        
    }


}
extension ViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model: ModelProtocol = self.dataArray[indexPath.row]
        let cell: UITableViewCell = model.createCellWithTabelView(tableView: tableView, reusedStr: model.cellReusedIdentifier())
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let model: ModelProtocol = self.dataArray[indexPath.row]
        return model.cellHeigtForIndexth(indexpath: indexPath)
    }
    
    
    
    
    
    
    
}
