;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -rnd_normal_small
;;    input_kind_2 = -rnd_normal_small
;;    input_kind_3 = +rnd_normal_small
;;    operation = fp.fma
;;    rounding_mode = RNA
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const input_1 Float128 (fp #b1 #b011001001100101 #b1001110011111010100011110110000000101100110100011110010010110111000100011010001011001111010010100010100011111001))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 Float128 (fp #b1 #b010100111011000 #b1000111110001111100111111000000101101011111001001111111100011101100111101111011101001101001001110111101001110111))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_3 Float128 (fp #b0 #b010100001000000 #b0010000001011011101111101100111010010100010101111011000100101110000110111110011001111110110011000000001101001011))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float128 (fp #b0 #b010100001000000 #b0010000001011011101111101100111010010100010101111011000100101110000110111110011001111110110011000000001101001011))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result Float128 (fp.fma RNA input_1 input_2 input_3))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
