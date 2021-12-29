package main

import (
	"fmt"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

const (
	PORT int = 50000
	OIDC_AUTH_URL string = "localhost:50001/auth"
)

// XXX: ユーザーが連携を認めるものとして処理
func confirmConnect() bool {
	return true
}

func login(c echo.Context) error {
	// TODO:

	return nil
}

func main() {
	// Echo instance
	e := echo.New()

	// Middleware
	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	// Routes
	e.POST("/login", login)

	// Start server
	e.Logger.Fatal(e.Start(fmt.Sprintf(":%d", PORT)))
}
