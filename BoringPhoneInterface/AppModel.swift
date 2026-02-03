//
//  AppModel.swift
//  BoringPhoneInterface
//
//  Created by Akshay Patnaik on 2/3/26.
//

import Foundation

struct AppItem: Identifiable {
    let id = UUID()
    let name: String
    let urlScheme: String
    let fallbackURL: String // Used if the app isn't installed
}

struct AppCategory: Identifiable {
    let id = UUID()
    let title: String
    let apps: [AppItem]
}

class AppData {
    static let categories: [AppCategory] = [
        // ZONE 1: CORE (Essentials)
        AppCategory(title: "Core", apps: [
            AppItem(name: "Phone", urlScheme: "tel://", fallbackURL: ""),
            AppItem(name: "Messages", urlScheme: "sms://", fallbackURL: ""),
            AppItem(name: "Maps", urlScheme: "maps://", fallbackURL: ""), // Apple Maps
            AppItem(name: "Wallet", urlScheme: "shoebox://", fallbackURL: ""), // Apple Wallet
        ]),

        // ZONE 2: COMMUNICATION
        AppCategory(title: "Communication", apps: [
            AppItem(name: "Mail", urlScheme: "mailto://", fallbackURL: ""),
            AppItem(name: "WhatsApp", urlScheme: "whatsapp://", fallbackURL: "https://whatsapp.com"),
            AppItem(name: "Discord", urlScheme: "discord://", fallbackURL: "https://discord.com"),
            AppItem(name: "Slack", urlScheme: "slack://", fallbackURL: "https://slack.com"),
            AppItem(name: "Beeper", urlScheme: "beeper://", fallbackURL: "https://beeper.com"),
            AppItem(name: "Google Chat", urlScheme: "googlechat://", fallbackURL: "https://chat.google.com"),
        ]),

        // ZONE 3: UTILITIES
        AppCategory(title: "Utilities", apps: [
            AppItem(name: "Weather", urlScheme: "weather://", fallbackURL: "https://weather.com"),
            AppItem(name: "Calculator", urlScheme: "calculator://", fallbackURL: ""), // Apple Calc
            AppItem(name: "Calc84", urlScheme: "calculate84://", fallbackURL: ""), // Guess - Verify this
            AppItem(name: "Alarmy", urlScheme: "alarmy://", fallbackURL: ""),
            AppItem(name: "Spotify", urlScheme: "spotify://", fallbackURL: "https://spotify.com"),
            AppItem(name: "Brave", urlScheme: "brave://", fallbackURL: "https://brave.com"),
            AppItem(name: "Files", urlScheme: "shareddocuments://", fallbackURL: ""), // Apple Files
        ]),

        // ZONE 4: PRODUCTIVITY & DEV
        AppCategory(title: "Work & Dev", apps: [
            AppItem(name: "Notion", urlScheme: "notion://", fallbackURL: "https://notion.so"),
            AppItem(name: "Calendar", urlScheme: "calshow://", fallbackURL: ""),
            AppItem(name: "GitHub", urlScheme: "github://", fallbackURL: "https://github.com"),
            AppItem(name: "ChatGPT", urlScheme: "chatgpt://", fallbackURL: "https://chatgpt.com"),
            // MISSING/UNVERIFIED SCHEMES - These open web fallbacks if app scheme fails
            AppItem(name: "DeepSeek", urlScheme: "deepseek://", fallbackURL: "https://deepseek.com"),
            AppItem(name: "Gemini", urlScheme: "googleapp://", fallbackURL: "https://gemini.google.com"),
        ]),

        // ZONE 5: LIFE & HOME
        AppCategory(title: "Life", apps: [
            AppItem(name: "Google Home", urlScheme: "googlehome://", fallbackURL: ""),
            AppItem(name: "Alexa", urlScheme: "alexa://", fallbackURL: ""),
            AppItem(name: "Tesla", urlScheme: "tesla://", fallbackURL: ""),
            AppItem(name: "Uber/Transit", urlScheme: "uber://", fallbackURL: ""),
            // Niche apps usually don't have public schemes, listed here for you to test
            AppItem(name: "MyColorado", urlScheme: "mycolorado://", fallbackURL: "https://mycolorado.state.co.us"),
            AppItem(name: "Sweatcoin", urlScheme: "sweatcoin://", fallbackURL: ""),
        ])
    ]
}
