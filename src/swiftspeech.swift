import NaturalLanguage
import CoreML

extension Array where Element == String {
  var SEXP: SEXP? {
    let charVec = Rf_protect(Rf_allocVector(SEXPTYPE(STRSXP), count))
    defer { Rf_unprotect(1) }
    for (idx, elem) in enumerated() { SET_STRING_ELT(charVec, idx, Rf_mkChar(elem)) }
    return(charVec)
  }
}

@_cdecl("part_of_speech")
public func part_of_speech(_ x: SEXP) -> SEXP {

  let text = String(cString: R_CHAR(STRING_ELT(x, 0)))
  let tagger = NLTagger(tagSchemes: [.lexicalClass])

  tagger.string = text

  let options: NLTagger.Options = [.omitPunctuation, .omitWhitespace]

  var txts = [String]()
  var tags = [String]()

  tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .word, scheme: .lexicalClass, options: options) { tag, tokenRange in
    if let tag = tag {
      txts.append("\(text[tokenRange])")
      tags.append("\(tag.rawValue)")
    }
    return true
  }

  let out = Rf_protect(Rf_allocVector(SEXPTYPE(VECSXP), 2))
  SET_VECTOR_ELT(out, 0, txts.SEXP)
  SET_VECTOR_ELT(out, 1, tags.SEXP)
  Rf_unprotect(1)

  return(out!)
}