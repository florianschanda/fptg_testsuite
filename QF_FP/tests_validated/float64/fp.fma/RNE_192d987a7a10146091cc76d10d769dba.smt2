;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +rnd_normal_small
;;    input_kind_2 = -rnd_normal_large
;;    input_kind_3 = -rnd_normal_small
;;    operation = fp.fma
;;    rounding_mode = RNE
;;
;; Test oracle(s) for this test:
;;    * Host (Intel(R) Core(TM) i7-7820HQ CPU @ 2.90GHz)
;;    * MPFR 4.0.1 (via gmpy2 2.0.8)
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const input_1 Float64 (fp #b0 #b00010010001 #b1001010001000110001011101100010110001000001111101101))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 Float64 (fp #b1 #b11011001011 #b1010010011101101000010001011101001001111111011011111))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const input_3 Float64 (fp #b1 #b00001100010 #b1011100111001110101000110101010010100101000100010110))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float64 (fp #b1 #b01101011110 #b0100110001011100101110111011111011100101100010011110))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result Float64 (fp.fma RNE input_1 input_2 input_3))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
