;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -0
;;    input_kind_2 = -rnd_normal_small
;;    operation = smtlib.eq
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const input_1 Float128 (_ -zero 15 113))
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

(define-const input_2 Float128 (fp #b1 #b011000100100001 #b1111010001110001101000010110101001100001010101000000100010001100111001100110010111001111110110000101111111011111))
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

(define-const computed_result Bool (smtlib.eq input_1 input_2))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
