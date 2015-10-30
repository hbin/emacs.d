;; prog-js.el --- Enhance Programming Javascript
;;
;; Copyright (C) 2012-2014 Huang Bin
;;
;; Author: Huang Bin <huangbin88@foxmail.com>
;; Version: 1.0.0

;;; Commentary:

;; This file is not part of GNU Emacs.

;;; Code:

(prelude-require-packages '(js2-mode))

(defun hbin-js-mode-init ()
  "Modify the js syntax."

  ;; Words prefixed with $ are global variables,
  ;; prefixed with @ are instance variables.
  (modify-syntax-entry ?- "w"))

(add-hook 'js-mode-hook  'hbin-js-mode-init)
(add-hook 'js2-mode-hook 'hbin-js-mode-init)

(provide 'prog-js)
;;; prog-js.el ends here
