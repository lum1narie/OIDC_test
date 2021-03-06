package main

import (
	"fmt"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

const (
	PORT int = 50001
)

func auth(c echo.Context) error {
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
	e.POST("/auth", auth)

	// Start server
	e.Logger.Fatal(e.Start(fmt.Sprintf(":%d", PORT)))
}
