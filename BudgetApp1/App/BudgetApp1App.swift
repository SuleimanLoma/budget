//
//  BudgetApp1App.swift
//  BudgetApp1
//
//  Created by Suleiman Loma on 26/2/25.
//

import SwiftUI

@main
struct BudgetApp1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext) //sposob dobbavit' svoistva vo  vse viewshki
        }
    }
}
