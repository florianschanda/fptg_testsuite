;; Random floating-point test generated by fp_test_generator
;;
;; Seed information:
;;    input_kind = +rnd_normal_large
;;    operation = float_to_float
;;    precision_source = float128
;;    precision_target = random_ordered
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

(define-const potato (_ FloatingPoint 15 115) (fp #b0 #b101000000000001 #b100001011111010000010011001100111101001101111000001111001100101100000111011011100011110100100010100111010110100111))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const expected_result (_ FloatingPoint 7 12) (fp #b0 #b1111110 #b11111111111))
;;   isZero      : False
;;   isSubnormal : False
;;   isNormal    : True
;;   isInfinite  : False
;;   isNan       : False
;;   isNegative  : False
;;   isPositive  : True
;;   isFinite    : True
;;   isIntegral  : True

(define-const computed_result (_ FloatingPoint 7 12) ((_ to_fp 7 12) RTZ potato))

;; goal
(assert (= expected_result computed_result))

(check-sat)
(exit)
