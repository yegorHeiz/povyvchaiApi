import Fluent
import Vapor

func routes(_ app: Application) throws {
    // TODO: Use {meta: {}, data: []?, errors: []?} template for responses (is it possible?)
    app.get { req in
        // TODO: Return datetime and greeting message
        return "Root Endpoint"
    }
    
    app.post("poems") { req -> String in
        // TODO: Return list of poems
        return "Poems Endpoint"
    }
    
    try app.register(collection: TodoController())
}

