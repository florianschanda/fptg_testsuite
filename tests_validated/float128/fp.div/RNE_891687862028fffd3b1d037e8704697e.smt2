;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +rnd_normal_small
;;    input_kind_2 = -rnd_normal_small
;;    operation = fp.div
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

(define-const input_1 (_ FloatingPoint 15 115) (fp #b0 #b001010101001101 #b000110111101010000001100010010011001000110100000101010111101010110110101000111100101000011100110010011101000001101))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 (_ FloatingPoint 15 115) (fp #b1 #b010001101111001 #b101100010001000001000010100100001010110101000100111010000110101111010101100110000111100010000100011101001001111001))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 15 115) (fp #b1 #b011000111010010 #b010011111001000000100001010010110011110011000011100000111101101101001110000111000101000101101101010101010010001101))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 15 115) (fp.div RNE input_1 input_2))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
