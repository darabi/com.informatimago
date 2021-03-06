;;;; -*- mode:lisp;coding:utf-8 -*-
;;;;**************************************************************************
;;;;FILE:               packages.lisp
;;;;LANGUAGE:           Common-Lisp
;;;;SYSTEM:             Common-Lisp
;;;;USER-INTERFACE:     NONE
;;;;DESCRIPTION
;;;;
;;;;    Defines the C Preprocessor packages.
;;;;
;;;;AUTHORS
;;;;    <PJB> Pascal J. Bourguignon <pjb@informatimago.com>
;;;;MODIFICATIONS
;;;;    2015-06-27 <PJB> Created.
;;;;BUGS
;;;;LEGAL
;;;;    AGPL3
;;;;
;;;;    Copyright Pascal J. Bourguignon 2015 - 2016
;;;;
;;;;    This program is free software: you can redistribute it and/or modify
;;;;    it under the terms of the GNU Affero General Public License as published by
;;;;    the Free Software Foundation, either version 3 of the License, or
;;;;    (at your option) any later version.
;;;;
;;;;    This program is distributed in the hope that it will be useful,
;;;;    but WITHOUT ANY WARRANTY; without even the implied warranty of
;;;;    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;;;;    GNU Affero General Public License for more details.
;;;;
;;;;    You should have received a copy of the GNU Affero General Public License
;;;;    along with this program.  If not, see <http://www.gnu.org/licenses/>.
;;;;**************************************************************************
(eval-when (:compile-toplevel :load-toplevel :execute)
  (setf *readtable* (copy-readtable nil)))
(defpackage "COM.INFORMATIMAGO.LANGUAGES.CPP"
  (:use "COMMON-LISP"
        "COM.INFORMATIMAGO.COMMON-LISP.CESARUM.STREAM"
        "COM.INFORMATIMAGO.COMMON-LISP.CESARUM.STRING"
        "COM.INFORMATIMAGO.COMMON-LISP.CESARUM.SEQUENCE"
        "COM.INFORMATIMAGO.COMMON-LISP.CESARUM.UTILITY"
        "COM.INFORMATIMAGO.COMMON-LISP.PARSER.SCANNER"
        #|temporarily|# "COM.INFORMATIMAGO.COMMON-LISP.CESARUM.SIMPLE-TEST")
  (:shadow "IMPORT" "INCLUDE")
  (:shadowing-import-from "COM.INFORMATIMAGO.COMMON-LISP.CESARUM.STRING"
                          "STRING-DESIGNATOR")
  (:shadowing-import-from "COM.INFORMATIMAGO.COMMON-LISP.CESARUM.STREAM"
                          "COPY-STREAM")
  (:import-from "ALEXANDRIA" "PLIST-ALIST")
  (:export "PROCESS-TOPLEVEL-FILE"
           "CPP-TOKEN" "TOKEN-LINE" "TOKEN-COLUMN" "TOKEN-FILE"
           "TOKEN-TEXT" "IDENTIFIER-TOKEN" "NUMBER-TOKEN" "PUNCTUATION-TOKEN"
           "OTHER-TOKEN"
           "TOKEN-STRING" "TOKEN-SYMBOL" "TOKEN-VALUE"
           "*IDENTIFIER-PACKAGE*"
           "IDENTIFIER" "NUMBER" "STRING-LITERAL" "CHARACTER-LITERAL" "PUNCTUATION"
           "ENVIRONMENT-MACRO-DEFINITION"
           "ENVIRONMENT-MACRO-DEFINEDP"
           "ENVIRONMENT-MACRO-UNDEFINE"
           ;;;
           "READ-CPP-TOKENS"
           "CPP-E"
           "*WHITESPACES*" "WHITESPACEP"
           "STRING-VALUE" "CHARACTER-VALUE" "INTEGER-VALUE"))

;;;; THE END ;;;;

