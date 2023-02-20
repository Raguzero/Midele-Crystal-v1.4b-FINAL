; My Heart Will Go On - cover maestro de Matt Mulholland
; Imitación para Pokémon Cristal por Manectric-Rang

Music_HeartMulholland:
	musicheader 3, 1, Music_HeartMulholland_Ch1
	musicheader 1, 2, Music_HeartMulholland_Ch2
	musicheader 1, 3, Music_HeartMulholland_Ch3


Music_HeartMulholland_Ch1: ; Arpegios
	tempo 184
	volume $77
	stereopanning $f0
	dutycycle $3
	tone $0002
	notetype $c, $77
	note __, 4
ArpegiosIntro:
	octave 2
	note C#, 2
	note G#, 2
	octave 3
	note C#, 2
	note E_, 10
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	note B_, 2
	octave 3
	note E_, 10
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	note A_, 2
	octave 3
	note E_, 10
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	note B_, 2
	octave 3
	note E_, 10
LoopCh1:
	loopchannel 2, ArpegiosIntro

	intensity $37
	callchannel TresArpegiosFrase1
	octave 1
	note B_, 2
	octave 2
	note G#, 2
	note B_, 2
	octave 3
	note E_, 2
	note D#, 2
	octave 2
	note B_, 2
	note F#, 2
	note B_, 2
	callchannel TresArpegiosFrase1
	octave 1
	note A_, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	note E_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
	callchannel TresArpegiosFrase1
	octave 1
	note B_, 2
	octave 2
	note G#, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 2
	note G#, 2
	note F#, 2
	note E_, 2
	note F#, 2
	callchannel DosArpegiosFrase1
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	note B_, 2
	note E_, 2
	note A_, 2
	octave 1
	note A_, 2
	octave 2
	note A_, 8
	intensity $0F
	note B_, 6

	intensity $37
Frase2_Ch1:
	callchannel DosArpegiosFrase2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	note A_, 2
	octave 3
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	note A_, 2
	octave 3
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	note B_, 2
	note F#, 2
	callchannel DosArpegiosFrase2
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 1
	note A_, 2
	octave 2
	note A_, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 1
	note B_, 2
	octave 3
	note D#, 2
	octave 2
	note F#, 2
	note B_, 2
	loopchannel 2, Frase2_Ch1
	intensity $77
	loopchannel 0, LoopCh1
	
TresArpegiosFrase1:
	octave 2
	note E_, 2
	note G#, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 2
	note F#, 2
	note B_, 2
	note F#, 2
	note B_, 2
	octave 1
	note A_, 2
	octave 2
	note E_, 2
	note A_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	endchannel

DosArpegiosFrase1:
	octave 2
	note E_, 2
	note G#, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 2
	note E_, 2
	note B_, 2
	note E_, 2
	note B_, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 2
	note F#, 2
	note B_, 2
	note F#, 2
	note B_, 2
	endchannel

DosArpegiosFrase2:
	octave 2
	note C#, 2
	note G#, 2
	octave 3
	note C#, 2
	note E_, 2
	octave 2
	note C#, 2
	note G#, 2
	octave 3
	note C#, 2
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	note B_, 2
	octave 3
	note E_, 2
	octave 1
	note B_, 2
	octave 2
	note F#, 2
	note B_, 2
	octave 3
	note E_, 2
	endchannel


Music_HeartMulholland_Ch2: ; Melodía del inicio y acompañamientos
	stereopanning $f
	dutycycle $3
	tone $0001
	notetype $c, $67
	octave 4
	note E_, 2
	note F#, 2
	note F#, 2
	intensity $68
	note G#, 10
	notetype $4, $67
	note F#, 6
	note G#, 2
	note F#, 2
	note E_, 2
	notetype $c, $68
	note F#, 2
	note B_, 9
	notetype $4, $68
	note B_, 1
	octave 5
	note C#, 1
	octave 4
	note B_, 1
	notetype $c, $67
	note A_, 2
	note G#, 2
	intensity $68
	note E_, 4
	note C#, 13
	octave 3
	note B_, 11
LoopCh2:
	octave 4
	intensity $67
	note E_, 2
	note F#, 2
	note F#, 2
	intensity $68
	note G#, 10
	intensity $68
	note A_, 1
	note G#, 1
	note F#, 1
	note E_, 1
	note F#, 2
	intensity $68
	note B_, 10
	note G#, 2
	note B_, 2
	octave 5
	note C#, 8
	octave 4
	note B_, 8
	note F#, 1
	note G#, 1
	note F#, 14

	intensity $28
	octave 2
	note E_, 16
	octave 1
	note B_, 16
	note A_, 16
	note B_, 16
	octave 2
	note E_, 16
	octave 1
	note B_, 16
	note A_, 6
	octave 2
	note B_, 8
	octave 3
	note C#, 2
	octave 2
	note B_, 8
	note A_, 8
	note G#, 16
	note F#, 16
	note B_, 16
	octave 3
	note E_, 8
	octave 2
	note G#, 2
	note B_, 2
	note E_, 2
	note B_, 2
	note E_, 16
	note F#, 16
	note E_, 16
	note E_, 12
	intensity $2F
	note E_, 4
	
	intensity $28
	callchannel CachoRepetidoCh2
	note B_, 16
	octave 5
	note C#, 16
	octave 4
	note B_, 4
	note F#, 2
	note G#, 2
	note A_, 2
	note B_, 2
	octave 5
	note C#, 2
	note D#, 2
	callchannel CachoRepetidoCh2
	note G#, 8
	note B_, 8
	octave 5
	note C#, 8
	note D#, 4
	note E_, 4
	note G#, 8
	note F#, 4
	loopchannel 0, LoopCh2

