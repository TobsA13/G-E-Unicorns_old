waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["policerules","Police Procedures/Rules"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegal Activity"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["changelog",
		[
			"Official Change Log",
				"
					The official change log can be found on the BIS forums (search Altis Life RPG)
				"
		]
	];
	
	player createDiaryRecord["changelog",
		[
			"Custom Change Log",
				"
					This section is meant for people doing their own edits to the mission, DO NOT REMOVE THE ABOVE.
				"
		]
	];

		player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				Für folgende Taten wird man nicht nur gekickt, sondern gebannt<br/><br/>

				1. Jede andere Art aus dem Gefängnis zu entkommen, als durch Bezahlen der Kaution oder mit einem Helikopter<br/>
				2. Selbstmord um dem Roleplay zu entkommen. Um zu entkommen getazed, festgenommen, verhaftet, im Gefängnis, etc zu sein. Zahl nicht die Kaution und töte dich nicht selbst um einfach nach Hause zu kommen. Lauf du fauler Sack.<br/>
				3. Duplizieren von Gegenständen und/oder Geld. Wenn du eine unerreichbare Summe an Geld von einem anderen Spieler überwiesen bekommst, melde dies einem Admin und sende ihm das Geld. Mach dies so schnell wie möglich sonst könntest du von einem Admin gebannt werden.<br/>
				4. Benutzen von gehackten Gegenständen. Wenn ein Hacker unerhältliche Gegenständen spawnt, darfst du diese nicht benutzen oder du wirst gebannt. Melde dies sofort einem Admin und bleibe weg von den Gegenständen.<br/>
				5. Ausnutzen von Spielfehlern um sich einen Vorteil zu verschaffen. Wenn du eine zum Beispiel eine duplizierte Waffe findest, musst du dies einem Admin melden und die Waffe in liegen lassen. Wenn dich ein Admin erwischt, während du eine solche Waffe benutzt wirst du gebannt.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord["safezones",
		[
			"Safe Zones",
				"
					Zerstören von Fahrzeugen, überfallen oder töten in diesen Umgebungen führt zu einem Ban<br/><br/>
					
					Fahrzeug-Spawn (Läden oder Garagen)<br/>
					Waffenladen<br/>
					Polizei-HQ<br/>
					Rebel Outposts<br/>
					Kavala<br/>
					Donator Shops<br/><br/>
				"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Bann-Gründe", 
				"
				Siehe dies als die erste und einzige Warnung.<br/><br/>
				
				1. Hacking<br/>
				2. Cheating<br/>
				3. Exploiting (Siehe 'Exploits')<br/>
				4. Being kicked 3 or more times.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Polizei-Interaktion", 
				"
				Folgendes kann zu einem Kick oder einem Ban führen, je nach empfinden der Admins.<br/><br/>
				
				1. Zivilisten können für das Durchsuchen von Rucksäcken/Fahrzeugen von Polizisten verhaftet werden.<br/>
				2. Zivilisten können für das Verfolgen von Polizisten verhaftet werden.<br/>
				3. Zivilisten und Rebellen, welche Polizisten ohne Roleplay-Gründe töten werden für RDMing angeklagt. Siehe RDM Bereich.<br/>
				4. Dauerhaftes verfolgen und/oder belästigen von Polizisten wird als griefing und/oder spamming eingestuft.<br/>
				5. Aktives hindern von Polizisten ihren Pflichten nachzugehen kann zur Festnahme führen. Wiederholtes hindern führt zu einem Kick/Ban.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Boote", 
				"
				Folgendes kann zu einem Kick oder einem Ban führen, je nach empfinden der Admins.<br/><br/>
				
				1. Wiederholtes rammen von Booten ohne Erlaubnis.<br/>
				2. Rammen von Booten mit Vorsatz Spieler zu verletzen oder zu töten.<br/>
				3. Absichtliches überfahren von Spielern/Schwimmern.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Flugzeuge/Hubschrauber", 
				"
				Folgendes kann zu einem Kick oder einem Ban führen, je nach empfinden der Admins.<br/><br/>
				
				1. Absichtliches rammen von Helikoptern gegen andere Helikopter, Fahrzeuge oder Häuser.<br/>
				2. Fliegen von 150m oder tiefer über eine Stadt. Ein einmaliges Vorkommen ist nur illegal<br/>
				3. Stehlen von Helikoptern ohne angemessene Warnung und genug Zeit für den Fahrer ihn abzuschließen.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Fahrzeuge", 
				"
				Folgendes kann zu einem Kick oder einem Ban führen, je nach empfinden der Admins.<br/><br/>
				
				1. Absichtliches Überfahren von Personen (VRDM).<br/>
				2. Absichtliches Rennen vor ein Fahrzeuge um verletzt zu werden oder zu sterben<br/>
				3. Rammen eines anderen Fahrzeuges um es zur Explosion zu bringen.<br/>
				4. Wiederholtes versuchen in ein Fahrzeug, welches nicht dir gehört, einzusteigen.<br/>
				5. Stehlen eines Fahrzeuges nur um es zu zerstören.<br/>
				6. Man darf nur auf ein Fahrzeug schießen um die Reifen zu zerstören und/oder Warnschüsse während einer Roleplay-Situation abzugeben. Man darf nicht absichtlich feindliche Fahrzeuge zerstören.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Regeln zu Kommunikation", 
				"
				Folgendes kann zu einem Kick oder einem Ban führen, je nach empfinden der Admins.br/><br/>
				
				1. Der Sidechat ist nicht da um Musik abzuspielen.<br/>
				2. Spammen in jedem Chat ist verboten.<br/>
				4. Es hat einen Grund, dass der Teamspeak-Server in verschiedene Räume aufgeteilt ist. Polizisten müssen immer in den Polizei-Räumen sein.<br/>
				5. Zivilisten dürfen nicht in Polizei-Räumen sein um Informationen über deren Aufenthaltsort oder ähnliches zu erfahren.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				Folgendes kann zu einem Kick oder einem Ban führen, je nach empfinden der Admins.<br/><br/>
				
				1. Töten ohne Roleplay-Grund.<br/>
				2. Erklären einer Rebellion ist kein Grund jemanden zu töten, nicht einmal Polizisten.<br/>
				3. Polizisten und Zivilisten/Rebellen dürfen nur wegen kriminellen Gründen aufeinander schießen.<br/>
				4. Es ist kein RDM, wenn du im Kreuzfeuer getötet wirst.<br/>
				5. Es ist kein RDM, wenn du damit dich oder andere versuchst zu schützen.<br/>
				6. Es wird als RDM eingestuft, wenn du auf eine Person schießt ohne ihr genug Zeit zu geben die Anweisungen zu befolgen.<br/><br/>
				
				
				"
		]
	];
	player createDiaryRecord ["serverrules",
		[
			"Neue Life Regeln", 
				"
				Neue Island Life Regeln für Polizisten und Zivilisten.<br/><br/>
				
				Folgendes kann zu einem Kick oder einem Ban führen, je nach empfinden der Admins.<br/><br/>

				1. Wenn du getötet wurdest darfst du 15min nicht zu deinem Todesort zurückkehren.<br/>
				2. Wenn du während einer Roleplay-Situation getötet wirst sind deine Verbrechen vergessen aber du darfst keine Rache nehmen.<br/>
				3. RDM ist kein neues Leben.<br/>
				4. Respawnen zählt nicht als neues Leben.<br/>
				5. Wenn du dich absichtlich tötest, um dem Roleplay zu entkommen, ist es auch kein neues Leben.<br/><br/>
				"
		]
	];

	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Krisenverhandlungen",
				"
				Krisenverhandlungen müssen von einem Oberkommissar durchgeführt werden. Wenn keiner verfügbar ist, ist die Person mit dem nächst höheren Rang verantwortlich.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Bundesbank",
				"
				1. Das Betreten der Bundesbank durch Zivilisten ist verboten, außer sie haben eine Genehmigung dazu. Wenn Zivilisten diese ohne Erlaubnis betreten, werden sie abgeführt oder verhaftet.
				2. Helikopter, welche über die Bundesbank fliegen werden aufgefordert wegzufliegen, wenn diese sich weigern werden sie flugunfähig gemacht.<br/>
				2. Wenn die Bundesbank überfallen wird müssen alle Polizisten sich dorthin begeben um dies zu stoppen.<br/>
				3. Kleinere Verbrechen können während des Überfalls auf die Bundesbank vernachlässigt werden.<br/>
				4. Waffengewalt ist bei einem Bankraub erlaubt falls es keine andere Möglichkeit gibt. Jede andere Möglichkeit zu tazen und zu verhaften sollte versucht werden.<br/>
				5. Die Polizei darf nicht blind in das Gebäude schießen.<br/>
				6. Die Polizei sollte Zivilisten während einem Raub aus dem Gebäude bringen.<br/>
				7. Jeder Zivilisten, der die Polizei blockiert, wird als Komplize gesehen.<br/>
				8. Der höchstrangige Polizist kann einzelne Personen oder Gruppen beauftragen als Security an der Bank zu arbeiten.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Flugzeuge/Hubschrauber",
				"
				1. Helikopter dürfen nur mit Erlaubnis des höchstrangige Polizisten in der Nähe der Stadt landen.<br/>
					Ausnahmen:<br/>
				Kavala: Helipad am Krankenhaus (037129) oder am Dock (031128).<br/>
				Athira: Sportplatz (138185) oder hinter dem Lizenzhändler (140188).<br/>
				Pyrgos: Auf den Feldern nördlich/östlich des Lizenzhändlers (170127)<br/>
				Sofia: Gegenüber des Autohändlers (258214) oder auf den Feldern süd-östlich der Garage (257212)<br/>
				Kleine Städte: An angemessenen Orten. Dies wird von der Polizei entschieden.<br/><br/>
				
				2. Helikopter dürfen nicht auf Straßen landen.<br/>
				3. Polizei kann vorübergehendes Landen verbieten aber nicht dauerhaft.<br/>
				4. Helikopter dürfen nur mit Erlaubnis von einem Polizisten unter 150m über eine Stadt fliegen.<br/>
				5. Helikopter dürfen nicht über Städten schweben. Polizisten dürfen nur bei einem Einsatz über einer Stadt schweben.<br/><br/>

				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegale Gebiete", 
				"
				1. Gang-Gebiete sind nicht illegal. Also dürfen Polizisten diese betreten aber niemanden ohne Grund festnehmen. (Mit dem NPC reden ist kein Grund)<br/>
				2. Polizisten dürfen illegale Gebiete nur während eines Einsatzes betreten.<br/>
				3. Bei einer Verfolgung in ein illegales Gebiet muss Verstärkung gerufen werden.<br/>
				4. Die Polizei darf unter keinen Umständen in illegalen gebieten campen.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Patroullien", 
				"
				1. Polizisten können auf den Straßen und in Städten patrouillieren um nach Verbrechen und verlassenen Fahrzeugen zu suchen.<br/>
				2. Patrouillen werden in der Stadt zu Fuß und außerhalb mit einem Fahrzeug durchgeführt.<br/>
				3. Patrouillen dürfen nicht in illegalen Gebieten durchgeführt werden.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints", 
				"
				Die Polizei wird dazu aufgefordert, Checkpoints zu errichten um Verbrechen einzudämmen und um die Sicherheit auf den Straßen zu erhöhen.<br/><br/>
				
				1. Ein Checkpoint muss von mindestens 3 Polizisten und 2 Fahrzeugen besetzt sein. ATVs zählen nicht zu den benötigten Fahrzeugen, dürfen aber zusätzlich genutzt werden.<br/>
				2. Ein Checkpoint muss mindestens 300m von einem illegalen Gebiet entfernt sein.<br/>
				3. Checkpoints dürfen nur auf Straßen errichtet werden.<br/>
				4. Checkpoints müssen nicht auf der Karte markiert werden.<br/><br/>


				Ablauf bei einer Kontrolle:<br/>
				1. Bringe den Fahrer dazu das Fahrzeug an einer sicheren Stelle zu parken und den Motor auszuschalten.<br/>
				2. Frage den Fahrer und die Mitfahrer ob sie Waffen bei sich tragen.<br/>
				3. Bitte die Insassen des Fahrzeuges auszusteigen und falls sie Waffen besitzen diese abzulegen. Lasse ihnen aber genug Zeit und fessle sie nicht sofort.</br>
				4. Frage woher sie kommen und wohin sie wollen.<br/>
				5. Frage ob sie einer Durchsuchung zustimmen.<br/>
				6. Wenn sie zustimmen, fessle sie und durchsuche sie.<br/>
				7. Wenn sie nicht zustimmen, musst du sie fahren lassen, außer du hast einen berechtigten Grund dagegen.<br/>
				8. Nach der Durchsuchung kannst du ihnen erlauben in ihr Fahrzeug zu steigen.<br/>
				9. Wenn etwas verbotenes gefunden wurde, darfst du ihm/ihnen ein/en Strafzettel geben oder ihn/sie verhaften, je nach der Straftat .<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Fahrzeuge", 
				"
				1. Fahrzeuge auf Parkplätzen oder anderweitig angebracht geparkte Fahrzeuge müssen in Ruhe gelassen werden.<br/>
				2. Fahrzeuge, welche verlassen, fahruntüchtig und ohne Fahrer sind, dürfen beschlagnahmt werden.<br/>
				3. Boote sollen am Ufer geparkt werden.<br/>
				4. Jedes Fahrzeug, welches länger nicht bewegt wurde, darf beschlagnahmt werden.<br/>
				5. Beschlagnahmen von Fahrzeugen ist eine grundlegende Aufgabe der Polizei, die dazu dient den Server sauber und lagfrei zu halten.<br/>
				6. Ermittle im Zweifelsfall den Halter des Fahrzeuges und kontaktiere ihn.<br/>
				7. Polizei-Schnellboote und Hunter HMGs dürfen genutzt werden um Verbrechen zu bekämpfen. Die Waffen sollten genutzt werden um die Reifen zu zerstören und nicht um das Fahrzeug in die Luft zu sprengen.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Geschwindigkeit", 
				"
				Die folgenden Höchstgeschwindigkeiten sind einzuhalten um die Sicherheit der Zivilisten zu gewähren und werden von der Polizei kontrolliert.<br/><br/>
				
				Innerhalb der Hauptstädte:<br/>
				Kleine Straßen: 50km/h<br/>
				Hauptstraßen: 50km/h<br/>
				Außerhalb der Hauptstädte:<br/>
				Kleine Straßen: 100km/h<br/>
				Hauptstraßen: 130km/h<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Stadt Protokoll", 
				"
				1. In den Hauptstädten dürfen Patrouillen von der Polizei durchgeführt werden - Kavala, Athira, Pyrgos und Sofia.<br/>
				2. Polizisten dürfen am Autohändler halten um sicherzustellen, dass keine Fahrzeuge beschlagnahmt werden müssen.<br/>
				3. Polizisten dürfen nicht Grundlos im Stadtzentrum herumstehen.<br/>
				4. Die Polizei darf die Stadt während einer Rebellion mit einer großen Zahl an Einsatzkräften stürmen. Nach der Rebellion muss die Stadt wieder geräumt werden.<br/>
				5. Die Polizei darf keinen Krieg erklären.<br/>
				6. Zivilisten dürfen das Polizei HQ nur mit Genehmigung betreten, es ist nicht illegal sich in der Nähe aufzuhalten.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Verhaftung und Strafzettel",
				"
				Zivilisten sollten verhaftet werden, wenn sie sich oder andere gefährden.<br/><br/>

				1. Man sollte niemanden verhaften, der seinen Strafzettel bezahlt hat.<br/>
				2. Man muss dem Betroffenen erklären warum er verhaftet wird/wurde.<br/>
				3. Wenn ein Zivilist gesucht ist, darf man ihn verhaften. Versuche ihn nicht zu töten.<br/><br/>


				Ein Strafzettel wird als Warnung für den Zivilisten angesehen. Wenn ein Zivilist ein Gesetz bricht aber dabei niemanden gefährdet, solltest du ihm einen Strafzettel geben.<br/><br/>

				1. Ein Strafzettel muss einer begründbaren höhe entsprechen.<br/>
				2. Die Höhe des Strafzettel muss auf den begangenen Straftaten basieren.<br/>
				3. Das Verweiger eines Strafzettels ist ein Grund um verhaftet zu werden.<br/>
				4. Viel zu hohe Strafzettel sind ein Grund um aus dem Amt als Polizist gestrichen zu werden.<br/><br/>
				
				Eine vollständige Liste von angebrachten Strafen wird während der Ausbildung beigebracht. Frage im Zweifelsfall einen höherrangigen Polizisten.<br/><br/>
				
				
				"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Waffen", 
				"
				Ein Polizist darf Zivilisten KEINE Waffen geben. Dies ist ein Ban-Grund.<br/><br/>

				Legale Waffen für Zivilisten:<br/>
				1. P07<br/>
				2. Rook<br/>
				3. ACP-C2<br/>
				4. Zubr<br/>
				5. 4-five<br/>
				6. PDW2000<br/><br/>

				Alle anderen Waffen sind illegal.<br/><br/>

				1. Zivilisten dürfen nicht mit gezogener Waffen durch die Stadt laufen.<br/>
				2. Zivilisten dürfen die Waffe gezogen haben, wenn sie außerhalb der Stadt sind. Sie sollten aber Lizenzduchruchungen zustimmen und dabei die Waffe runternehmen (2x Strg).<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Gebrauch von nicht tödliche Waffen",
				"
				Der Taser (Silenced P07) ist die einzige nicht tödliche Waffe.<br/><br/>

				1. Der Taser darf genutzt werden um Zivilisten vor der Flucht zu hindern.<br/>
				2. Entlade deinen Taser nicht, wenn du nicht sicher gehen kannst ob du die Person kampfunfähig gemacht hast.<br/>
				3. Benutze deinen Taser nur nach dem Gesetz.<br/><br/>
				"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raiding/Camping",
				"
				Razzia ist die Bezeichnung für eine planmäßig vorbereitete, innerhalb einer abgesperrten Örtlichkeit bei einem unbestimmten Personenkreis überraschend durchgeführte Suche nach Personen oder Sachen zum Zweck der Gefahrenabwehr oder der Strafverfolgung.<br/><br/>

				1. Bei einer Razzia müssen mindestens 4 Polizisten beteiligt sein, von welchen mindestens einer Oberkommissar sein muss.<br/>
				2. Alle Zivilisten in diesem Gebiet dürfen festgenommen werden. Jedoch müssen sie freigelassen werden, fall nichts illegales bei ihnen gefunden werden sollte.<br/>
				3. Wenn etwas illegales gefunden wird, wird wie bei anderen Straftaten vorgegangen.<br/>
				5. Waffengewalt ist unter dem Punkt 'Gebrauch von Waffen' geregelt.<br/>
				6. Nach der Sicherung des Gebietes muss sich die Polizei zurückziehen.<br/>
				7. Es kann erst nach 20min kann im selben Gebiet wieder eine Razzia durchgeführt werden.<br/>
				8. Bei einem Fehlschlag gilt die Zeitsperre auch für die getöteten Polizisten.<br/>
				9. Es darf Verstärkung gerufen werden, diese darf aber nicht aus vorher gefallenen Polizisten bestehen.<br/><br/>

				Campen ist ein überlanges Aufhalten eines Polizisten in einem Gebiet.<br/><br/>

				1. Checkpoints werden nicht als campen eingestuft. Siehe 'Checkpoints' für eine genaue Definition.<br/>
				2. Als campen wird eingestuft, wenn man sich länger an einem illegalen Gebiet aufhält und eine Razzia antäuscht, diese aber nicht durchführt.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Bußgeldkatalog",
				"

    Fahren ohne Führerschein: 1500$<br/><br/>
    Fliegen ohne Fluglizenz: 30000$<br/><br/>
    Versuchter Diebstahl eines zivilen fremden Fahrzeuges: 2500$<br/><br/>
    Diebstahl / Führen eines gestohlenen Fahrzeuges: 5000$<br/><br/>
    Fahren ohne Licht bei Dunkelheit oder Dämmerung: wird durch Polizisten festgelegt / max.1.000$<br/><br/>
    Überhöhte Geschwindigkeiten:<br/><br/>
    10-30 km/h zu schnell: 2500$<br/><br/>
    Schneller als 30 km/h über Geschwindigkeitsbegrenzung: 3500$<br/><br/>
    Fahren auf der falschen Straßenseite: wird durch Polizisten festgelegt / max.1.000$<br/><br/>
    Diebstahl von Polizeifahrzeugen: 50000$ + Inhaftierung<br/><br/>
    Versuchter Diebstahl von Polizeifahrzeugen: 25.000$ <br/><br/>
    Landen in einer Flugverbotszone: 50.000$ + Fahrzeugbeschlagnahmung<br/><br/>
    Versuchte Landung in einer Flugverbotszone: 20.000$<br/><br/>
    Fliegen/Schweben unterhalb v. 500m einer Stadt: 25.000$<br/><br/>
    Fahren von illegalen Fahrzeugen: 50.000$ + Beschlagnahme des Fahrzeuges<br/><br/>
    Fahrerflucht bei Unfall: 10000$<br/><br/>
    Fahrerflucht vor der Polizei: 15000$<br/><br/>
    Überfahren eines anderen Spielers:5000$<br/><br/>
    Illegale Straßensperren aufstellen: jeder Beteiligte der vor gefunden wird zahlt 10.000$<br/><br/>

