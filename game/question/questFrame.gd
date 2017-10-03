extends Panel

var soal_arr = [
	"[center]Menggunakan perlengkapan dengan lengkap dan benar akan mengurangi kemungkinan buruk yang akan terjadi.[/center]",
	"[center]Gunakan kaos saat berkendara agar lebih nyaman dan tidak panas.[/center]",
	"[center]Gunakan helm hanya saat dibutuhkan dan perjalanan jauh.[/center]",
	"[center]Selalu jaga kebersihan dan membawa sampah sampai menemukan tempat sampah terdekat.[/center]",
	"[center]Gunakan helm yang berlabelkan SNI[/center]",
	"[center]Jawab panggilan telefon saat berkendara[/center]",
	"[center]Menggunakan sepatu untuk mengurangi gesekan.[/center]",
	"[center]Gunakan zebra kross atau jembatan penyebrangan saat menyebrang.[/center]",
	"[center]Bawalah selalu SIM dan STNK saat berkendara. [/center]",
	"[center]Berkendaralah saat keadaan mabuk[/center]",
	"[center]Sarung tangan membuat tangan licin saat memegang gas[/center]",
	"[center]Gunakan fasilitas umum sebagaimana mestinya.[/center]",
	"[center]Berhenti sejenak dipinggir jalan jika ada keperluan yang sangat penting. [/center]",
	"[center]Gunakan jaket hanya saat dimalam hari.[/center]",
	"[center]Gunakan sandal saat berkendara agar kaki tidak panas[/center]"
	]
	
var jawaban_arr = ["YA","TIDAK","TIDAK","YA","YA","TIDAK","YA","YA","YA","TIDAK","TIDAK","YA","YA","TIDAK","TIDAK"]

var _player = null
var _spawner = null
var btn_true
var btn_false
var closer
var jawaban

func _ready():
	btn_true = get_node("TextureButton")
	btn_false = get_node("TextureButton1")
	
	closer = get_node("../close_form")
	
	_spawner = get_node("../Spawner")
	_player = get_node("../Player")
	
	_spawner.stop()
	get_node("Timer").start()
	
	var rand_number = rand_range(0, soal_arr.size())
	
	var rand_quest = soal_arr[rand_number]
	jawaban = jawaban_arr[rand_number]
	
	get_node("text").set_bbcode(rand_quest)
	
	add_to_group("question")
	set_process(true)

func _process(delta):
	get_node("Label").set_text("Countdown : " +str(int(round(get_node("Timer").get_time_left()))))
	if btn_true.is_pressed():
		check_jawaban("YA")
		
	if btn_false.is_pressed():
		check_jawaban("TIDAK")

func _on_Timer_timeout():
	hit_by_player()

func hit_by_player():
	_spawner.start()
	get_node("Timer").stop()
	self.hide()
	get_node("../Player").score = 0
	
func check_jawaban(jawab):
	if(jawab == jawaban):
		self.hide()
		_spawner.start()
		get_node("Timer").stop()
	else :
		hit_by_player()


