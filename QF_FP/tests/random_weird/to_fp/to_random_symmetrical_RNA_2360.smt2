;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = +1
;;    operation = float_to_float
;;    precision_source = random_weird
;;    precision_target = random_symmetrical
;;    rounding_mode = RNA
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 7 4) (fp #b0 #b0111111 #b000))
;; should be 1.0
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result (_ FloatingPoint 5 5) (fp #b0 #b01111 #b0000))
;; should be 1.0
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result (_ FloatingPoint 5 5) ((_ to_fp 5 5) RNA potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
