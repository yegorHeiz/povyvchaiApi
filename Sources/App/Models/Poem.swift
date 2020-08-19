//
//  File.swift
//  
//
//  Created by Yegor Heiz on 19.08.2020.
//

import Fluent
import Vapor

final class Poem: Model, Content {
    static let schema = "poems"
    
    @ID(key: .id)
    var id: UUID?

    @Field(key: "title")
    var title: String
    
    @Field(key: "author")
    var author: String
    
    @Field(key: "text")
    var text: String

    init() { }

    init(id: UUID? = nil, title: String, author: String, text: String) {
        self.id = id
        self.title = title
        self.author = author
        self.text = text
    }
}

