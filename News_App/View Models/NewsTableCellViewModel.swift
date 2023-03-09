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
    let url: String
    
    init(
        title: String,
        date: String,
        url: String
    ){
        self.title = title
        self.publicationDate = date
        self.url = url
    }

}
