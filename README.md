# Tutorial 2
## Inaya Rahmanisa - 2106708330
### Latihan: Playtest
- Apa saja pesan log yang dicetak pada panel Output?
```
Platform initialized
```

- Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?
```
Platform initialized
Reached objective!
Reached objective!
```
> di mana "Reached objective!" dicetak setiap kali blueship digerakkan ke atas frame
- Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?
> Ya, berkaitan. pesan log "Reached objective" dicetak setiap kali blueship memasuki area ObjectiveArea. Hal ini dilakukan dengan adanya signal *_on_ObjectiveArea_body_entered* yang dijalankan setiap kali ada blueship yang memasuki area ObjectiveArea yang berada di atas frame.

### Latihan: Memanipulasi Node dan Scene
- Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite. Apa fungsi dari node bertipe Sprite?
> Sprite (2D) adalah tipe node yang berfungsi sebagai tekstur untuk 2D. Texture dari sprite berupa asset dalam bentuk gambar sebagai representasi karakter visual dari node 2d tersebut. Misalnya di sini sprite StonePlatform dalam bentuk gambar batu dan sprite BlueShip dalam bentuk gambar pesawat berwarna biru.

- Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?
> Pada RigidBody2D, status node bisa berubah - misalnya posisi, kecepatan, dll - berdasarkan gaya yang diberikan dari, bisa berupa gravitasi, impuls dan simulasi fisika yang menghitung gerakan dihasilkan berdasarkan massa, gesekan, dan sifat fisik lainnya. Contohnya dalam hal ini, posisi BlueShip berubah-ubah berdasarkan dorongan dari StonePlatform, dan selalu kembali ke bawah karena ada gaya gravitasi.
Sedangkan StaticBody2D adalah tipe body 2D yang tidak bisa digerakkan berdasarkan gaya dari eksternal tetapi bisa digerakkan secara manual berdasarkan kode, AnimationMixer, dan RemoteTransform2D. Contohnya di sini StonePlatform tidak terpengaruh dengan gaya gravitasi yang membuatnya turun, tetapi terpengaruh terhadap kode atau ketika digerakkan manual oleh pemain.

- Ubah nilai atribut Mass dan Weight pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?
> Ketika mass dan weight diubah tidak ada perubahan fisik yang terjadi pada BlueShip.

- Ubah nilai atribut Disabled pada tipe CollisionShape2D di scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?
> Ketika CollisionShape2D di-disabled, ObjectiveArea tidak lagi mendeteksi area tabrakan sehingga ketika BlueShip memasuki ObjectiveArea tidak ada lagi pencetakan "Reached objective!"

- Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?
> position yang diubah mengubah koordinat posisi BlueShip dalam frame. Misalnya posisi (0,0) adalah posisi di kiri atas frame. Rotation yang diubah mengubah arah sprite BlueShip. Scale yang diubag mengubah skala besar atau kecilnya sprite BlueShip.


- Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?
> StonePlatform dan StonePlatform2 adalah scene tersendiri. Konfigurasi di dalam scene position nya 0,0 yaitu tepat di tengah-tengah. Namun, ketika scene tersebut diexport ke dalam scene lain pada hal ini mainLevel, bagian transform khususnya position bisa berubah sesuai dengan posisi ditempatkannya scene tersebut. 
