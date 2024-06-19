extends Node

const DEFAULT_SERVER_IP = "127.0.0.1"
const PORT = 1234

func _ready():
	connect_to_server()

func connect_to_server(address = ""):
	var peer = ENetMultiplayerPeer.new()
	if address.is_empty():
		address = DEFAULT_SERVER_IP
	var error = peer.create_client(address, PORT)
	if error:
		return error
	multiplayer.multiplayer_peer = peer
	multiplayer.connected_to_server.connect(_on_player_connected)
	print("Connecting to server")

func _on_player_connected():
	print("Connected to server!")
