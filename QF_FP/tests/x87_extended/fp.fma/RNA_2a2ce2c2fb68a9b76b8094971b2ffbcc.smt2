;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +rnd_normal_large
;;    input_kind_2 = -rnd_normal_small
;;    input_kind_3 = -rnd_subnormal
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

(define-const input_1 (_ FloatingPoint 15 64) (fp #b0 #b101000101010001 #b011010111110100101101011101111111011111001000000001000010111011))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const input_2 (_ FloatingPoint 15 64) (fp #b1 #b010110000011000 #b110001100111000000110101100011110100010100011101111010011111100))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_3 (_ FloatingPoint 15 64) (fp #b1 #b000000000000000 #b010011110011101100010010011101110111110001100000101111110010010))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 15 64) (fp #b1 #b011110101101011 #b010000101111111110111011101011000001011000011101101001001111110))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 15 64) (fp.fma RNA input_1 input_2 input_3))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
