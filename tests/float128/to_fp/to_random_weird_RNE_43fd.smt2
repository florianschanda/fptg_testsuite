;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -rnd_subnormal
;;    operation = float_to_float
;;    precision_source = float128
;;    precision_target = random_weird
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

(define-const potato (_ FloatingPoint 15 115) (fp #b1 #b000000000000000 #b010000001010000011101001111101011011000111101111111111001000010010101111000100010111001110111010001000011111101101))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 5 3) (_ -zero 5 3))
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

(define-const computed_result (_ FloatingPoint 5 3) ((_ to_fp 5 3) RNE potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
