;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = nextdown(-1)
;;    input_kind_2 = -rnd_normal_small
;;    operation = fp.eq
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const input_1 Float64 (fp #b1 #b01111111111 #b0000000000000000000000000000000000000000000000000001))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const input_2 Float64 (fp #b1 #b00001100101 #b0000110110011000110110111101101101111111101010011000))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Bool false)

(define-const computed_result Bool (fp.eq input_1 input_2))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
