//
//  Platform.swift
//  
//
//  Created by Nikita Rossik on 12/29/21.
//

/// Available platform
public enum Platform {
	case iOS
	case Linux
	case macOS
	case Windows
	case watchOS
	case Unknown(String)
}

extension Platform: Equatable {}
