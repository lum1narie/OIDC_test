package main

import (
	"fmt"
	"sandbox/oidctest/oidcsrv/handler"

	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

const (
	PORT int = 50001
)

func main() {
	// Echo instance
	e := echo.New()

	// Middleware
	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	// Routes
	e.POST("/auth", handler.Auth)
	e.POST("/token", handler.Token)

	// Start server
	e.Logger.Fatal(e.Start(fmt.Sprintf(":%d", PORT)))
}