CachoRepetidoCh2:
	
	octave 5
	note E_, 16
	note D#, 16
	note C#, 16
	note D#, 8
	octave 4
	note B_, 8
	note G#, 16
	endchannel


Music_HeartMulholland_Ch3: ; Flauta demigrante
	volume $77
	vibrato $10, $14
	notetype $c, $10
	octave 5
	note __, 4
silencio_ch3:
	note __, 16
	loopchannel 8, silencio_ch3
LoopCh3:
	notetype $6, $10
	note E_, 10
	note __, 1
	note E_, 4
	note __, 1
	note E_, 7
	note __, 1
	note E_, 8
	slidepitchto 17, 2, D_
	note C#, 5
	slidepitchto 6, 2, D_
	note C#, 3
	note E_, 16
	note __, 4
	note E_, 4
	slidepitchto 14, 2, D_
	note C_, 4
	slidepitchto 14, 2, D_
	note C_, 4
	note E_, 16
	note F#, 8
	note G_, 3
	slidepitchto 1, 3, G#
	note G_, 13
	note G_, 1
	slidepitchto 1, 3, F#
	note G_, 8
	note __, 7

	note E_, 10
	note __, 1
	note E_, 4
	note __, 1
	note E_, 7
	note __, 1
	note E_, 8
	slidepitchto 12, 2, D_
	note D#, 8
	note E_, 12
	note __, 8
	note E_, 4
	note C_, 12
	slidepitchto 3, 2, D_
	note C_, 4
	slidepitchto 10, 2, D_
	note C_, 9
	intensity $20
	slidepitchto 3, 2, D_
	note C_, 4
	intensity $30
	note C_, 3
	note __, 16
	note __, 16

	intensity $10
	note E_, 10
	note __, 1
	note E_, 4
	note __, 1
	slidepitchto 12, 2, E_
	note E_, 8
	note E_, 8
	note D#, 8
	note E_, 12
	note __, 8
	note E_, 3
	note __, 1
	octave 6
	note D#, 3
	octave 5
	note D#, 5
	note E_, 16
	note F#, 8
	note G_, 2
	slidepitchto 1, 3, G#
	note G_, 11
	slidepitchto 1, 3, F#
	note G_, 11
	note __, 8

	note E_, 10
	note __, 1
	octave 6
	note E_, 1
	octave 5
	note E_, 3
	note __, 1
	note E_, 7
	note __, 1
	note E_, 8
	slidepitchto 6, 3, D_
	note D#, 3
	slidepitchto 14, 2, D_
	note C#, 5
	note E_, 12
	note __, 4
	note E_, 4
	note F#, 4
	octave 7
	note __, 1
	note C#, 2
	intensity $20
	octave 5
	note C#, 10
	note __, 2
	note C#, 15
	note __, 3
	note C#, 3
	note __, 13
	note __, 16

	intensity $10
	note E_, 16
	note E_, 8
	note __, 1
	note E_, 7
	note F#, 16
	note __, 8
	note C#, 3
	slidepitchto 8, 3, B_
	note C#, 8
	note __, 1
	note B_, 12
	note A_, 8
	note G#, 3
	note G_, 5
	note F#, 9
	note __, 7
	note G_, 8
	note A_, 8
	note G#, 4
	slidepitchto 6, 2, G_
	note G#, 9
	note G_, 3
	note F#, 12
	note E_, 3
	slidepitchto 6, 3, F_
	note D_, 3
	slidepitchto 6, 3, F#
	note D_, 3
	slidepitchto 6, 3, G_
	note D_, 3
	note E_, 7
	note __, 12
	note E_, 4
	slidepitchto 32, 2, C#
	note C#, 12
	slidepitchto 16, 3, C#
	note C_, 4
	slidepitchto 16, 3, C#
	note C_, 4
	slidepitchto 32, 2, C#
	note C#, 12
	slidepitchto 16, 3, C#
	note C_, 4
	note __, 12
	note __, 16

	note E_, 2
	note F#, 2
	note E_, 12
	note E_, 16
	note F#, 16
	note __, 8
	slidepitchto 16, 2, C#
	note C_, 5
	note __, 3
	note B_, 16
	slidepitchto 1, 3, A_
	note A#, 8
	note G_, 8
	note F#, 9
	note __, 7
	note G_, 8
	note A_, 8
	note G#, 2
	slidepitchto 16, 2, G_
	note G#, 10
	note G_, 4
	note F#, 12
	slidepitchto 6, 3, D#
	note E_, 12
	note E_, 8
	note __, 9
	note E_, 7
	octave 6
	note D#, 10
	octave 5
	note D#, 4
	note E_, 10
	note F#, 8
	slidepitchto 9, 2, G_
	note G_, 2
	octave 6
	note G_, 3
	octave 5
	slidepitchto 6, 3, G_
	note G#, 7
	note F#, 4
	note G#, 1
	note F#, 1
	note G#, 1
	note F#, 3
	note E_, 7
	note F#, 1
	note E_, 1
	note F#, 1
	note E_, 16
	slidepitchto 6, 3, D#
	note E_, 4
	note __, 12
silencio2_ch3:
	note __, 16
	loopchannel 6, silencio2_ch3
	loopchannel 0, LoopCh3
