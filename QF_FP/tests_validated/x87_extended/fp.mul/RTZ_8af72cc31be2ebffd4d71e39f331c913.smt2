;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +rnd_subnormal
;;    input_kind_2 = +rnd_normal_large
;;    operation = fp.mul
;;    rounding_mode = RTZ
;;
;; Test oracle(s) for this test:
;;    * Host (Intel(R) Core(TM) i7-5600U CPU @ 2.60GHz)
;;    * MPFR 4.0.2 (via gmpy2 2.0.8)
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const input_1 (_ FloatingPoint 15 64) (fp #b0 #b000000000000000 #b101100100011111111010011110100011101111100110011110110101000000))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 (_ FloatingPoint 15 64) (fp #b0 #b101100100111001 #b011001010011101101001001110110011000010111011010101111010000000))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result (_ FloatingPoint 15 64) (fp #b0 #b001100100111010 #b111100010111100010010101000010100100110010101101001110100110011))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 15 64) (fp.mul RTZ input_1 input_2))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
