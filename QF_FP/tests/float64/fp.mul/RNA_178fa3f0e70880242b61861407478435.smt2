;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -rnd_normal_large
;;    input_kind_2 = -rnd_subnormal
;;    operation = fp.mul
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

(define-const input_1 Float64 (fp #b1 #b10100100001 #b1010100110001100111110001100111001001001111000010001))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const input_2 Float64 (fp #b1 #b00000000000 #b1001011000100100001001010001001011101110111111101111))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float64 (fp #b0 #b00100100010 #b1111001100101001010111100111100101101010111010001101))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result Float64 (fp.mul RNA input_1 input_2))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
