;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -rnd_normal_small
;;    operation = float_to_float
;;    precision_source = float128
;;    precision_target = bfloat16
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

(define-const potato (_ FloatingPoint 15 115) (fp #b1 #b011101000000100 #b010010111111000011110110000000011110100101010101001010000000111110001001010100010100101000000101000111001011100101))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 8 8) (_ -zero 8 8))
;; should be -0
;;   isZero      : True
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result (_ FloatingPoint 8 8) ((_ to_fp 8 8) RTZ potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
