extends Node

var coin = 0

@onready var coins_collected_label: Label = $CoinsCollectedLabel
@onready var coins_picked: Label = %CoinsPicked

func add_point():
	coin += 1
	coins_picked.text = "Coins Picked: " + str(coin)
	coins_collected_label.text = "You collected \n" + str(coin) + "/25 coins."
