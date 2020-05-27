;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -0
;;    operation = fp.isInfinite
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const input_1 Float32 (_ -zero 8 24))
;; should be -0
;;   isZero      : True
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result Bool false)

(define-const computed_result Bool (fp.isInfinite input_1))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
