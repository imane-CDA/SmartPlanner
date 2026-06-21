//
//  Mock Tasks.swift
//  SmartPlanner
//
//  Created by Apprenant131 on 17/06/2026.
//

import Foundation

// objectif : Attacher les données de démonstrations au modèle lui-même
// Task.mock ou Task.mocks
extension Task {

    static let mock = Task(
        title: "Faire les",
        titleUppercase: "courses",
        details:
            "Pathé, litiaire, lait, huile, tranche de dinde, cornichon, yaourt, fromage, créme fraîche, glace, salade, semoule, beurre, menthe.",
        adresse: "18 boulevard staligrad",
        city: "Vitry-sur-Seine",
        createdAt: Date(),
        status: .todo,
        priority: .small
    )

    static let mocks = [

        Task(
            title: "Faire les ",
            titleUppercase: "courses",
            details:
                "Pathé, litiaire, lait, huile, tranche de dinde, cornichon, yaourt, fromage, créme fraîche, glace, salade, semoule, beurre, menthe.",
            adresse: "18 boulevard staligrad",
            city: "Vitry-sur-Seine",
            createdAt: Date(),
            dueDate: nil,
            status: .todo,
            priority: .small
        ),

        Task(
            title: "Appeler ",
            titleUppercase: "maman",
            details: "Lui dire que je l'aime.",
            adresse: nil,
            city: nil,
            createdAt: Date(),
            dueDate: nil,
            status: .done,
            priority: .big
        ),

        Task(
            title: "Travailler sur ",
            titleUppercase: "SmartPlanner",
            details:
                "Tâche à réaliser dans le cadre de mon organisation quotidienne.",
            adresse: nil,
            city: nil,
            createdAt: Date(),
            dueDate: nil,
            status: .todo,
            priority: .medium
        ),

        Task(
            title: "Travailler ",
            titleUppercase: "L'algorithmie",
            details:
                "Tâche à réaliser dans le cadre de mon organisation quotidienne.",
            adresse: nil,
            city: nil,
            createdAt: Date(),
            dueDate: nil,
            status: .todo,
            priority: .big
        ),

        Task(
            title: "Appeler ",
            titleUppercase: "papa",
            details: "Lui dire que je l'aime.",
            adresse: nil,
            city: nil,
            createdAt: Date(),
            dueDate: nil,
            status: .done,
            priority: .big
        ),

        Task(
            title: "projet ",
            titleUppercase: "MonCarnetDeVoyage",
            details:
                "Tâche à réaliser dans le cadre de mon organisation quotidienne.",
            adresse: nil,
            city: nil,
            createdAt: Date(),
            dueDate: nil,
            status: .done,
            priority: .medium
        ),

        Task(
            title: "Appeler la ",
            titleUppercase: "Gardienne",
            details: "Interphone non fonctionnel",
            adresse: nil,
            city: nil,
            createdAt: Date(),
            dueDate: nil,
            status: .done,
            priority: .small
        ),

        Task(
            title: "projet ",
            titleUppercase: "Bambin",
            details: "Interphone non fonctionnel",
            adresse: nil,
            city: nil,
            createdAt: Date(),
            dueDate: nil,
            status: .done,
            priority: .medium
        ),
    ]

}
