;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname boxify-image) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Image -> Image
;; given an image, create a box/rectangle that envelopes it

(require 2htdp/image)

;(ellipse 50 50 "solid" "blue")

(define (boxify img)
  (if (> (image-height img)(image-width img))
      (overlay img (square (image-height img) "solid" "red"))
      (overlay img (square (image-width img) "solid" "red")))
  )

(boxify (ellipse 50 50 "solid" "blue"))

(boxify (ellipse 60 50 "solid" "blue"))

(boxify (ellipse 50 60 "solid" "blue"))