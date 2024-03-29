//
//  TransactionCell.swift
//  Core
//
//  Created by MacBook on 24/05/21.
//

import UIKit
import Kingfisher


public class TransactionCell: UITableViewCell {

    @IBOutlet var transactioonView: UIView!
    
    @IBOutlet var userImage: UIImageView!
    @IBOutlet var amountLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var noteLabel: UILabel!
    
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        
        transactioonView.setShadow(color: UIColor.black.cgColor, opacity: 0.1)
    }

    public override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    public func showData (transaction: TransactionEntity) {
        self.nameLabel.text = transaction.name
        self.noteLabel.text = transaction.notes
        
        if transaction.type == "in" {
            self.amountLabel.text = "+\(transaction.amount.formatToIdr())"
            self.amountLabel.textColor = #colorLiteral(red: 0.1176470588, green: 0.7568627451, blue: 0.3725490196, alpha: 1)
        } else {
            self.amountLabel.text = "-\(transaction.amount.formatToIdr())"
            self.amountLabel.textColor = #colorLiteral(red: 1, green: 0.3568627451, blue: 0.2156862745, alpha: 1)
        }
        
        let url = URL(string: transaction.imageUrl)
        self.userImage.kf.setImage(with: url)
        
    }
    
}

