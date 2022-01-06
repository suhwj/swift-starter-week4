//
//  Routine.swift
//  CodeStarterCamp_Week4
//
//  Created by 서원지 on 2022/01/05.
//

import Foundation

final class Routine {
    let name: String
    let exercises: [Exercise]
    let bodyCondition: BodyCondition
    
    init(name: String, bodyCondition: BodyCondition, exercises: [Exercise]) {
        self.name = name
        self.bodyCondition = bodyCondition
        self.exercises = exercises
    }
    
    func start(for set: Int) throws {
        print("--------------")
        print("\(name)을  \(set)set 시작합니다.")
        try self.exercises.forEach { exercise in
            print(exercise.name)
            exercise.action()
            try printBodyCondition()
            
        }
    }

    private func printBodyCondition() throws {
        guard bodyCondition.fatigue < 100 else {
            throw FitnessError.fatigueFull
        }
    }
}
