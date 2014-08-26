import Foundation

/**
R1 – Create a constant array of String literals called “types” with the
values: technology, memes, cat videos
**/
let types = ["technology", "memes", "cat videos"]

/**
R2 – Create a BlogPost class with the following properties:

1. type – String, constant. A random value from the types
array. (Hint: you can use arc4random_uniform to randomly select a value.)
2. views – Optional Int. Set to nil.
3. author – String
4. email – String
5. order – Int. Set to zero.

Create an initializer to set the author’s name (the author property) and email property. Create a “teaser”
method that returns a String with the author’s name and number of views:
“Mike Smith has 5 views for this blog post”. If views are nil,
return “No one has read your blog post yet. Pity.”.
**/

class BlogPost {
    
    let type = types[Int(arc4random_uniform(UInt32(types.count)))]
    var views: Int? = nil
    var author: String
    var email: String
    var order: Int = 0
    
    init(author: String, email: String) {
        self.author = author
        self.email = email
    }
    
    func teaser() -> String {
        if let viewsCount = views {
            return "Mike Smith has \(views) views for this blog post"
        } else {
            return "No one has read your blog post yet. Pity."
        }
    }
}

/**
R3 – Create a “randomAuthor” function that returns a tuple. Then create
an “Author” struct with a “name” and “email” property. Add 5 Author structs
to a dictionary using the author’s name as the key. This function returns
a randomly selected name and email of an Author from the dictionary.
**/

