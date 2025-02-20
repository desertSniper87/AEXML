/**
 *  https://github.com/tadija/AEXML
 *  Copyright © Marko Tadić 2014-2021
 *  Licensed under the MIT license
 */

import Foundation
#if canImport(FoundationXML)
import FoundationXML
#endif


/// Options used in `AEXMLDocument`
public struct AEXMLOptions {
    
    /// Values used in XML Document header
    public struct DocumentHeader {
        /// Version value for XML Document header (defaults to 1.0).
        public var version = 1.0
        
        /// Encoding value for XML Document header (defaults to "utf-8").
        public var encoding = "utf-8"
        
        /// Standalone value for XML Document header (defaults to "no").
        public var standalone = "no"
        
        /// XML Document header
        public var xmlString: String {
            return "<?xml version=\"\(version)\" encoding=\"\(encoding)\" standalone=\"\(standalone)\"?>"
        }
    }
    
    /// Settings used by `Foundation.XMLParser`
    public struct ParserSettings {
        /// Parser reports the namespaces and qualified names of elements. (defaults to `false`)
        public var shouldProcessNamespaces = false
        
        /// Parser reports the prefixes indicating the scope of namespace declarations. (defaults to `false`)
        public var shouldReportNamespacePrefixes = false
        
        /// Parser reports declarations of external entities. (defaults to `false`)
        public var shouldResolveExternalEntities = false
        
        /// Parser should trim whitespace from text nodes. (defaults to `true`)
        public var shouldTrimWhitespace = false
    }
    
    /// Values used in XML Document header (defaults to `DocumentHeader()`)
    public var documentHeader = DocumentHeader()
    
    /// Settings used by `Foundation.XMLParser` (defaults to `ParserSettings()`)
    public var parserSettings = ParserSettings()
    
    /// Designated initializer - Creates and returns default `AEXMLOptions`.
    public init() {}
    
}
