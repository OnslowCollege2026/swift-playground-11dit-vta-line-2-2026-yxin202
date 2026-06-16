// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let daysInWeek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday", "Monday"]
        var totalHours : Double = 0
        var averageHours : Double = 0
        print("Welecome to sleep tracker")
        print("")
        print("Let’s start by recording your sleep.")
        (0..<daysInWeek.count - 1).forEach{ index in
            print("What time did you go to sleep on \(daysInWeek[index])?")
            let sleepTime = Double(readLine()!)
            print("What time did you wake up on \(daysInWeek[index + 1])?")
            let wakeTime = Double(readLine()!)
            let timeSleeping = 12 - sleepTime! + wakeTime!
            totalHours += timeSleeping
        }
        averageHours = totalHours / 7
        print("You got total of \(totalHours) hours of sleep this week, which averages to \(averageHours) per day.")
        
        
    }
    }