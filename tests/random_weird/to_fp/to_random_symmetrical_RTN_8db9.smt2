;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -inf
;;    operation = float_to_float
;;    precision_source = random_weird
;;    precision_target = random_symmetrical
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

(define-const potato (_ FloatingPoint 5 4) (_ -oo 5 4))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : True
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 5 5) (_ -oo 5 5))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : True
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 5 5) ((_ to_fp 5 5) RTN potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
