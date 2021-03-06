;; prog-js.el --- Enhance Programming Javascript
;;
;; Copyright (C) 2012-2014 Huang Bin
;;
;; Author: Huang Bin <huangbin88@foxmail.com>
;; Version: 1.0.0

;;; Commentary:

;; This file is not part of GNU Emacs.

;;; Code:

(require 'prelude-programming)

(prelude-require-packages '(js2-mode tern))

(require 'js2-mode)

(custom-set-variables
 '(js2-mode-show-parse-errors nil)
 '(js2-mode-show-strict-warnings nil))

(defun hbin-js-mode-init ()
  (modify-syntax-entry ?- "w"))

(add-hook 'js-mode-hook  'hbin-js-mode-init)
(add-hook 'js2-mode-hook 'hbin-js-mode-init)

(provide 'prog-js)
;;; prog-js.el ends here
