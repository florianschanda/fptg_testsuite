;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -rnd_normal_large
;;    input_kind_2 = -rnd_normal_large
;;    operation = fp.div
;;    rounding_mode = RTN
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

(define-const input_1 (_ FloatingPoint 15 64) (fp #b1 #b110000001111110 #b000100001011111101001000001011000100101110011101111010100001101))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const input_2 (_ FloatingPoint 15 64) (fp #b1 #b111101000011011 #b110001011011010010101100101111011100010001011100100011101010111))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result (_ FloatingPoint 15 64) (fp #b0 #b010011001100001 #b001100111100101010000001000000000110000100001000010110101101101))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 15 64) (fp.div RTN input_1 input_2))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
