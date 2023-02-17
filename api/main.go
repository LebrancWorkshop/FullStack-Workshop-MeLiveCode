package main

import (
	"net/http"
	"log"
	"database/sql"
	_ "github.com/go-sql-driver/mysql"
	"github.com/gin-gonic/gin"
	"github.com/gin-contrib/cors"
)

type Student struct {
	ID string `json:"id"`
	FirstName string `json:"first_name"`
	LastName string `json:"last_name"`
}

type Attraction struct {
	ID int `db:"id" json:"id"`
	Name string `db:"name" json:"name"`
	Detail string `db:"detail" json:"detail"`
	CoverImage string `db:"coverimage" json:"coverimage"`
}

var students = []Student{
	{ID: "1", FirstName: "Nagi", LastName: "Azaimi"},
	{ID: "2", FirstName: "Jane", LastName:  "Imposter"},
	{ID: "3", FirstName: "Drake", LastName: "Lunawarm"}, 
}

var db *sql.DB;

func main() {
	// Database Setup. 
	var err error;
	db, err = sql.Open("mysql", "root:P@ssw0rd@tcp(0.0.0.0:3306)/mee_workshop");
	if err != nil {
		panic(err);
	}

	// Start API. 
	router := gin.Default();
	router.Use(cors.Default());
	router.GET("/v1/attractions", getAttractions);
	router.Run(":8019");
}

func getAttractions(c *gin.Context) {
	var (
		id int
		name string
		detail string
		coverimage string
	)
	var attractions []Attraction;
	rows, err := db.Query("SELECT id, name, detail, coverimage FROM attractions");
	if err != nil {
		log.Fatal(err);
	}
	defer rows.Close();
	for rows.Next() {
		var attraction Attraction;
		err := rows.Scan(&attraction.ID, &attraction.Name, &attraction.Detail, &attraction.CoverImage);
		if err != nil {
			log.Fatal(err); 
		}
		log.Println(id, name, detail, coverimage);
		attractions = append(attractions, attraction);
	}
	err = rows.Err();
	if err != nil {
		log.Fatal(err);
	}

	c.IndentedJSON(http.StatusOK, attractions); 
}