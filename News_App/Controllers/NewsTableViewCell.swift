//
//  NewsTableViewCell.swift
//  News_App
//
//  Created by RichardTurney on 08/03/2023.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    static let indetifier = "NewsTableViewCell"
    
    private let newsTitleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 25, weight: .medium)
        return label
    }()
    
    private let publicationDate: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15, weight: .regular)
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(newsTitleLabel)
        contentView.addSubview(publicationDate)
    }
    
    required init?(coder: NSCoder){
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        newsTitleLabel.frame = CGRect(x: 10, y: 0, width: contentView.frame.size.width - 100, height: contentView.frame.size.height/2)
        publicationDate.frame = CGRect(x: 10, y: 70, width: contentView.frame.size.width - 100, height: 70)
    }
    
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        newsTitleLabel.text = nil
        publicationDate.text = nil
    }
    
    func configure(with viewModel: NewsTableCellViewModel) {
        newsTitleLabel.text = viewModel.title
        publicationDate.text = viewModel.publicationDate
    }
}
