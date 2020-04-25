//
//  GFError.swift
//  GithubFollowers
//
//  Created by Bryan Cuevas on 4/19/20.
//  Copyright © 2020 bryanCuevas. All rights reserved.
//

import Foundation

import Foundation

enum GFError: String, Error {
    case invalidUserName = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again."
    case unableToFavorite = "There was an error favoriting."
    case alreadyInFavorites = "You already favorited this user. You must really like them. "
}
