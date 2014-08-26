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
            return "Mike Smith has \(viewsCount) views for this blog post"
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

func randomAuthor() -> (String, String) {
    
    struct Author {
        var name: String
        var email: String
    }
    
    let author1 = Author(name: "FirstName LastName I", email: "author1@mail.com")
    let author2 = Author(name: "FirstName LastName II", email: "author2@mail.com")
    let author3 = Author(name: "FirstName LastName III", email: "author3@mail.com")
    let author4 = Author(name: "FirstName LastName IV", email: "author4@mail.com")
    let author5 = Author(name: "FirstName LastName V", email: "author5@mail.com")
    
    var authors = Dictionary<String, Author>()
    authors[author1.name] = author1
    authors[author2.name] = author2
    authors[author3.name] = author3
    authors[author4.name] = author4
    authors[author5.name] = author5
    
    let selectedAuthor = authors.values.array[Int(arc4random_uniform(UInt32(authors.count)))]
    
    return (selectedAuthor.name, selectedAuthor.email)
}

/**
R4 – Create an array of 10 blog posts with a for loop. Set the “author”
property to the value returned from “randomAuthor” function and set
the “order” property to the value of the index of the for loop used to
populate this array.
**/
// implement code for R4 below



/**
R5 – Create a “randomViews” function that accepts the “type” of blog post
for an input. Create an array literal of Ints (these are the possible view
counts) with the values: 10, 20, 30, 40, 50. Select a random value from
this possible view count array and create a switch that returns nil if
the views are 10, 0 if the views are either 20 or 30, else return the randomly
selected number of views. If the “type” passed to the function is
“cat videos” always return nil.
**/
// implement code for R5 below



/**
R6 – Iterate the array of blog posts, generate a value from “randomViews” function
for each one and set it to the blog post “views” property. Then println the
value of each post.teaser().
**/
// implement code for R6 below



/**
R7 – Write a simple stack using a struct with Generics
that has three methods. It should push and pop BlogPosts and also
returns the current count of BlogPosts. Iterate the array of blog posts
and push each one onto the “blogs” stack. Println the count of items in
the stack. Use a for loop to iterate the “blogs” stack, pop the top one
off and println the blog’s teaser. Println the count of items in the stack.
**/
// implement code for R7 below








