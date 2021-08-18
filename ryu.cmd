;-----------------------------|
; Arquivo CMD - Ryu           |
; criado por Ixnaydk & SAM!   |
;-----------------------------|

; 1* parte do arquivo
;-| Super Motions |--------------------------------------------------------
[Command]
name = "teamsuper_owl"
command = ~D, DF, F, D, DB, B, x 
time = 30

[Command]
name = "denji_hadou"
command = ~D, DF, F, D, DB, B, /x
time = 30

[Command]
name = "shinkuuhadou"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "runninghadou"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "extremeshinkuu"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "hadouexplosion"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "shinkuutatsumaki_a"
command = ~D, DB, B, D, DB, B, a
time = 30

[Command]
name = "shinkuutatsumaki_b"
command = ~D, DB, B, D, DB, B, b
time = 30

[Command]
name = "shinkuutatsumaki_c"
command = ~D, DB, B, D, DB, B, c
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "shoryukenfraco"
command = ~F, D, DF, x
time = 20

[Command]
name = "shoryukenmedio"
command = ~F, D, DF, y
time = 20

[Command]
name = "shoryukenforte"
command = ~F, D, DF, z
time = 20

[Command]
name = "hadoukenfraco"
command = ~D, DF, F, x
time = 20

[Command]
name = "hadoukenmedio"
command = ~D, DF, F, y
time = 20

[Command]
name = "hadoukenforte"
command = ~D, DF, F, z
time = 20

[Command]
name = "rasetsu"
command = ~F, D, DF, a
time = 20

[Command]
name = "rasetsu"
command = ~F, D, DF, b
time = 20

[Command]
name = "rasetsu"
command = ~F, D, DF, c
time = 20

[Command]
name = "tatsumaki_fraco"
command = ~D, DB, B, a
time = 20

[Command]
name = "tatsumaki_medio"
command = ~D, DB, B, b
time = 20

[Command]
name = "tatsumaki_forte"
command = ~D, DB, B, c
time = 20

[Command]
name = "tenmakujin_fraco"
command = DF, a
time = 20

[Command]
name = "tenmakujin_medio"
command = DF, b
time = 20

[Command]
name = "tenmakujin_forte"
command = DF, c
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "alphacounter"
command = z+c
time = 20

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "segurar_x"
command = /x
time = 1

[Command]
name = "soltar_x"
command = ~x
time = 1

;---------------------------------------------------------------------------
; 2* Parte - Os states

;Não remova a linha abaixo
[Statedef -1]
;===========================================================================
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;Team Super - Owl
[State -1, Team Super - Owl]
type = ChangeState
value = 3065
triggerall = NumPartner = 1
triggerall = Partner, Name = "Ixnaydk Owl" 
triggerall = Partner, StateType = S 
triggerall = Partner, Power >= 3000
triggerall = StateType = S
triggerall = Command = "teamsuper_owl"
triggerall = Power >= 3000
trigger1 = StateType != A
trigger1 = Ctrl
trigger2 = StateType != A
trigger2 = HitDefAttr = SC,AA,AP

