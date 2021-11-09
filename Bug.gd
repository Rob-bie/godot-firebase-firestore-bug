extends Node2D

onready var timer = $Timer

const TEST_COLLECTION = "test"

func _ready():
	Firebase.Auth.connect("signup_succeeded", self, "_on_signup_succeeded")
	Firebase.Auth.login_anonymous()

func _on_signup_succeeded(auth):
	print(auth)
	timer.start()

func _on_timeout():
	var query = FirestoreQuery.new()
		
	query.from(TEST_COLLECTION)

	var task = Firebase.Firestore.query(query)
	task.connect("result_query", self, "_on_fetch_success")

func _on_fetch_success(result):
	print(result)
