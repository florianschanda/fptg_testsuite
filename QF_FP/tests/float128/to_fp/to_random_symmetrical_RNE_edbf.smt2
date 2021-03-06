;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = +rnd_normal_small
;;    operation = float_to_float
;;    precision_source = float128
;;    precision_target = random_symmetrical
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

(define-const potato Float128 (fp #b0 #b011110101001000 #b1000011110011101001010111100010001110011100111010010001011001010001110000110000110001101100011010000111110101011))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : False

(define-const expected_result (_ FloatingPoint 5 5) (_ +zero 5 5))
;; should be 0.0
;;   isZero      : True
;;   isSubnormal : False
;;   isNormal    : False
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result (_ FloatingPoint 5 5) ((_ to_fp 5 5) RNE potato))

;; goal
(assert (not (= expected_result computed_result)))

(check-sat)
(exit)