;---------------------------------------------------------------------------
;Denji Hadouken
[State -1, Denji Hadouken]
type = ChangeState
value = 3120
triggerall = Command = "denji_hadou" && Command = "segurar_x"
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Shinkuu Hadouken
[State -1, Shinkuu Hadouken]
type = ChangeState
value = 3050
triggerall = Command = "shinkuuhadou"
triggerall = Power >= 1000
triggerall = StateType != A
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Running Shinkuu Hadouken
[State -1, Running Shinkuu Hadouken]
type = ChangeState
value = 3100
triggerall = Command = "runninghadou"
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = StateType = S
triggerall = P2BodyDist X > 80
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Rasetsu Shinkuu Hadouken
[State -1, Rasetsu Shinkuu Hadouken]
type = ChangeState
value = 3105
triggerall = Command = "runninghadou"
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = StateType = S
triggerall = P2BodyDist X <= 80
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Extreme Shinkuu Hadouken
[State -1, Extreme Shinkuu Hadouken]
type = ChangeState
value = 3110
triggerall = Command = "extremeshinkuu"
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Hadou Explosion
[State -1, Hadou Explosion]
type = ChangeState
value = 3070
triggerall = Command = "hadouexplosion"
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Shinkuu Tatsumaki Senpuu Kyaku
[State -1, Shinkuu Tatsumaki Senpuu Kyaku]
type = ChangeState
value = 3115
triggerall = Command = "shinkuutatsumaki_a"
triggerall = Power >= 1000
triggerall = StateType != A
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Shinkuu Tatsumaki Senpuu Kyaku
[State -1, Shinkuu Tatsumaki Senpuu Kyaku]
type = ChangeState
value = 3116
triggerall = Command = "shinkuutatsumaki_b"
triggerall = Power >= 2000
triggerall = StateType != A
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Shinkuu Tatsumaki Senpuu Kyaku
[State -1, Shinkuu Tatsumaki Senpuu Kyaku]
type = ChangeState
value = 3117
triggerall = Command = "shinkuutatsumaki_c"
triggerall = Power >= 3000
triggerall = StateType != A
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Shoryuken Fraco
[State -1, Shoryuken Fraco]
type = ChangeState
value = 1020
triggerall = Command = "shoryukenfraco"
triggerall = StateType != A
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Shoryuken Médio
[State -1, Shoryuken Médio]
type = ChangeState
value = 1023
triggerall = Command = "shoryukenmedio"
triggerall = StateType != A
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Shoryuken Forte
[State -1, Shoryuken Forte]
type = ChangeState
value = 1026
triggerall = Command = "shoryukenforte"
triggerall = StateType != A
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Hadouken Fraco
[State -1, Hadouken Fraco]
type = ChangeState
value = 1000
triggerall = Command = "hadoukenfraco"
triggerall = StateType != A
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Hadouken Aéreo Fraco
[State -1, Hadouken Aéreo Fraco]
type = ChangeState
value = 1010
triggerall = Command = "hadoukenfraco"
triggerall = StateType = A
triggerall = StateType != S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Hadouken Médio
[State -1, Hadouken Médio]
type = ChangeState
value = 1003
triggerall = Command = "hadoukenmedio"
triggerall = StateType != A
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Hadouken Aéreo Médio
[State -1, Hadouken Aéreo Médio]
type = ChangeState
value = 1011
triggerall = Command = "hadoukenmedio"
triggerall = StateType = A
triggerall = StateType != S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Hadouken Forte
[State -1, Hadouken Forte]
type = ChangeState
value = 1006
triggerall = Command = "hadoukenforte"
triggerall = StateType != A
triggerall = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Hadouken Aéreo Forte
[State -1, Hadouken Aéreo Forte]
type = ChangeState
value = 1012
triggerall = Command = "hadoukenforte"
triggerall = StateType = A
triggerall = StateType != S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Rasetsu Kyaku
[State -1, Rasetsu Kyaku]
type = ChangeState
value = 870
triggerall = Command = "rasetsu"
triggerall = StateType != A 
trigger1 = StateType = S 
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Tatsumaki Senpuu Kyaku - Fraco
[State -1, Tatsumaki Senpuu Kyaku - Fraco]
type = ChangeState
value = 1040
triggerall = Command = "tatsumaki_fraco"
triggerall = StateType != A
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Tatsumaki Senpuu Kyaku - Médio
[State -1, Tatsumaki Senpuu Kyaku - Médio]
type = ChangeState
value = 1042
triggerall = Command = "tatsumaki_medio"
triggerall = StateType != A
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Tatsumaki Senpuu Kyaku - Forte
[State -1, Tatsumaki Senpuu Kyaku - Forte]
type = ChangeState
value = 1044
triggerall = Command = "tatsumaki_forte"
triggerall = StateType != A
trigger1 = StateType = S
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Tenma Kuujin Kyaku - Fraco
[State -1, Tenma Kuujin Kyaku - Fraco]
type = ChangeState
value = 805
triggerall = StateType = A
triggerall = Command = "tenmakujin_fraco" 
trigger1 = Vel X !=0
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Tenma Kuujin Kyaku - Médio
[State -1, Tenma Kuujin Kyaku - Médio]
type = ChangeState
value = 807
triggerall = StateType = A
triggerall = Command = "tenmakujin_medio" 
trigger1 = Vel X !=0
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Tenma Kuujin Kyaku - Forte
[State -1, Tenma Kuujin Kyaku - Forte]
type = ChangeState
value = 811
triggerall = StateType = A
triggerall = Command = "tenmakujin_forte" 
trigger1 = Vel X !=0
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Alpha Counter
[State -1, Alpha Counter]
type = ChangeState
value = 900
triggerall = StateNo = [150,153]
triggerall = Command = "alphacounter" 
triggerall = StateType != A
trigger1 = StateType = S 
trigger1 = Ctrl

