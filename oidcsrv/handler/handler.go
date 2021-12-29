package handler

import (
	"context"
	"net/http"

	"github.com/caos/oidc/pkg/oidc"
	"github.com/labstack/echo/v4"
)

type (
	AuthCode struct {
		code       string
		Iat        Time
		Expiration Time
	}
)

const (
	ISSUER   string = "http://localhost:50001/"
	USER     string = "user"
	PASSWORD string = "password"
)

var (
	AuthCodes = []Authcode{}
)

// XXX: ユーザーが認証を認めるものとして処理
func confirmAuth() bool {
	return true
}

func verifyRequest(req oidc.AuthRequest) bool {
	// TODO:
	true
}

func authRequestFromForm(c echo.Context) oidc.AuthRequest {
	// XXX: 本来はフォームから取ってくる
	return oidc.AuthRequest{}
}

func Auth(c echo.Context) error {
	var req oidc.AuthRequest = authRequestFromForm(c)
	if verifyRequest(req) == false {
		// TODO: 駄目だった場合の仕様も確かあったはず
		return echo.NewHTTPError(http.StatusInternalServerError, "User not found")
	}

	if confirmAuth() == false {
		// TODO: 駄目だった場合の仕様も確かあったはず
		return echo.NewHTTPError(http.StatusInternalServerError, "User not found")
	}

	// TODO:
	return nil
}

func Token(c echo.Context) error {
	// TODO:
	return nil
}
