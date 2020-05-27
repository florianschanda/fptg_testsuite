;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -rnd_normal_large
;;    operation = float_to_float
;;    precision_source = float128
;;    precision_target = float32
;;    rounding_mode = RNE
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status unsat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 15 115) (fp #b1 #b111110100011101 #b010100011111101001010100001110100000000010100110111110110110100000001110100001001000000110111101100011010110010110))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result Float32 (_ -oo 8 24))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : True
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : False
;;   isIntegral  : False

(define-const computed_result Float32 ((_ to_fp 8 24) RNE potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
