;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -min_subnormal
;;    operation = float_to_float
;;    precision_source = random_weird
;;    precision_target = random_ordered
;;    rounding_mode = RTZ
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 6 5) (fp #b1 #b000000 #b0001))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 7 9) (fp #b1 #b0011101 #b00000000))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 7 9) ((_ to_fp 7 9) RTZ potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