Umgang mit der Polizei:<br/><br/>
    Widerstand gegen die Staatsgewalt: 10.000$<br/><br/>
    Nicht befolgen einer polizeilichen Anordnung: 5000$ beim 2.mal Inhaftierung<br/><br/>
    Beamtenbeleidigung (Spielerisch): 5.000$ bei Wiederholung kann der Polizist eine beliebige Summe festlegen<br/><br/>
    Beamtenbeleidigung (Real): 3 x Kick anschließend Permanenter Ban vom Server<br/><br/>
    Belästigung  eines Polizeibeamten: min.1.500$ / max. 5.000$ + Inhaftierung<br/><br/>
    Betreten der polizeilichen Sperrzone: Einmalige Verwarnung, anschließend 2.500$ Bußgeld + Gefängnis<br/><br/>
    Töten eines Polizisten:100.000$ pro Polizist + Inhaftierung<br/><br/>
    Beschuss auf Polizeibeamte/ Fahrzeuge/ Hubschrauber: 10.000$<br/><br/>
    Zerstörung von Polizeieigentum: (Erstattung des entstandenen Schadens)<br/><br/>
    Sich als Polizist aus zu geben:  10.000$  + Inhaftierung<br/><br/>

Drogendelikte(Illegale Waren)<br/><br/>

    Der Wert der mit geführten Drogen oder illegalen Waren im Fahrzeug oder am Körper wird zusammen gezählt und als Bußgeld verhängt. Zusätzlich gibt es eine Gefängnisstrafe.<br/><br/>
    Spieler die wegen Drogendelikten auf der Wantediiste stehen, haben ein Bußgeld zwischen 10.000$ bis max.250.000$ (höchster Cop entscheidet)<br/><br/>

