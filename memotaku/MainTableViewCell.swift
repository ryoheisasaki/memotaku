//
//  MainTableViewCell.swift
//  memotaku
//
//  Created by 佐々木遼平 on 2023/09/28.
//

import UIKit
import Foundation

class MainTableViewCell: UITableViewCell {
    //delegateのプロパティ
    var delegate: TableViewCellDelegate?
    
    var sizeData = mainCellModel()
    
    
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var mainDate: UILabel!
    @IBOutlet weak var mainEditButton: UIButton!
    
    
    @IBAction func mainEditButton(_ sender: Any) {
        // 別の画面に遷移
        delegate?.segue(sizeData: sizeData)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setCell(mainCell: mainCellModel) { 
            sizeData = mainCell
            self.mainTitle.text = sizeData.title
            self.mainDate.text = sizeData.date
        }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
