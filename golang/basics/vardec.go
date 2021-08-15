package main
import (
	"fmt"
)

var place, city string = "Hyde Park", "London" // Outside of a function every statement begins with a keyword like "var" so cannot use short hand

func main() {
	location := "Speaker's Area" // Short hand variable declaration, can't do this outside of a function
	fmt.Println(location, place, city)
}