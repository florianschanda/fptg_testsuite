;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +inf
;;    input_kind_2 = +inf
;;    operation = fp.add
;;    rounding_mode = RNA
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const input_1 (_ FloatingPoint 3 5) (_ +oo 3 5))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : True
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : False
;;   isIntegral  : False

(define-const input_2 (_ FloatingPoint 3 5) (_ +oo 3 5))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : True
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : False
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 3 5) (_ +oo 3 5))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : True
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : False
;;   isIntegral  : False

(define-const computed_result (_ FloatingPoint 3 5) (fp.add RNA input_1 input_2))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
