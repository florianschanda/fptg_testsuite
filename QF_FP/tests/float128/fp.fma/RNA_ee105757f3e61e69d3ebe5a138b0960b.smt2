;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +rnd_normal_small
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
(set-info :status unsat)
(set-logic QF_FP)

(define-const input_1 Float128 (fp #b0 #b011000000110011 #b0011101001001111011110000000000001100101011101001011011001001010100001111100110110001011110101000100000011110001))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 Float128 (fp #b1 #b000000111101011 #b0100010111101011101011111001110001010010111010110101011110100101111000111101111011101000011001000000111100101001))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_3 Float128 (fp #b0 #b001011011110100 #b0000011010000011110100011011000111000001001000011101101001111011011100001000111001101000100110101111110100000101))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float128 (fp #b0 #b001011011110100 #b0000011010000011110100011011000111000001001000011101101001111011011100001000111001101000100110101111110100000101))
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
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
