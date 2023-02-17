package main

import (
	"net/http"
	"github.com/gin-gonic/gin"
)

type Student struct {
	ID string `json:"id"`
	FirstName string `json:"first_name"`
	LastName string `json:"last_name"`
}

var students = []Student{
	{ID: "1", FirstName: "Nagi", LastName: "Azaimi"},
	{ID: "2", FirstName: "Jane", LastName: "Imposter"},
	{ID: "3", FirstName: "Drake", LastName: "Lunawarm"}, 
}

func main() {
	router := gin.Default();
	router.GET("/", func(c *gin.Context) {
		c.IndentedJSON(http.StatusOK, students);
	})
	router.Run(":8019");
}