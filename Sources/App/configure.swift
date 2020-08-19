import Fluent
import FluentPostgresDriver
import Vapor

// configures your application
public func configure(_ app: Application) throws {
    // uncomment to serve files from /Public folder
    // app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))

    app.databases.use(.postgres(
        hostname: Environment.get("DATABASE_HOST") ?? "packy.db.elephantsql.com",
        username: Environment.get("DATABASE_USERNAME") ?? "vdvbyqwn",
        password: Environment.get("DATABASE_PASSWORD") ?? "ehv2-fLG5iukJy3p1f_fXEYQxfRbujld",
        database: Environment.get("DATABASE_NAME") ?? "vdvbyqwn"
    ), as: .psql)

    app.migrations.add(CreatePoem())

    // register routes
    try routes(app)
}
