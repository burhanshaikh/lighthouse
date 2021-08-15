package main
import (
	"fmt"
)
func swap(word1 string, word2 string) (string, string) {
	
	return word2, word1
} 

func main() {
	a, b := swap("Los", "Angeles")
	fmt.Println(a,b)
}