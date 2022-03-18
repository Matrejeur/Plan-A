package main

import (
	"encoding/json"
	"fmt"
	"log"
	"net/http"
	"os"
	"time"
)

func pingHandler(w http.ResponseWriter, r *http.Request) {
    if r.URL.Path != "/" {
        http.Error(w, "404 not found.", http.StatusNotFound)
        return
    }

    if r.Method != "GET" {
        http.Error(w, "Method is not supported.", http.StatusNotFound)
        return
    }

	resp := struct{
		Timestamp time.Time `json:"timestamp"`
		Hostname string `json:"hostname"`
		Engine string `json:"engine"`
		VisitorIp string `json:"visitor ip"`
	}{
		Timestamp: time.Now(),
		Hostname: hostname(),
		Engine: "v1.0.0",
		VisitorIp: r.RemoteAddr,
	}

	w.Header().Set("Content-Type", "application/json")  
    json.NewEncoder(w).Encode(resp) 
}

func hostname() string 
	name, err := os.Hostname()
	if err != nil {
		panic(err)
	}
	return name
}

func main() {
    http.HandleFunc("/", pingHandler) // Update this line of code


    fmt.Printf("Starting server at port 8080\n")
    if err := http.ListenAndServe(":8010", nil); err != nil {
        log.Fatal(err)
    }
}
