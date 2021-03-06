;; Simply Scheme: Introducing Computer Science 2/e Copyright (C) 1999 MIT
;; Brian Harvey and Matthew Wright
;; Link to the text book : https://people.eecs.berkeley.edu/~bh/ss-toc2.html

;; Solutions By : Ameer Fazal
;; www.youtube.com/ameerfazal

#lang racket
(require (planet dyoo/simply-scheme:2:2))

;; 6.12

(define (plural? wd)
  (cond
    [(equal? (last wd) 'y)
     (cond
      [(vowel? (last (bl wd))) (word wd 's)]
      [else
       (word (bl wd) 'ies)])]
    [(equal? (last wd) 'x)
     (word wd 'es)]
    [else
     (word wd 's)]))

(define (vowel? l)
  (member? l 'aeiou))

(plural? 'box)
(plural? 'boy)
(plural? 'fly)
(plural? 'coin)