;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = -rnd_normal_large
;;    operation = float_to_float
;;    precision_source = x87_extended
;;    precision_target = random_symmetrical
;;    rounding_mode = RTZ
;;
;; Test oracle(s) for this test:
;;    * PyMPF

(set-info :smt-lib-version 2.6)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :source |https://github.com/florianschanda/fp_test_generator|)
(set-info :status sat)
(set-logic QF_FP)

(define-const potato (_ FloatingPoint 15 64) (fp #b1 #b101111001000110 #b110110010001101101110011011100101011110100111101111100110101000))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result (_ FloatingPoint 5 5) (fp #b1 #b11110 #b1111))
;; should be -63488.0
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : True
;;   isPositive  : False
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result (_ FloatingPoint 5 5) ((_ to_fp 5 5) RTZ potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