Waffendelikte (wird immer mit Gefängnis bestraft)<br/><br/>

    Waffenbesitz ohne Lizenz: 10.000$<br/><br/>
    mit gezogener Waffe durch Stadt laufen: 5.000$ (keine Inhaftierung)<br/><br/>
    Besitz einer verbotenen Waffe: 15.000$<br/><br/>
    Schusswaffengebrauch innerhalb von Städten: 10000$<br/><br/>
    Geiselnahme:100.000$ je Geiselnehmer<br/><br/>
    Überfall/Übergriff auf Person oder Fahrzeug: 10.000$<br/><br/>
    Bankraub (erfolglos): 60.000$ pro fest genommener Person bei misslungenem Bankraub<br/><br/>
    Bankraub (erfolgreich) die Höhe der Beute wird auf jeden Bankräuber als Ticket verhängt<br/><br/>

Sonstige Delikte<br/><br/>

    Mord:20.000$ pro Mord + Inhaftierung oder Hinrichtung auf Befehl eines Kommandeures<br/><br/>
    Ernst gemeinte Beleidigung anderer Spieler: Kick als einmalige Verwarnung. Bei Wiederholung Bann<br/><br/>
    Aufstand: Inhaftierung aller Beteiligten so wie ein Bußgeld das vom Ranghöchsten Beamten im Dienst verhängt wird + Beschlagnahme von Fahrzeugen und Waffen<br/><br/>
    Angriff durch Rebellen: Inhaftierung aller Beteiligten so wie ein Bußgeld das vom Ranghöchsten Beamten im Dienst verhängt wird + Beschlagnahme bzw. Zerstörung von Fahrzeugen & Waffen<br/><br/>



