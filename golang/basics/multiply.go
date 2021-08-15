package main
import (
	"fmt"
)

func multiply(a float32, b float32) float32 {
	return a * b
}

func main() {
	fmt.Println(multiply(7.4, 5.9))
}