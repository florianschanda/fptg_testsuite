;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind_1 = -rnd_normal_small
;;    operation = fp.isZero
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const input_1 (_ FloatingPoint 15 115) (fp #b1 #b001000110111011 #b100000111111100101000011001001000010111010011101110011011000101011110000001011111110000010001011100100001100000000))
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

(define-const computed_result Bool (fp.isZero input_1))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
