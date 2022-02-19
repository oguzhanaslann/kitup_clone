//
//  BookGroup.swift
//  kitup.clone
//
//  Created by Oğuzhan Aslan on 12.02.2022.
//

import Foundation

struct BookGroup: Identifiable {
    let id :String
    let title : String
    let bookList : [BookOverview]
}
