//
//  File.swift
//  
//
//  Created by Yegor Heiz on 19.08.2020.
//

import Fluent

struct CreatePoem: Migration {
    func prepare(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("poems")
            .id()
            .field("title", .string, .required)
            .field("author", .string, .required)
            .field("text", .string, .required)
            .create()
    }

    func revert(on database: Database) -> EventLoopFuture<Void> {
        return database.schema("poems").delete()
    }
}
