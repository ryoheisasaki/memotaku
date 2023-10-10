//
//  TableViiewCellDelegate.swift
//  memotaku
//
//  Created by 佐々木遼平 on 2023/10/08.
//

import Foundation

protocol TableViewCellDelegate : class {
    func segue(sizeData: mainCellModel)
}
