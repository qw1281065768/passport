package controllers

import (
	"fmt"
	"github.com/wpcodevo/golang-gorm-postgres/models"
	"testing"
)

func TestNewAuthController(t *testing.T) {
	newUser := models.User{
		Name:     "qw1234",
		Email:    "18758088704@163.com",
		Password: "$2a$10$/e8oikNVjNZhDiAQmz3ZZ.wzV9BeFyvc7um6Q8zUkqIHfPdMiSDMW",
	}

	//res := ac.DB.Find(&newUser)
	fmt.Println(newUser.VerificationCode)

}
