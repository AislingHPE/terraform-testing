resource "time_sleep" "wait_5_seconds" {
    create_duration = "5s"
}


output "hello_world" {
    depends_on = [ time_sleep.wait_5_seconds ]

	value = "Hello, World!"
}