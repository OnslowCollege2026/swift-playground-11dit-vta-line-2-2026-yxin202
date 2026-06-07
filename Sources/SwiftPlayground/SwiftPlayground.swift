// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        let birds: [String] = ["Tieke", "Kākā", "Takahē", "Hihi", "Kiwi", "Pāteke", "Tūī", "Kererū"]
        let insects: [String] = ["Giant Wētā", "Tree Wētā", "Cave Wētā", "Putoko", "Pūngāwerewere", "Ngaokeoke", "Waemano", "Kapowai"]
        var isRunning = true
        var isAskingContinue = true
        var creaturesMaiaSaw: [String] = []
        var numberOfCreatures: [Int] = []


        print("Welcome to Zealandia Tracker")


        while isRunning{
            
            print("Did you see a bird or insect: ")
            if let creatureType: String = readLine(){
                if creatureType.lowercased() == "bird"{
                    print("Which bird did you see?")
                    birds.enumerated().forEach { index, birdName in
                        print("\(index + 1). \(birdName)")
                    }
                    print("Enter a number: ")
                    if let userInput = readLine(),
                    let indexUserEntered = Int(userInput){
                        if indexUserEntered > 0 && indexUserEntered <= birds.count{
                            let birdMaiaSaw = birds[indexUserEntered - 1]
                            if creaturesMaiaSaw.contains(birdMaiaSaw){
                                numberOfCreatures[creaturesMaiaSaw.firstIndex(of: birdMaiaSaw)!] += 1
                            }else{
                                creaturesMaiaSaw.append(birdMaiaSaw)
                                numberOfCreatures.append(1)
                            }
                            print("\(birdMaiaSaw) is added")
                            
                        }else{
                            print("Out of range number selected!")
                        }
                    }else{
                        print("Please enter a number")
                    }
                }else if creatureType.lowercased() == "insect"{
                    print("Which insect did you see?")
                    insects.enumerated().forEach { index, insectName in
                        print("\(index + 1). \(insectName)")
                    }
                    print("Enter a number: ")
                    if let userInput = readLine(),
                    let indexUserEntered = Int(userInput){
                        if indexUserEntered > 0 && indexUserEntered <= insects.count{
                            let insectMaiaSaw = insects[indexUserEntered - 1]
                            if creaturesMaiaSaw.contains(insectMaiaSaw){
                                numberOfCreatures[creaturesMaiaSaw.firstIndex(of: insectMaiaSaw)!] += 1
                            }else{
                                creaturesMaiaSaw.append(insectMaiaSaw)
                                numberOfCreatures.append(1)
                            }
                            print("\(insectMaiaSaw) is added")
                        }else{
                            print("Out of range number selected!")
                        }
                    }else{
                        print("Please enter a number")
                    }
                }else{
                    print("Please select bird or insect")
                }
                isAskingContinue = true
                while isAskingContinue{
                    print("Do you want to add another (Y/N): ")
                    if let userDecision = readLine()?.lowercased(){
                        if userDecision == "y"{
                            isRunning = true
                            isAskingContinue = false
                        }else if userDecision == "n"{
                            isRunning = false
                            isAskingContinue = false
                        }else{
                            print("Please enter Y/N")
                        }
                    }else{
                        print("Please enter a valid input")
                    }
                }
            }else{
                print("Please enter a valid word")
            }
        }
        let totalList = Array(zip(creaturesMaiaSaw, numberOfCreatures))
        print("Today you saw:")
        totalList.forEach { creature in
        print("\(creature.1) \(creature.0)")
        }        
    }
}
