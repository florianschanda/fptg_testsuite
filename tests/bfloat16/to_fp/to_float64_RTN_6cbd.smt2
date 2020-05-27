;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = nextup(-1)
;;    operation = float_to_float
;;    precision_source = bfloat16
;;    precision_target = float64
;;    rounding_mode = RTN
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 8 8) (fp #b1 #b01111110 #b1111111))
;; should be -0.99609375
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float64 (fp #b1 #b01111111110 #b1111111000000000000000000000000000000000000000000000))
;; should be -0.99609375
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result Float64 ((_ to_fp 11 53) RTN potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
