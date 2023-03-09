//
//  NewsTableCellViewModel.swift
//  News_App
//
//  Created by RichardTurney on 08/03/2023.
//

import UIKit

class NewsTableCellViewModel {
    let title: String
    let publicationDate: String
    
    init(
        title: String,
        date: String
    ){
        self.title = title
        self.publicationDate = date
    }

}
