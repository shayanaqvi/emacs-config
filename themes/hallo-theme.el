(require 'autothemer)

(autothemer-deftheme
 hallo "A custom theme"
 ((((class color) (min-colors #xFFFFFF)))

  ;; Define the colour palette
  (c-black        "black")
  (c-white        "white")
  (c-grey         "#737373")
  (c-blue         "#1E90FF")
  (c-red          "red")
  (c-green        "green")
  (c-yellow       "yellow")
  (c-magenta      "magenta")
  (c-cyan         "cyan")
  )

 ;; Customize faces
 ((default                      (:foreground c-white :background c-black))
  (cursor                       (:background c-blue))
  (font-lock-keyword-face       (:foreground c-blue))
  ))

(provide-theme 'hallo)