Alle Polizisten können die Höhe des Bußgeldes selbst bestimmen wenn ein minimaler und ein maximaler Wert vorhanden ist. In geringfügigen Vergehen kann man es bei einer Verwarnung belassen. Dies gilt nur bei Taten bei denen nicht automatisch eine Haftstrafe angeordnet wird.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["policerules",
		[
			"Rang-Kette",
				"
				Der höchstrangige Polizist ist für die Polizei verantwortlich wenn kein Admin online ist. Dieser Polizist muss den Regeln seines Ranges folgen und muss sich an einen Admin wenden wenn dies nötig ist.<br/><br/>

				Polizeiränge:<br/>
				1. Leitender Polizeidirektor (Ltd.PD)<br/>
				2. Hauptkommissar (PHK)<br/>
				3. Oberkommissar (POK)<br/>
				5. Kommissar (PK)<br/>
				4. Kommissaranwärter (PKA)<br/>
				6. Polizeihauptmeister (PHM)<br/>
				7. Polizeianwärter (PA)<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Gebrauch von Waffen",
				"
				1. Waffengewalt darf nur zum Schutz des eigen Lebens und des von Polizisten/Zivilist/Blackwatermitarbeitern genutzt werden oder wenn nicht tödliche Waffen nicht effektiv wären.<br/>
				2. Du darfst nur schießen wenn du in Gefahr oder im Training bist.<br/>
				3. Missachten der Regeln zum Gebrauch von Waffen führt zu einer Entlassung aus der Polizei.<br/><br/>
				"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak-Regeln",
				"
				1. Alle Polizisten müssen auf dem Teamspeak-Server und in den vorgesehenen Polizei-Räumen sein. Missachten dieser Regel führt zu einer Entlassung aus der Polizei.<br/>
				2. Bitte betrete den Teamspeak bevor du als Polizist spawnst.<br/><br/>
				"
		]
	];
	
	
	
