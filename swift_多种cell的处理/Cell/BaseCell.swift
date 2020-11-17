//
//  BaseCell.swift
//  Cell
//
//  Created by suifumin on 2020/11/12.
//

import UIKit

class BCell: UITableViewCell {
    var model:ModelProtocol? {
        didSet {
            self.contentView.backgroundColor = .red
        }
    }
    

}
class Acell: UITableViewCell {
    var model:ModelProtocol? {
        didSet {
            self.contentView.backgroundColor = .blue
        }
    }
}
class Ccell: UITableViewCell {
    var model:ModelProtocol? {
        didSet {
            self.contentView.backgroundColor = .orange
        }
    }
}
