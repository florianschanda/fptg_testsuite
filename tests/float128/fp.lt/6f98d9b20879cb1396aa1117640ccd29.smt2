;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -inf
;;    input_kind_2 = -rnd_normal_small
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

(define-const input_1 (_ FloatingPoint 15 115) (_ -oo 15 115))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : True
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const input_2 (_ FloatingPoint 15 115) (fp #b1 #b011011011000000 #b101001111110111101001011000110000010110000111001010110110011101001111101100101011110110010001111100110100001100011))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result Bool true)

(define-const computed_result Bool (fp.lt input_1 input_2))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
