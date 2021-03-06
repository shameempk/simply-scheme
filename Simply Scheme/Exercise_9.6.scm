;; Simply Scheme: Introducing Computer Science 2/e Copyright (C) 1999 MIT
;; Brian Harvey and Matthew Wright
;; Link to the text book : https://people.eecs.berkeley.edu/~bh/ss-toc2.html

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal

#lang racket
(require (planet dyoo/simply-scheme:2:2))

;; 9.6

(define (sentence-version fn)
  (lambda (sent)
    (every fn sent)))

((sentence-version first) '(if i fell))

((sentence-version sqr) '(8 2 4 6))