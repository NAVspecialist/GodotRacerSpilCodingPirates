extends Node2D

# Lave en baggrund til vore spil
# Lave den første bane
# Sætte pynt på banen
# Have en racerbil
# Den skal kunne køre :)
# Timer der tæller omgangstiden
# HUD - Head Up Display som viser antal omgange/tid
# Nogle forhindringer på banen
# Nogle andre biler


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var omgangstid = 0 #Denne omgangstid
var omgang = 0 # hvilken omgang er det
var omgang1 = 0 # tiden for omgang1
var omgang2 = 0 # tiden for omgang2
var omgang3 = 0 # og tiden for omgang3 
var erspilletstartet = false # er spillet mon startet

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func startpasseret():
	if erspilletstartet == true:
		omgang += 1	
		omgangstid = 0
	
	if erspilletstartet == false:
		erspilletstartet = true
		omgang = 1
		omgangstid = 0




# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	omgangstid += delta
	$HUD/Omgang1.text = 'Omgang 1: ' + str(omgangstid).pad_zeros(3).left(7)
	$HUD/Omgang2.text = 'Omgang 2: ' + str(omgangstid).pad_zeros(3).left(7)
	$HUD/Omgang3.text = 'Omgang 3: ' + str(omgangstid).pad_zeros(3).left(7)
