;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +rnd_normal_small
;;    input_kind_2 = NaN
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
(set-info :status unsat)
(set-logic QF_FP)

(define-const input_1 (_ FloatingPoint 15 115) (fp #b0 #b010010010101001 #b110111000110100100000001111101011100000011111000000111101001101100011000001010101011000000110000101110100101000000))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 (_ FloatingPoint 15 115) (_ NaN 15 115))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : True
;;   isNegative  : False
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const input_3 (_ FloatingPoint 15 115) (fp #b1 #b000000000000000 #b111010010110100111010101011110111101101110100111001111100001000010000010010000000000000101010110110000100110100011))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 15 115) (_ NaN 15 115))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : True
;;   isNegative  : False
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 15 115) (fp.fma RNA input_1 input_2 input_3))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
