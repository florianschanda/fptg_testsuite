;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = +max_subnormal
;;    operation = float_to_float
;;    precision_source = bfloat16
;;    precision_target = random_ordered
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

(define-const potato (_ FloatingPoint 8 8) (fp #b0 #b00000000 #b1111111))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 10 16) (fp #b0 #b0110000000 #b111111000000000))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 10 16) ((_ to_fp 10 16) RTN potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
