//
//  User.swift
//  GithubFollowers
//
//  Created by Bryan Cuevas on 4/14/20.
//  Copyright © 2020 bryanCuevas. All rights reserved.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publisGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
