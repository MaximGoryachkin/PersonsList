//
//  ListCellTableViewCell.swift
//  PersonsList
//
//  Created by Максим Горячкин on 03.04.2022.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    @IBOutlet var personImage: UIImageView!
    @IBOutlet var firstName: UILabel!
    @IBOutlet var lastName: UILabel!
    @IBOutlet var country: UILabel!
    
//    var viewModel: ListCellViewModelProtocol! {
//        didSet {
//            var content = defaultContentConfiguration()
//            content.text = viewModel.firstName
//            guard let imageData = viewModel.image else { return }
//            content.image = UIImage(data: imageData)
//            contentConfiguration = content
//        }
//    }
    
    var viewModel: ListCellViewModelProtocol! {
        didSet {
            firstName.text = viewModel.firstName
            lastName.text = viewModel.lastName
            country.text = viewModel.country

            guard let imageData = viewModel.image else { return }
            personImage.image = UIImage(data: imageData)
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}
