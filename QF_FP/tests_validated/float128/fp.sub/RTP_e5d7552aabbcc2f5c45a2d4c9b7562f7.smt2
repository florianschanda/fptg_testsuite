;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -rnd_normal_small
;;    input_kind_2 = +rnd_subnormal
;;    operation = fp.sub
;;    rounding_mode = RTP
;;
;; Test oracle(s) for this test:
;;    * MPFR 4.0.1 (via gmpy2 2.0.8)
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const input_1 Float128 (fp #b1 #b000111111101010 #b0000111111100000001001011101011111100111111101111000111000111111100100010101100011100001010010100011111101000011))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 Float128 (fp #b0 #b000000000000000 #b0111000011010000000101111100100010101010011010001010111010001000101100000000000011100011111110000011110010000000))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float128 (fp #b1 #b000111111101010 #b0000111111100000001001011101011111100111111101111000111000111111100100010101100011100001010010100011111101000011))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result Float128 (fp.sub RTP input_1 input_2))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
