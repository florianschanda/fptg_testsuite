;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = NaN
;;    input_kind_2 = +rnd_normal_small
;;    operation = fp.lt
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const input_1 (_ FloatingPoint 15 64) (_ NaN 15 64))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : True
;;   isNegative  : False
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const input_2 (_ FloatingPoint 15 64) (fp #b0 #b011010110111111 #b101110010101000101101111001101010101111110110001111001001010011))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Bool false)

(define-const computed_result Bool (fp.lt input_1 input_2))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
