;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -rnd_subnormal
;;    input_kind_2 = -rnd_subnormal
;;    operation = fp.mul
;;    rounding_mode = RTP
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

(define-const input_1 Float128 (fp #b1 #b000000000000000 #b1011110001110001010011100011110101011010000011010100101000011111100111110001001000011101010011110011000000111110))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 Float128 (fp #b1 #b000000000000000 #b1001110001100111101100011011111101111000001001101011111001011101011100010010110100001001100010001101001000000001))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float128 (fp #b0 #b000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result Float128 (fp.mul RTP input_1 input_2))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
