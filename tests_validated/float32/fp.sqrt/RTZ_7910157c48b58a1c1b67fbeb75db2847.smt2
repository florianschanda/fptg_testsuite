;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +rnd_subnormal
;;    operation = fp.sqrt
;;    rounding_mode = RTZ
;;
;; Test oracle(s) for this test:
;;    * Host (Intel(R) Core(TM) i7-7820HQ CPU @ 2.90GHz)
;;    * MPFR 4.0.1 (via gmpy2 2.0.8)
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const input_1 Float32 (fp #b0 #b00000000 #b01101001010001000111110))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Float32 (fp #b0 #b00111111 #b01001000010100011110001))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result Float32 (fp.sqrt RTZ input_1))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
