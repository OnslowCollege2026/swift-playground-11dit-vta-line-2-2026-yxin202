// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {

        /// Species list that Maia may see
        let birdList: [String] = ["Tieke", "Kākā", "Takahē", "Hihi", "Kiwi", "Pāteke", "Tūī", "Kererū"]
        let insectList: [String] = ["Giant Wētā", "Tree Wētā", "Cave Wētā", "Putoko", "Pūngāwerewere", 
        "Ngaokeoke", "Waemano", "Kapowai"]
        /// Species Maia has seen already
        var speciesMaiaSeen: [String] = []
        /// The total number of species Maia has seen today
        var numberOfSpecies: [Int] = []
        /// Condition of whether Maia wants to add another specie or not
        var isAdding = true


        print("Welcome to Zealandia Tracker.")

        while isAdding{

        // Ask Maia what tpye of specie did she see
            print("Did you see a bird or insect: ")
            let birdOrInsect = readLine()
            if birdOrInsect?.lowercased() == "bird"{

                // Print out bird list when Maia says she saw a bird and ask her which one did she see
                print("Which bird did you see?")
                birdList.enumerated().forEach{ index, birdName in
                    print("\(index + 1). \(birdName)")
                }
                print("Enter a number: ")
                let numberSelected: Int = Int(readLine()!)!

                // Get the bird'name from the list based on the number Maia selected
                let birdMaiaSaw = birdList[numberSelected - 1]

                // Check if the specie list contains the bird Maia just saw
                if speciesMaiaSeen.contains(birdMaiaSaw){
                    // If the specie list contains the bird Maia just saw, increase the total seen time by 1
                    let index = speciesMaiaSeen.firstIndex(of: birdMaiaSaw)!
                    numberOfSpecies[index] = numberOfSpecies[index] + 1
                    
                }else{
                    // If the specie list does not contain the bird Maia just saw, add the bird into the
                    // speice list and set the seen time to 1
                    speciesMaiaSeen.append(birdMaiaSaw)
                    numberOfSpecies.append(1)
                }

                // Tell Maia the bird is added
                print("Added a \(birdMaiaSaw)")

            }else if birdOrInsect?.lowercased() == "insect"{

                // Print out insect list when Maia says she saw a insect and ask her which one did she see
                print("Which insect did you see?")
                insectList.enumerated().forEach{ index, insectName in
                    print("\(index + 1). \(insectName)")
                }
                print("Enter a number: ")
                let numberSelected: Int = Int(readLine()!)!
                // Get the insect'name from the list based on the number Maia selected
                let insectMaiaSaw = insectList[numberSelected - 1]

                // Check if the specie list contains the insect Maia just saw
                if speciesMaiaSeen.contains(insectMaiaSaw){
                    // If the specie list contains the insect Maia just saw, increase the total seen time by 1
                    let index = speciesMaiaSeen.firstIndex(of: insectMaiaSaw)!
                    numberOfSpecies[index] = numberOfSpecies[index] + 1
                    
                }else{
                    // If the specie list does not contain the insect Maia just saw, add the insect into the
                    // speice list and set the seen time to 1
                    speciesMaiaSeen.append(insectMaiaSaw)
                    numberOfSpecies.append(1)
                }

                // Tell Maia the insect is added
                print("Added a \(insectMaiaSaw)")

            }
            // Ask Maia if she wants to add another specie, "y" for continue and "n" for stop
            print("Do you want to add another (Y/N): ")
            let userDecision = readLine()
            // If yes, the programme keep asking Maia
            if userDecision?.lowercased() == "y"{
                isAdding = true}
            // If not, it counts the species she has seen and shows her the totals
            else if userDecision?.lowercased() == "n"{
                isAdding = false
            }
        }
        // Bind together the species list and the seen time list to help to print species out 1 by 1
        let totalSpecies = Array(zip(speciesMaiaSeen, numberOfSpecies))
        print("Today, you saw:")
        // Get each specie and print out the total seen time of it and its name
        totalSpecies.forEach{ specie in
        print("\(specie.1) \(specie.0)")
        }
        print("Good bye")
    }
}




