//
//  iOS_CleanArchitecture_template.swift
//  iOS-CleanArchitecture-template
//
//  Created by Anas on 21/11/2026.
//

import SwiftUI

@main
struct CleanArchitectureApp: App {
    var body: some Scene {
        WindowGroup {
            ArchitectureDashboardView()
        }
    }
}

struct ArchitectureDashboardView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("ARCHITECTURE")
                    .font(.caption.weight(.bold))
                    .foregroundStyle(.secondary)

                Text("Build better.\nBuild structured.")
                    .font(.system(size: 34, weight: .bold))

                Text("A scalable Clean Architecture foundation for modern iOS applications.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                layer("App", "Application entry and configuration",
                      "AppConfiguration, AppRouter, AppState, DependencyContainer, RootView")
                layer("Core", "Shared infrastructure and utilities",
                      "Networking, Storage, Security, Logging, ErrorHandling, Validation, DesignSystem, Constants, Extensions")
                layer("Data", "Data sources and persistence",
                      "DataSource, DTOs, Models, Mappers, Repositories, Services")
                layer("Domain", "Business logic and application rules",
                      "Entities, Repositories, UseCases")
                layer("Features", "Feature-based presentation layer",
                      "Authentication, Onboarding, Home, Profile")
                layer("Shared", "Reusable UI and shared state",
                      "Components, Extensions, State")
                layer("Resources", "Application assets and resources",
                      "Assets, Fonts, Localizable, Configurations")
            }
            .padding(20)
        }
    }

    func layer(_ title: String, _ subtitle: String, _ items: String) -> some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title).font(.headline)
            Text(subtitle).font(.caption).foregroundStyle(.secondary)
            Text(items).font(.caption)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(16)
        .background(Color.gray.opacity(0.12))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
