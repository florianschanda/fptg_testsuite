;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +rnd_normal_small
;;    input_kind_2 = +rnd_normal_small
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

(define-const input_1 Float64 (fp #b0 #b00100101001 #b1000111010011000001010111110000101101111101110111010))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 Float64 (fp #b0 #b01110010010 #b1011111100001101011110110100011010111001101101010110))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_3 Float64 (fp #b1 #b00100010101 #b1111111001110011111011111110010010111100000001110101))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float64 (fp #b1 #b00100010101 #b1111111001110011111011111110010010111100000001110101))
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
