//
//  MoodTableViewCell.swift
//  Moody
//
//  Created by XueliangZhu on 11/30/16.
//  Copyright © 2016 ThoughtWorks. All rights reserved.
//

import UIKit

protocol ConfigurableCell {
    associatedtype DataSource
    func configureForObject(_ object: DataSource)
}

class MoodTableViewCell: UITableViewCell {
}

extension MoodTableViewCell: ConfigurableCell {
    func configureForObject(_ mood: Mood) {
        self.textLabel?.text = mood.date.description
    }
}
