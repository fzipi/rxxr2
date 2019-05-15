# © Copyright University of Birmingham, UK

#!/bin/bash
set -e
ocamlyacc RegexParser.mly
ocamllex RegexLexer.mll
ocamlyacc PatternParser.mly
ocamllex PatternLexer.mll
ocamlc -g -c ParsingData.mli ParsingData.ml
ocamlc -g -c RegexParser.mli RegexParser.ml
ocamlc -g -c RegexLexer.ml
ocamlc -g -c PatternParser.mli PatternParser.ml
ocamlc -g -c PatternLexer.ml
ocamlc -g -c ParsingMain.mli ParsingMain.ml
ocamlc -g -c Common.mli Common.ml
ocamlc -g -c Nfa.mli Nfa.ml
ocamlc -g -c RegexScanner.mli RegexScanner.ml
ocamlc -g -c Flags.mli Flags.ml
ocamlc -g -c Word.mli Word.ml
ocamlc -g -c Util.mli Util.ml
ocamlc -g -c Beta.mli Beta.ml
ocamlc -g -c Phi.mli Phi.ml
ocamlc -g -c Triple.mli Triple.ml
ocamlc -g -c Product.mli Product.ml
ocamlc -g -c XAnalyser.mli XAnalyser.ml
ocamlc -g -c Y1Analyser.mli Y1Analyser.ml
ocamlc -g -c Y2Analyser.mli Y2Analyser.ml
ocamlc -g -c ZAnalyser.mli ZAnalyser.ml
ocamlc -g -c AnalyserMain.mli AnalyserMain.ml
ocamlc -g -c RuleScanner.mli RuleScanner.ml
ocamlc -g -c Run.ml
OCAMLRUNPARAM=b ocamlc -g str.cma ParsingData.cmo RegexParser.cmo RegexLexer.cmo PatternParser.cmo PatternLexer.cmo ParsingMain.cmo Common.cmo Nfa.cmo RegexScanner.cmo Flags.cmo Word.cmo Util.cmo Beta.cmo Phi.cmo Triple.cmo Product.cmo XAnalyser.cmo Y1Analyser.cmo Y2Analyser.cmo ZAnalyser.cmo unix.cma AnalyserMain.cmo RuleScanner.cmo Run.cmo -o scan.bin
rm *.cmi *.cmo RegexParser.mli RegexParser.ml RegexLexer.ml PatternParser.mli PatternParser.ml PatternLexer.ml
