;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = +rnd_subnormal
;;    operation = float_to_float
;;    precision_source = random_weird
;;    precision_target = random_symmetrical
;;    rounding_mode = RNE
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 5 4) (fp #b0 #b00000 #b100))
;; should be 0.000030517578125
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 5 5) (fp #b0 #b00000 #b1000))
;; should be 0.000030517578125
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 5 5) ((_ to_fp 5 5) RNE potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
