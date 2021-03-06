;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = +rnd_normal_large
;;    operation = float_to_float
;;    precision_source = float64
;;    precision_target = x87_extended
;;    rounding_mode = RTN
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const potato Float64 (fp #b0 #b10111001001 #b0011011110100100011111100101001100001100100100000001))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result (_ FloatingPoint 15 64) (fp #b0 #b100000111001001 #b001101111010010001111110010100110000110010010000000100000000000))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result (_ FloatingPoint 15 64) ((_ to_fp 15 64) RTN potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
