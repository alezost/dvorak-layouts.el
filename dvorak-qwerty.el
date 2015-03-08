;;; dvorak-qwerty.el --- QWERTY input method for the dvorak system layout

;; Copyright © 2013-2014 Alex Kost

;; Author: Alex Kost <alezost@gmail.com>
;; Created: 19 Jul 2013
;; URL: https://github.com/alezost/dvorak-layouts.el
;; Keywords: input method

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This file provides an additional English QWERTY layout (input-method)
;; assuming that the current global layout (set in X or in terminal) is
;; "dvorak".

;; English QWERTY layout:
;;
;; `~ 1! 2" 3# 4; 5% 6: 7? 8* 9( 0) -_ =+
;;    Q  W  E  R  T  Y  U  I  O  P  [{ ]}
;;     A  S  D  F  G  H  J  K  L  ;: '"
;;      Z  X  C  V  B  N  M  ,< .> /?

;;; Code:

(require 'quail)

(defvar dvorak-qwerty-title "q"
  "The title of the `dvorak-qwerty' input method.
This title is displayed in the mode line when the input method is
enabled.")

;;;###autoload
(defun dvorak-qwerty ()
  "Set `dvorak-qwerty' input method."
  (interactive)
  (set-input-method "dvorak-qwerty"))

(quail-define-package
 "dvorak-qwerty" "English" dvorak-qwerty-title nil
 "Standard QWERTY keyboard layout assuming that your system
keyboard layout is dvorak."
 nil t t t t nil nil nil nil nil t)

(quail-define-rules
 ("`" ?`)
 ("1" ?1)
 ("2" ?2)
 ("3" ?3)
 ("4" ?4)
 ("5" ?5)
 ("6" ?6)
 ("7" ?7)
 ("8" ?8)
 ("9" ?9)
 ("0" ?0)
 ("[" ?-)
 ("]" ?=)

 ("~" ?~)
 ("!" ?!)
 ("@" ?@)
 ("#" ?#)
 ("$" ?$)
 ("%" ?%)
 ("^" ?^)
 ("&" ?&)
 ("*" ?*)
 ("(" ?\()
 (")" ?\))
 ("{" ?_)
 ("}" ?+)

 ("'" ?q)
 ("," ?w)
 ("." ?e)
 ("p" ?r)
 ("y" ?t)
 ("f" ?y)
 ("g" ?u)
 ("c" ?i)
 ("r" ?o)
 ("l" ?p)
 ("/" ?\[)
 ("=" ?\])
 ("\\" ?\\)
 ("a" ?a)
 ("o" ?s)
 ("e" ?d)
 ("u" ?f)
 ("i" ?g)
 ("d" ?h)
 ("h" ?j)
 ("t" ?k)
 ("n" ?l)
 ("s" ?\;)
 ("-" ?')
 (";" ?z)
 ("q" ?x)
 ("j" ?c)
 ("k" ?v)
 ("x" ?b)
 ("b" ?n)
 ("m" ?m)
 ("w" ?,)
 ("v" ?.)
 ("z" ?/)

 ("\"" ?Q)
 ("<" ?W)
 (">" ?E)
 ("P" ?R)
 ("Y" ?T)
 ("F" ?Y)
 ("G" ?U)
 ("C" ?I)
 ("R" ?O)
 ("L" ?P)
 ("?" ?{)
 ("+" ?})
 ("|" ?|)
 ("A" ?A)
 ("O" ?S)
 ("E" ?D)
 ("U" ?F)
 ("I" ?G)
 ("D" ?H)
 ("H" ?J)
 ("T" ?K)
 ("N" ?L)
 ("S" ?:)
 ("_" ?\")
 (":" ?Z)
 ("Q" ?X)
 ("J" ?C)
 ("K" ?V)
 ("X" ?B)
 ("B" ?N)
 ("M" ?M)
 ("W" ?<)
 ("V" ?>)
 ("Z" ??))

(provide 'dvorak-qwerty)

;;; dvorak-qwerty.el ends here
