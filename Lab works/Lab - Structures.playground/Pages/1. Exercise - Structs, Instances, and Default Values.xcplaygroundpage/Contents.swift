/*:
## Exercise - Structs, Instances, and Default Values
 
 Imagine you are creating an app that will monitor location. Create a `GPS` struct with two variable properties, `latitude` and `longitude`, both with default values of 0.0.
 */
struct GPS {
    var latitude: Double
    var longitude: Double
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}
//var curLocation = GPS()
//print("current location is \(curLocation.latitude), \(curLocation.longitude)")

//:  Change `somePlace`'s latitude to 51.514004, and the longitude to 0.125226, then print the updated values.
var somePlace = GPS(latitude: 51.514004, longitude: 0.125226)
print("Some place location \(somePlace.latitude), \(somePlace.longitude)")

//:  Now imagine you are making a social app for sharing your favorite books. Create a `Book` struct with four variable properties: `title`, `author`, `pages`, and `price`. The default values for both `title` and `author` should be an empty string. `pages` should default to 0, and `price` should default to 0.0.
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    init(title: String = "", author: String = "", pages: Int = 0, price: Double = 0.0) {
        self.title = title
        self.author = author
        self.pages = pages
        self.price = price
    }
}
//:  Create a variable instance of `Book` called `favoriteBook` without supplying any arguments. Print out the title of `favoriteBook`. Does it currently reflect the title of your favorite book? Probably not. Change all four properties of `favoriteBook` to reflect your favorite book. Then, using the properties of `favoriteBook`, print out facts about the book.
var favoriteBook = Book(title: "цветы для Элджернона", author: "Дэниел Киз", pages: 180, price: 1650)
print("The book is called \(favoriteBook.title). It's written by \(favoriteBook.author). It has \(favoriteBook.pages) and costs \(favoriteBook.price) tenge")

/*:
page 1 of 10  |  [Next: App Exercise - Workout Tracking](@next)
 */
