;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname shorter-than-5) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; String -> Boolean
;; if the input string's length is less than 5, return true

(check-expect (short_5 "hell") true)
(check-expect (short_5 "hello") false)
(check-expect (short_5 "helloworld") false)

;(define (short_5 str) true) ; Stub

(define (short_5 str)
  (< (string-length str) 5))