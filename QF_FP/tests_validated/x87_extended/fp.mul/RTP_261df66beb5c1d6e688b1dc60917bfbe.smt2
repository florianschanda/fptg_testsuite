;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -rnd_normal_large
;;    input_kind_2 = +rnd_normal_small
;;    operation = fp.mul
;;    rounding_mode = RTP
;;
;; Test oracle(s) for this test:
;;    * Host (Intel(R) Core(TM) i7-5600U CPU @ 2.60GHz)
;;    * MPFR 4.0.2 (via gmpy2 2.0.8)
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const input_1 (_ FloatingPoint 15 64) (fp #b1 #b110000111011001 #b001101101111001110000101101010010010100000101000111111101010100))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const input_2 (_ FloatingPoint 15 64) (fp #b0 #b001111010010111 #b011101010001101010001101010101010001001011001001001101111101110))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 15 64) (fp #b1 #b100000001110001 #b110001010011000100010010001001101000000011111100111000111111000))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result (_ FloatingPoint 15 64) (fp.mul RTP input_1 input_2))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
