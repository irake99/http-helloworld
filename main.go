package main

import (
	"fmt"
	"log"
	"net/http"
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World!")
}

func main() {
	listening := ":80"
	http.HandleFunc("/", helloHandler)
	log.Printf("Listening on %s...", listening)
	log.Fatal(http.ListenAndServe(listening, nil))
}
