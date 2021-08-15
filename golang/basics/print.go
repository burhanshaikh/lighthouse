package main

import (
	"fmt"
	"math/rand"
	"time"
)
func Seed() {
	rand.Seed(time.Now().UnixNano())
}

func main() {
	Seed()
	fmt.Println("Hello",rand.Intn(100))
}