// Illegale Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebellen-Regeln",
				"
				Ein Rebell bezeichnet jemanden, der an einem individuellen oder kollektiven Aufstand (Rebellion) beteiligt ist oder diesen in Gang zu setzen versucht.<br/><br/>
				1. Ein Rebell muss erst eine Gang gründen und seine Intentionen darlegen.<br/>
				2. Widerstand entschuldigt kein RDMing (Siehe RDMing)<br/>
				3. Widerstand sollte auch auf andere Arten als die Bank auszurauben und Polizisten zu erschießen ausgeübt werden.<br/>
				4. Widerstand muss geplant sein.<br/>
				5. Es muss hinter jedem Angriff ein sinnvoller Grund stehen.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Gang-Regeln",
				"
				1. Mitglied einer Gang zu sein ist nicht illegal. Nur wenn illegale Straftaten begangenen werden.<br/>
				2. In einem Gang-Gebiet zu sein ist nicht illegal. Nur wenn man an illegalen Aktivitäten teilnimmt.<br/>
				3. Gangs dürfen Gang-Gebiete halten und kontrollieren. Andere Gangs dürfen diese Gebiete angreifen.<br/>
				4. Um einer anderen Gang Krieg zu erklären muss dies im Sidechat bekannt gegeben werden und alle Mitglieder beider Gangs benachrichtigt werden.<br/>
				5. Gang-Mitglieder dürfen keine unbewaffneten Zivilisten töten, außer diese gehören der gegnerischen Gang an oder sind im Gang-Gebiet.<br/>
				6. Gang-Mitglieder dürfen Zivilisten nur töten wenn sie in Gefahr sind. Das Töten von unbewaffneten Zivilisten fällt unter RDMing.<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Fahrzeuge",
				"
				Ein Zivilist, der eines der folgenden Fahrzeuge besitzt verstößt gegen das Gesetz und kann dafür von der Polizei zur Rechenschaft gezogen werden.<br/><br/>

				1. Ifrit(Blackwater hat eine Sondergenehmigung vorausgesetzt ist die Firmenlackierung)<br/>
				2. Speedboat<br/>
				3. Hunter<br/>
				4. Police Offroad<br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Waffen",
				"
				Ein Zivilist mit einer der folgenden Waffen verstößt gegen das Waffen-Gesetz und kann dafür von der Polizei zur Rechenschaft gezogen werden.<br/><br/>
				Blackwater hat eine Sondergenehmigung für Sturmgewehre, DMRs und Pistolen, darf sie jedoch nur zum Schutz von sich und den zu beschützenden Personen einsetzten,<br/>
				falls dies nicht eingehalten wird dürfen die Waffen der Personen beschlagnahmt werden und die Person zur Rechenschaft gezogen werden, welche die Regel gebrochen hat.
				
				1. MX Series<br/>
				2. Katiba Series<br/>
				3. TRG Series<br/>
				4. Mk.20 Series<br/>
				5. Mk.18 ABR<br/>
				6. SDAR Rifle<br/>
				7. Sting SMG<br/>
				8. Silenced P07 (Taser)<br/>
				9. Alle Sturmgewehre,SMGs und DMRs<br/>
				10. Jede Art von Sprengstoff<br/><br/>
				"
		]
	];
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Items",
				"
				Die Folgenden Items sind illegal:<br/><br/>
				1. Schildkröten<br/>
				2. Kokain<br/>
				3. Heroin<br/>
				4. Cannabis<br/>
				5. Marijuana<br/><br/>
				"
		]
	];

	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"",
				"
				Z: Spielermenü öffnen<br/>
				U: Auf- und Abschließen von Fahrzeugen<br/>				
				T: Kofferraum<br/>				
				Links Shift + G: Umschlagen / stunnen (Nur zum überfallen benutzen)<br/>
				Links Windows: Haupt Interaktions-Taste um Items/Geld aufzuheben, interagieren mit Autos (reparieren) und um als Polizist mit Zivilisten zu interagieren. Diese Taste kann umgeändert werden:  ESC->Configure->Controls->Custom->Use Action 10<br/>
				Links Shift + L: Sirenen-Lichter (nur als Polizist)<br/>
				Links Shift + R: Gefangen nehmen (nur als Polizist)<br/>
				F: Sirene (nur als Polizist)<br/>
				"
		]
	];
