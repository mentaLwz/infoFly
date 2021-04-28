package main

import (
	"fmt"
	tb "gopkg.in/tucnak/telebot.v2"
	"log"
	"time"
)

func main() {
	b, err := tb.NewBot(tb.Settings{
		Token:  "1765035653:AAEoLnmL_-5jYNANaOoH7XLaEg5tMYilGLE",
		Poller: &tb.LongPoller{Timeout: 10 * time.Second},
	})

	if err != nil {
		log.Fatal(err)
		return
	}
	fmt.Println("Start")
	b.Handle("/hello", func(m *tb.Message) {
		b.Send(m.Sender, "Hello World!")
	})
	b.Start()
}
