;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +rnd_normal_small
;;    input_kind_2 = -max_subnormal
;;    input_kind_3 = +rnd_normal_small
;;    operation = fp.fma
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

(define-const input_1 (_ FloatingPoint 15 64) (fp #b0 #b010100101101000 #b011100000011110010011011010011000010001010111000001111000011101))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 (_ FloatingPoint 15 64) (fp #b1 #b000000000000000 #b111111111111111111111111111111111111111111111111111111111111111))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_3 (_ FloatingPoint 15 64) (fp #b0 #b011110111101000 #b001111001111100101101111101111001000001111001101100011111000111))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 15 64) (fp #b0 #b011110111101000 #b001111001111100101101111101111001000001111001101100011111000110))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 15 64) (fp.fma RTZ input_1 input_2 input_3))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
