;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = +inf
;;    input_kind_2 = +rnd_subnormal
;;    operation = fp.geq
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const input_1 Float16 (_ +oo 5 11))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : True
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : False
;;   isIntegral  : False

(define-const input_2 Float16 (fp #b0 #b00000 #b1001100010))
;;   isZero      : False
;;   isSubnormal : True
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Bool true)

(define-const computed_result Bool (fp.geq input_1 input_2))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
