function setupQuiz() {


    let questions = [];

    let englishQuestions = [];
    let germanQuestions = [];
    let solutions = [];
    let answers = [];
    let dataObjects = []; 






    function getRandomAnswers(correctAnswer, solutionsArray) {
        const availableAnswers = [...solutionsArray];
        const randomAnswers = [];

        const index = availableAnswers.indexOf(correctAnswer);
        if (index > -1) availableAnswers.splice(index, 1);

        while (randomAnswers.length < 3 && availableAnswers.length > 0) {
            const randomIndex = Math.floor(Math.random() * availableAnswers.length);
            randomAnswers.push(availableAnswers.splice(randomIndex, 1)[0]);
        }

        randomAnswers.push(correctAnswer);
        for (let i = randomAnswers.length - 1; i > 0; i--) {
            const j = Math.floor(Math.random() * (i + 1));
            [randomAnswers[i], randomAnswers[j]] = [randomAnswers[j], randomAnswers[i]];
        }

        return randomAnswers;
    }

    function generateMixedQuizObjects(englishQuestionsArray, germanQuestionsArray, solutionsArray, maxObjects) {
        const mixedQuestions = [];
    
     
        while (mixedQuestions.length < maxObjects && (englishQuestionsArray.length > 0 || germanQuestionsArray.length > 0)) {
            const useEnglish = Math.random() < 0.5 && englishQuestionsArray.length > 0;
            const question = useEnglish ? englishQuestionsArray.shift() : germanQuestionsArray.shift();
            mixedQuestions.push(question);
        }
    
   
        for (let i = 0; i < mixedQuestions.length; i++) {
            const correctAnswer = solutionsArray[i]; 
            const answers = getRandomAnswers(correctAnswer, solutionsArray); 
    
            const dataObject = {
                Frage: mixedQuestions[i],
                Antwort1: answers[0],
                Antwort2: answers[1],
                Antwort3: answers[2],
                Antwort4: answers[3],
                richtigeAntwort: correctAnswer, 
                Gegenpart: mixedQuestions[i], 
            };
    
            dataObjects.push(dataObject);
        }
    
        localStorage.setItem("quizData", JSON.stringify(dataObjects));
        localStorage.setItem("showAnswer", JSON.stringify(showAnswer));
        console.log("Gemischte Quiz-Daten erfolgreich gespeichert:", dataObjects);
    }

    function generateQuizObjects(questionsArray, solutionsArray, maxObjects) {
        for (let i = 0; i < maxObjects && i < questionsArray.length; i++) {
            const correctAnswer = solutionsArray[i]; 
            const answers = getRandomAnswers(correctAnswer, solutionsArray); 

            const dataObject = {
                Frage: questionsArray[i], 
                Antwort1: answers[0],
                Antwort2: answers[1],
                Antwort3: answers[2],
                Antwort4: answers[3],
                richtigeAntwort: correctAnswer, 
                Gegenpart: questionsArray[i], 
            };

            dataObjects.push(dataObject);
        }

        localStorage.setItem("quizData", JSON.stringify(dataObjects));
        console.log("Quiz-Daten erfolgreich gespeichert:", dataObjects);
    }


    
    function addTask(question, solution, isEnglish = true) {
        console.log("Eingehende Frage:", question);
        console.log("Eingehende Lösung:", solution);
    
        if (Array.isArray(question)) {
            if (isEnglish) {
                englishQuestions.push(...question);
                questions.push(...question);
            } else {
                germanQuestions.push(...question);
                questions.push(...question);
            }
        } else {
            if (isEnglish) {
                englishQuestions.push(question);
                questions.push(question);
            } else {
                germanQuestions.push(question);
                questions.push(question);
            }
        }
    
        if (Array.isArray(solution)) {
            solutions.push(...solution);
            answers.push(...solution);
        } else {
            solutions.push(solution);
            answers.push(solution);
        }
    
        console.log("Fragenliste (questions):", questions);
        console.log("Lösungen (solutions):", solutions);
        console.log("Antworten (answers):", answers);
    }




    





    


    let quizLength = document.getElementById("länge").value;
   
    let showAnswer = document.getElementById("correct").value;
    
          

    let difficulty = document.getElementById("schwierigkeit").value;
    let order = document.getElementById("reihenfolge").value;
    if (order === "Englisch/Deutsch" || order === "Gemischt") {
        if (difficulty === "Test Unit 5" || difficulty === "Alles") {

            addTask([
        "unauthorized",
        "auditing",
        "tax consultancy",
        "to avoid sth",
        "cybercrime",
        "attack",
        "to gain",
        "findings",
        "disappointing",
        "to pay attention to sth",
        "to pretend",
        "trustworthy",
        "auction",
        "infected",
        "malware",
        "frustrating",
        "to beware of sth",
        "worm",
        "to spread",
        "sensitive",
        "to use sth up",
        "bandwith",
        "usage",
        "account records",
        "monitoring",
        "to keep an eye out for sth",
        "backdoor",
        "to bypass sth",
        "authentication",
        "to hide",
        "inactive",
        "state",
        "to detect",
        "continually",
        "to watch out for sth",
        "unidentified",
        "not...yet",
        "unlikely",
        "injection",
        "to exploit sth",
        "hidden",
        "command",
        "to pick up on sth",
        "weakness",
        "to persuade",
        "to guard against sth",
        "to make a point",
        "to infect",
        "public",
        "recipient",
        "trojan",
        "caution",
        "to exercise sth",
        "suspicious",
    "immediately",
"untrustworthy",
"to appear",
"fake",
"to threaten",
"to address sb",
"valuable",
"colour scheme",
"criminal",
"to punish",
"to display",
"credible",
"to refer to sb",
"to panic",
"acceptable use",
"access privileges",
"corporate",
"corporate building",
"access level",
"to be permitted to do sth",
"to pre-approve sth",
"to approve sth",
"to be considered sth",
"confidential",
"to end up in the wrong hands",
"clarification",
"restriction",
"security mechanism",
"to put sth in place",
"to remind sb"],[
            
            
            
            
       "unbefugt",
"Wirtschaftsprüfung/Revision",
"Steuerberatung",
"einer Sache aus dem Weg gehen",
"Cyber-Kriminalität",
"Angriff",
"gewinnen/erlangen",
"(Untersuchungs-) Ergebnisse",
"enttäuschend",
"etw beachten",
"vorgeben,vortäuschen",
"glaubwürdig, verlässlich",
"Versteigerung, Auktion",
"infiziert",
"Schadprogramm(e)",
"frustrierend",
"sich vor etw in Acht nehmen",
"Wurm",
"sich ausbreiten",
"(Informationen:) vertraulich",
"etw verbrauchen/ etw aufbrauchen",
"Bandbreite",
"Verbrauch/Nutzung",
"Kontodaten/Kundendaten",
"Überwachung",
"nach etw Ausschau halten",
"Hintertür",
"etw umgehen",
"Authentifizierung",
"sich verstecken",
"untätig/inaktiv",
"Zustand",
"aufspüren/entdecken",
"kontinuierlich",
"nach etw. Ausschau halten",
"unbekannt",
"noch nicht",
"unwahrscheinlich",
"Einschleusung",
"etw ausnutzen",
"verborgen/versteckt",
"Befehl",
"auf etw reagieren/aufmerksam machen",
"Schwäche",
"überreden/überzeugen",
"sich vor etw schützen",
"ein Argument vortragen",
"infizieren",
"öffentlich",
"Empfänger/in",
"Trojaner",
"Vorsicht",
"etw üben/etw walten lassen",
"verdächtig",
"sofort/unverzüglich",
"nicht vertrauenswürdig",
"scheinen/den Eindruck erwecken",
"falsch/gefälscht",
"drohen/bedrohen",
"jdn anreden/ansprechen",
"wertvoll/geschätzt",
"Farbgebung/Farbzusammenstellung",
"Kriminelle/r/Verbrecher/in",
"bestrafen",
"zeigen/darstellen",
"glaubwürdig",
"sich an jdn wenden/jdn (beim Namen) nennen",
"in Panik geraten",
"zulässige Nutzung",
"Zugriffsrechte",
"Unternehmens-",
"interne Revision",
"Berechtigungsstufe/Zugriffsstufe",
"etw tun dürfen/die Erlaubnis haben, etw zu tun",
"etw im Voraus genehmigen",
"etw genehmigen,etw zulassen",
"als etw gelten",
"vertraulich",
"in falsche Hände gelangen",
"Klarstellung/Klärung",
"Beschränkung/Einschränkung",
"Schutzmechanismus/Sicherheitsmaßnahme",
"etw einrichten",
"jdn (an etw) erinnern"
    
    
    
    ],true);
            

        }
    }
    if (order === "Deutsch/Englisch" || order === "Gemischt") {
        if (difficulty === "Test Unit 5" || difficulty === "Alles") {

            addTask([
                "unbefugt",
                "Wirtschaftsprüfung/Revision",
                "Steuerberatung",
                "einer Sache aus dem Weg gehen",
                "Cyber-Kriminalität",
                "Angriff",
                "gewinnen/erlangen",
                "(Untersuchungs-) Ergebnisse",
                "enttäuschend",
                "etw beachten",
                "vorgeben,vortäuschen",
                "glaubwürdig, verlässlich",
                "Versteigerung, Auktion",
                "infiziert",
                "Schadprogramm(e)",
                "frustrierend",
                "sich vor etw in Acht nehmen",
                "Wurm",
                "sich ausbreiten",
                "(Informationen:) vertraulich",
                "etw verbrauchen/ etw aufbrauchen",
                "Bandbreite",
                "Verbrauch/Nutzung",
                "Kontodaten/Kundendaten",
                "Überwachung",
                "nach etw Ausschau halten",
                "Hintertür",
                "etw umgehen",
                "Authentifizierung",
                "sich verstecken",
                "untätig/inaktiv",
                "Zustand",
                "aufspüren/entdecken",
                "kontinuierlich",
                "nach etw. Ausschau halten",
                "unbekannt",
                "noch nicht",
                "unwahrscheinlich",
                "Einschleusung",
                "etw ausnutzen",
                "verborgen/versteckt",
                "Befehl",
                "auf etw reagieren/aufmerksam machen",
                "Schwäche",
                "überreden/überzeugen",
                "sich vor etw schützen",
                "ein Argument vortragen",
                "infizieren",
                "öffentlich",
                "Empfänger/in",
                "Trojaner",
                "Vorsicht",
                "etw üben/etw walten lassen",
                "verdächtig",
                "sofort/unverzüglich",
                "nicht vertrauenswürdig",
                "scheinen/den Eindruck erwecken",
                "falsch/gefälscht",
                "drohen/bedrohen",
                "jdn anreden/ansprechen",
                "wertvoll/geschätzt",
                "Farbgebung/Farbzusammenstellung",
                "Kriminelle/r/Verbrecher/in",
                "bestrafen",
                "zeigen/darstellen",
                "glaubwürdig",
                "sich an jdn wenden/jdn (beim Namen) nennen",
                "in Panik geraten",
                "zulässige Nutzung",
                "Zugriffsrechte",
                "Unternehmens-",
                "interne Revision",
                "Berechtigungsstufe/Zugriffsstufe",
                "etw tun dürfen/die Erlaubnis haben, etw zu tun",
                "etw im Voraus genehmigen",
                "etw genehmigen,etw zulassen",
                "als etw gelten",
                "vertraulich",
                "in falsche Hände gelangen",
                "Klarstellung/Klärung",
                "Beschränkung/Einschränkung",
                "Schutzmechanismus/Sicherheitsmaßnahme",
                "etw einrichten",
                "jdn (an etw) erinnern"
            


            ],[


                "unauthorized",
                "auditing",
                "tax consultancy",
                "to avoid sth",
                "cybercrime",
                "attack",
                "to gain",
                "findings",
                "disappointing",
                "to pay attention to sth",
                "to pretend",
                "trustworthy",
                "auction",
                "infected",
                "malware",
                "frustrating",
                "to beware of sth",
                "worm",
                "to spread",
                "sensitive",
                "to use sth up",
                "bandwith",
                "usage",
                "account records",
                "monitoring",
                "to keep an eye out for sth",
                "backdoor",
                "to bypass sth",
                "authentication",
                "to hide",
                "inactive",
                "state",
                "to detect",
                "continually",
                "to watch out for sth",
                "unidentified",
                "not...yet",
                "unlikely",
                "injection",
                "to exploit sth",
                "hidden",
                "command",
                "to pick up on sth",
                "weakness",
                "to persuade",
                "to guard against sth",
                "to make a point",
                "to infect",
                "public",
                "recipient",
                "trojan",
                "caution",
                "to exercise sth",
                "suspicious",
            "immediately",
        "untrustworthy",
        "to appear",
        "fake",
        "to threaten",
        "to address sb",
        "valuable",
        "colour scheme",
        "criminal",
        "to punish",
        "to display",
        "credible",
        "to refer to sb",
        "to panic",
        "acceptable use",
        "access privileges",
        "corporate",
        "corporate building",
        "access level",
        "to be permitted to do sth",
        "to pre-approve sth",
        "to approve sth",
        "to be considered sth",
        "confidential",
        "to end up in the wrong hands",
        "clarification",
        "restriction",
        "security mechanism",
        "to put sth in place",
        "to remind sb"],false);
          
          


        }
    }
    ArrayToUpperCase(questions);
    ArrayToUpperCase(solutions);
    if(quizLength=="Alle"){quizLength=questions.length}
if (questions.length === 0 || answers.length === 0) {
    console.error("Fehler: Fragen oder Antworten fehlen!");
}

    if (difficulty === "Falsch letzter Durchgang" || difficulty === "Gemischt") {
        const savedWrongQuestions = JSON.parse(localStorage.getItem("wrongQuestions")) || []; 
     
        if (savedWrongQuestions.length) {
         
            if (difficulty === "Falsch letzter Durchgang") {
                quizData = savedWrongQuestions; 
            } else {
               
                const allQuestions = generateQuizObjects(questions, solutions, quizLength);
                quizData = [...savedWrongQuestions, ...allQuestions];
            }
        } else {
          
            quizData = generateQuizObjects(questions, solutions, quizLength);
        }
    } else {
   
        quizData = generateQuizObjects(questions, solutions, quizLength);
    }
    
    function ArrayToUpperCase(stringArray) {
        for (let i = 0; i < stringArray.length; i++) {
            stringArray[i] = stringArray[i].toUpperCase();
        }
    }
    

    



    

    localStorage.setItem("showAnswer", showAnswer);


    window.location.replace("Quiz.html");
    solutions = "";
    questions = "";
    answerGroup = "";
}    