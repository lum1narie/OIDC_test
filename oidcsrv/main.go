package main

import (
	"fmt"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

const (
	PORT int = 50001
	USER string = "user"
	PASSWORD string = "password"
)

func authUser(c echo.Context) error {

}

func auth(c echo.Context) error {
	// TODO:
	return nil
}

func token(c echo.Context) error {
	
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
	e.POST("/token", token)

	// Start server
	e.Logger.Fatal(e.Start(fmt.Sprintf(":%d", PORT)))
}
