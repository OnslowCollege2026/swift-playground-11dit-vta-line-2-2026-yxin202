// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

        // Create menu for food
        let foodMenu : [String] = ["Burger", "Sushi", "Pizza", "Garlic bread", "Pork bun", "Dumplings"]
        let foodCost : [Double] = [7.00, 4.00, 5.00, 4.00, 5.00, 5.00]

        // Create menu for drink
        let drinkMenu : [String] = ["Juice", "Up & Go", "Gatorade", "Water", "Coffee", "Fruit soda drink"]
        let drinkCost : [Double] = [4.00, 4.50, 6.00, 3.00, 6.00, 4.00]

        // Set up condition for while loop checking if the student want to keep ordering or not
        var isOrdering = true

        // Set a variable to store total cost of student's order
        var totalCost : Double = 0


        //  The welcoming message
        print("Welcome to Canteen.")
        
        while isOrdering{
            // Asks students if they want a food or a drink
            print("Do you want to buy a food or a drink: ")
            let foodOrDrink = readLine()?.lowercased()
            if foodOrDrink == "food"{
                // Asks them to select the food they want from the menu (slide 10)
                print("What do you want to order?")
                (0...foodMenu.count - 1).forEach { index in
                    print("\(index + 1). \(foodMenu[index]) - $\(foodCost[index])")
                }
                print("Enter a number: ")
                let userInput : String = readLine()!
                let indexUserChose : Int = Int(userInput)!
                let foodName = foodMenu[indexUserChose - 1]
                let foodCost = foodCost[indexUserChose - 1]
                // Tell the students that the food is added and add the cost to the total cost
                print("You ordered \(foodName), it costs $\(foodCost)")
                totalCost = totalCost + foodCost
            }
            else if foodOrDrink == "drink"{
                // Asks them to select the drink they want from the menu (slide 10)
                print("What do you want to order?")
                (0...drinkMenu.count - 1).forEach { index in
                    print("\(index + 1). \(drinkMenu[index]) - $\(drinkCost[index])")
                }
                print("Enter a number: ")
                let userInput : String = readLine()!
                let indexUserChose : Int = Int(userInput)!
                let drinkName = drinkMenu[indexUserChose - 1]
                let drinkCost = drinkCost[indexUserChose - 1]
                // Tell the students that the drink is added and add the cost to the total cost
                print("You ordered \(drinkName), it costs $\(drinkCost)")
                totalCost = totalCost + drinkCost
            }
            // Asks them if they want to buy anything else
            print("Do you want to order something else(Y/N): ")
            let userDecision = readLine()?.lowercased()
            if userDecision == "y"{
                isOrdering = true
            }
            else if userDecision == "n"{
                isOrdering = false
            }
        }
        // If not, it counts the total cost and show it to the students.
        print("Total cost is $\(totalCost), thank you very much. Have a nice day!")
    }
}



