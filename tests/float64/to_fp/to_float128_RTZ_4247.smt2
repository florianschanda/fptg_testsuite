;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -rnd_subnormal
;;    operation = float_to_float
;;    precision_source = float64
;;    precision_target = float128
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

(define-const potato Float64 (fp #b1 #b00000000000 #b1001101000100100111101111000100000010101101000001010))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 15 115) (fp #b1 #b011110000000000 #b001101000100100111101111000100000010101101000001010000000000000000000000000000000000000000000000000000000000000000))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 15 115) ((_ to_fp 15 115) RTZ potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