;----------------------------------------------------------------------------
;Correr Frente
[State -1, Correr Frente]
type = ChangeState
value = 100
triggerall = Command = "FF" 
triggerall = StateType != A
trigger1 = StateType = S 
trigger1 = Ctrl

;----------------------------------------------------------------------------
;Dash Back
[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = Command = "BB" 
triggerall = StateType != A
trigger1 = StateType = S 
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Soco Fraco
[State -1, Soco Fraco]
type = ChangeState
value = 200
triggerall = command = "x" 
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Soco Médio
[State -1, Soco Médio]
type = ChangeState
value = 205
triggerall = command = "y" 
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Soco Forte
[State -1, Soco Forte]
type = ChangeState
value = 210
triggerall = command = "z" 
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chute Fraco
[State -1, Chute Fraco]
type = ChangeState
value = 215
triggerall = command = "a" 
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chute Médio
[State -1, Chute Médio]
type = ChangeState
value = 220
triggerall = command = "b" 
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chute Forte
[State -1, Chute Forte]
type = ChangeState
value = 225
triggerall = command = "c" 
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Soco Fraco Abaixado
[State -1, Soco Fraco Abaixado]
type = ChangeState
value = 400
triggerall = command = "x" 
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Soco Médio Abaixado
[State -1, Soco Médio Abaixado]
type = ChangeState
value = 405
triggerall = command = "y" 
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Soco Forte Abaixado
[State -1, Soco Forte Abaixado]
type = ChangeState
value = 410
triggerall = command = "z" 
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chute Fraco Abaixado
[State -1, Soco Fraco Abaixado]
type = ChangeState
value = 415
triggerall = command = "a" 
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chute Médio Abaixado
[State -1, Chute Médio Abaixado]
type = ChangeState
value = 420
triggerall = command = "b" 
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chute Forte Abaixado
[State -1, Chute Forte Abaixado]
type = ChangeState
value = 425
triggerall = command = "c" 
triggerall = command = "holddown"
triggerall = statetype != A
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Soco Fraco Aéreo 
[State -1, Soco Fraco Aéreo]
type = ChangeState
value = 600
triggerall = command = "x" 
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Soco Médio Aéreo
[State -1, Soco Fraco Aéreo]
type = ChangeState
value = 605
triggerall = command = "y" 
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Soco Forte Aéreo
[State -1, Soco Forte Aéreo]
type = ChangeState
value = 605
triggerall = command = "z" 
triggerall = command != "holddown"
triggerall = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chute Fraco Aéreo Vertical
[State -1, Chute Fraco Aéreo Vertical]
type = ChangeState
value = 615
triggerall = (Command = "a" || Command = "b" || Command = "c")
triggerall = command != "holddown"
triggerall = statetype = A
triggerall = Vel X = 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chute Fraco Aéreo
[State -1, Chute Fraco Aéreo]
type = ChangeState
value = 620
triggerall = command = "a" 
triggerall = command != "holddown"
triggerall = statetype = A
triggerall = Vel X != 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chute Médio Aéreo
[State -1, Chute Médio Aéreo]
type = ChangeState
value = 625
triggerall = command = "b" 
triggerall = command != "holddown"
triggerall = statetype = A
triggerall = Vel X != 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Chute Forte Aéreo
[State -1, Chute Forte Aéreo]
type = ChangeState
value = 630
triggerall = command = "c" 
triggerall = command != "holddown"
triggerall = statetype = A
triggerall = Vel X != 0
trigger1 = ctrl

;---------------------------------------------------------------------------
;Team Super - Owl(Ryu P3)
;[State -1, Team Super - Owl(Ryu P3)]
;type = ChangeState
;trigger1 = ID != [32,33]
;trigger1 = PlayerID(ID-2),P3Name = "Ixnaydk Owl" && Ctrl
;value = 3065

;[State -1, Team Super - Owl(Ryu P3]
;type = ChangeState
;triggerall = StateNo != 3065
;triggerall = partner,Name = "Ixnaydk Owl"
;trigger1 = partner, StateNo = 3600
;value = 3065

;---------------------------------------------------------------------------









































