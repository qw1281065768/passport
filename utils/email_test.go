package utils

import (
	"fmt"
	"github.com/thanhpk/randstr"
	"testing"
)

func TestSendEmail(t *testing.T) {
	code := randstr.String(20)

	verification_code := Encode(code)
	fmt.Println(verification_code)
}
