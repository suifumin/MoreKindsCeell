//
//  BaseModel.swift
//  Cell
//
//  Created by suifumin on 2020/11/12.
//

import UIKit
protocol ModelProtocol {
    //返回重用标识符
    func cellReusedIdentifier() -> (String)
    //返回高度
    func cellHeigtForIndexth(indexpath: IndexPath) -> (CGFloat)
    //创建cell
    func createCellWithTabelView(tableView: UITableView,reusedStr: String) -> UITableViewCell
}
class BaseModel: NSObject,ModelProtocol {
    func cellReusedIdentifier() -> (String) {
        return ""
    }
    
    func cellHeigtForIndexth(indexpath: IndexPath) -> (CGFloat) {
        return 0.0
    }
    
    func createCellWithTabelView(tableView: UITableView, reusedStr: String) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell()
        return cell
    }
    

    
    
}
class Amodel: NSObject,ModelProtocol {
     func cellReusedIdentifier() -> (String) {
        return "ACell"
    }
    
    func cellHeigtForIndexth(indexpath: IndexPath) -> (CGFloat) {
        return 50
    }
    
  func createCellWithTabelView(tableView: UITableView, reusedStr: String) -> UITableViewCell {
    var cell = tableView.dequeueReusableCell(withIdentifier: reusedStr) as? Acell
    if(cell == nil) {
        cell = Acell(style: .default, reuseIdentifier: reusedStr)
    }
    cell?.model = self
        return cell!
    }
}

class Bmodel:NSObject,ModelProtocol {
     func cellReusedIdentifier() -> (String) {
        return "BCell"
    }
    
   func cellHeigtForIndexth(indexpath: IndexPath) -> (CGFloat) {
        return 100.0
    }
    
    func createCellWithTabelView(tableView: UITableView, reusedStr: String) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: reusedStr) as? BCell
        if(cell == nil) {
            cell = BCell(style: .default, reuseIdentifier: reusedStr)
        }
        cell?.model = self
        return cell!
    }
}
    


class Cmodel:NSObject,ModelProtocol {
   func cellReusedIdentifier() -> (String) {
        return "CCell"
    }
    
   func cellHeigtForIndexth(indexpath: IndexPath) -> (CGFloat) {
        return 150.0
    }
    
    func createCellWithTabelView(tableView: UITableView, reusedStr: String) -> UITableViewCell {
       var cell = tableView.dequeueReusableCell(withIdentifier: reusedStr) as? Ccell
        if(cell == nil) {
            cell = Ccell(style: .default, reuseIdentifier: reusedStr)
        }
        cell?.model = self
        return cell!
    }
}
    

