;;; dvorak-russian-computer.el --- ЙЦУКЕН input method for the dvorak system layout

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

;; This file provides an additional Russian ЙЦУКЕН layout (input-method)
;; assuming that the current global layout (set in X or in terminal) is
;; "dvorak".  I.e., "dvorak-russian-computer" input method has the same
;; meaning for the global "dvorak" layout as "russian-computer" for
;; "qwerty".

;; Russian ЙЦУКЕН layout:
;;
;; Ё 1! 2" 3№ 4; 5% 6: 7? 8* 9( 0) -_ =+
;;    Й  Ц  У  К  Е  Н  Г  Ш  Щ  З  Х  Ъ
;;     Ф  Ы  В  А  П  Р  О  Л  Д  Ж  Э
;;      Я  Ч  С  М  И  Т  Ь  Б  Ю  .,

;;; Code:

(require 'quail)

(defvar dvorak-russian-computer-title "й"
  "The title of the `dvorak-russian-computer' input method.
This title is displayed in the mode line when the input method is
enabled.")

;;;###autoload
(defun dvorak-russian-computer ()
  "Set `dvorak-russian-computer' input method."
  (interactive)
  (set-input-method "dvorak-russian-computer"))

(quail-define-package
 "dvorak-russian-computer" "Russian" dvorak-russian-computer-title nil
 "ЙЦУКЕН keyboard layout widely used in Russia (ISO 8859-5 encoding)
assuming that your system keyboard layout is dvorak."
 nil t t t t nil nil nil nil nil t)

(quail-define-rules
 ("`" ?ё)
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

 ("~" ?Ё)
 ("!" ?!)
 ("@" ?\")
 ("#" ?№)
 ("$" ?\;)
 ("%" ?%)
 ("^" ?:)
 ("&" ??)
 ("*" ?*)
 ("(" ?\()
 (")" ?\))
 ("{" ?_)
 ("}" ?+)

 ("'" ?й)
 ("," ?ц)
 ("." ?у)
 ("p" ?к)
 ("y" ?е)
 ("f" ?н)
 ("g" ?г)
 ("c" ?ш)
 ("r" ?щ)
 ("l" ?з)
 ("/" ?х)
 ("=" ?ъ)
 ("a" ?ф)
 ("o" ?ы)
 ("e" ?в)
 ("u" ?а)
 ("i" ?п)
 ("d" ?р)
 ("h" ?о)
 ("t" ?л)
 ("n" ?д)
 ("s" ?ж)
 ("-" ?э)
 ("\\" ?\\)
 (";" ?я)
 ("q" ?ч)
 ("j" ?с)
 ("k" ?м)
 ("x" ?и)
 ("b" ?т)
 ("m" ?ь)
 ("w" ?б)
 ("v" ?ю)
 ("z" ?.)

 ("\"" ?Й)
 ("<" ?Ц)
 (">" ?У)
 ("P" ?К)
 ("Y" ?Е)
 ("F" ?Н)
 ("G" ?Г)
 ("C" ?Ш)
 ("R" ?Щ)
 ("L" ?З)
 ("?" ?Х)
 ("+" ?Ъ)
 ("A" ?Ф)
 ("O" ?Ы)
 ("E" ?В)
 ("U" ?А)
 ("I" ?П)
 ("D" ?Р)
 ("H" ?О)
 ("T" ?Л)
 ("N" ?Д)
 ("S" ?Ж)
 ("_" ?Э)
 ("|" ?/)
 (":" ?Я)
 ("Q" ?Ч)
 ("J" ?С)
 ("K" ?М)
 ("X" ?И)
 ("B" ?Т)
 ("M" ?Ь)
 ("W" ?Б)
 ("V" ?Ю)
 ("Z" ?,))

(provide 'dvorak-russian-computer)

;;; dvorak-russian-computer.el ends here
