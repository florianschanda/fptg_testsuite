;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -rnd_subnormal
;;    input_kind_2 = -rnd_normal_small
;;    input_kind_3 = NaN
;;    operation = fp.fma
;;    rounding_mode = RNE
;;
;; Test oracle(s) for this test:
;;    * MPFR 4.0.1 (via gmpy2 2.0.8)
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const input_1 (_ FloatingPoint 15 115) (fp #b1 #b000000000000000 #b101011100001001100111001001001101101011101011001110000110111111010001101011011100100011010111001001110110101100011))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 (_ FloatingPoint 15 115) (fp #b1 #b001110110001011 #b001111000101001010001110100111000011110111101000001001001000100111010100101111010001011101001010010110011000001101))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_3 (_ FloatingPoint 15 115) (_ NaN 15 115))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : True
;;   isNegative  : False
;;   isPositive  : False
;;   isFinite    : False
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

(define-const computed_result (_ FloatingPoint 15 115) (fp.fma RNE input_1 input_2 input_3))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
