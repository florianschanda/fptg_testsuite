;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = +rnd_normal_large
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
(set-info :status unsat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 15 115) (fp #b0 #b111001010001000 #b010111000111011001000001100010101001010001110001000110010010000000000111000011001110101011111100100011001110101111))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result (_ FloatingPoint 8 8) (fp #b0 #b11111110 #b1111111))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result (_ FloatingPoint 8 8) ((_ to_fp 8 8) RTZ potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
