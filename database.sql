CREATE DATABASE english;

USE english;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(255) NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE words (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    word VARCHAR(50) NOT NULL,
    translation VARCHAR(50),
    definition TEXT(120),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE sentences (
    id INT AUTO_INCREMENT PRIMARY KEY,
    word_id INT,
    user_id INT,
    sentence TEXT(120) NOT NULL,
    translation TEXT(120) NOT NULL,
    FOREIGN KEY (word_id) REFERENCES words(id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE liked_words (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    word_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (word_id) REFERENCES words(id) ON DELETE CASCADE
);

CREATE TABLE liked_sentences (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    sentence_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (sentence_id) REFERENCES sentences(id) ON DELETE CASCADE
);

INSERT INTO
    users (fullname, email, username, password)
VALUES
    (
        `iqbolshoh ilhomjonov`,
        `iilhomjonov777@gmail.com`,
        `iqbolshoh`,
        `29cbffe112a766305c4a49a61e27d7e117c2efc0b2bd31451b3a200c24fd565b`
    ),
    (
        `admin`,
        `admin@iqbolshoh.uz`,
        `admin`,
        `0c138cbe7d1f479abb449366f3cb3dddd52bc104596ff91813c6674cd016896a`
    );

INSERT INTO
    `words` (`user_id`, `word`, `translation`, `definition`)
VALUES
    (
        2,
        `ant`,
        `akar`,
        `A small insect known for living in colonies and being industrious.`
    ),
    (
        2,
        `art`,
        `sanat`,
        `The creation of visual, auditory, or performance artifacts that express the creators imagination.`
    ),
    (
        2,
        `avenue`,
        `kocha`,
        `A broad road in a city or town, often lined with trees.`
    ),
    (
        2,
        `airplane`,
        `samolyot`,
        `A vehicle with wings and engines that flies in the sky.`
    ),
    (
        2,
        `apple`,
        `olma`,
        `A round fruit with red, green, or yellow skin and a sweet taste.`
    ),
    (
        2,
        `alarm`,
        `signal`,
        `A warning sound or signal for alert.`
    ),
    (
        2,
        `book`,
        `kitob`,
        `A set of written, printed, or blank pages fastened together between a cover.`
    ),
    (
        2,
        `ball`,
        `top`,
        `A round object used in games and sports.`
    ),
    (
        2,
        `bike`,
        `velosiped`,
        `A vehicle with two wheels that you ride by pedaling.`
    ),
    (
        2,
        `bread`,
        `non`,
        `A common food made from flour and water and baked.`
    ),
    (
        2,
        `bottle`,
        `shisha`,
        `A container with a narrow neck, used to hold liquids.`
    ),
    (
        2,
        `box`,
        `quti`,
        `A container with flat surfaces and a lid or cover.`
    ),
    (
        2,
        `building`,
        `bino`,
        `A structure with walls and a roof.`
    ),
    (
        2,
        `cat`,
        `mushuk`,
        `A small domesticated carnivorous mammal with soft fur.`
    ),
    (
        2,
        `car`,
        `avtomobil`,
        `A road vehicle powered by an engine, used for transporting people.`
    ),
    (
        2,
        `chair`,
        `stul`,
        `A piece of furniture for sitting, usually having four legs and a back.`
    ),
    (
        2,
        `city`,
        `shahar`,
        `A large town or a significant urban area.`
    ),
    (
        2,
        `computer`,
        `kompyuter`,
        `An electronic device for storing and processing data.`
    ),
    (
        2,
        `cake`,
        `kek`,
        `A sweet baked food made from flour, sugar, and eggs.`
    ),
    (
        2,
        `coat`,
        `palto`,
        `A piece of clothing worn over other clothes to keep warm.`
    ),
    (
        2,
        `dog`,
        `it`,
        `A domesticated carnivorous mammal that typically has a barking sound.`
    ),
    (
        2,
        `door`,
        `esik`,
        `A hinged, sliding, or revolving barrier at the entrance to a building.`
    ),
    (
        2,
        `dance`,
        `raqqoslik`,
        `A series of movements and steps performed to music.`
    ),
    (
        2,
        `desk`,
        `stol`,
        `A piece of furniture with a flat top and usually with drawers.`
    ),
    (
        2,
        `doctor`,
        `shifokor`,
        `A person who is qualified to treat people who are ill.`
    ),
    (
        2,
        `door`,
        `esik`,
        `A hinged, sliding, or revolving barrier at the entrance to a building.`
    ),
    (2, `drink`, `ichimlik`, `A liquid for drinking.`),
    (
        2,
        `elephant`,
        `fil`,
        `A large mammal with a trunk and tusks.`
    ),
    (
        2,
        `egg`,
        `tuxum`,
        `An oval or round object laid by female birds, reptiles, and other animals.`
    ),
    (
        2,
        `engineer`,
        `muhandis`,
        `A person who designs, builds, or maintains engines, machines, or structures.`
    ),
    (
        2,
        `envelope`,
        `konvert`,
        `A flat, usually rectangular container for a letter.`
    ),
    (
        2,
        `education`,
        `talim`,
        `The process of receiving or giving systematic instruction.`
    ),
    (2, `eye`, `koz`, `An organ that enables vision.`),
    (
        2,
        `ear`,
        `quloq`,
        `The organ that detects sound.`
    ),
    (
        2,
        `fish`,
        `baliq`,
        `A cold-blooded vertebrate animal that lives in water.`
    ),
    (
        2,
        `flower`,
        `gul`,
        `The reproductive structure of flowering plants.`
    ),
    (
        2,
        `food`,
        `ovqat`,
        `Any nutritious substance that people or animals eat or drink.`
    ),
    (
        2,
        `fan`,
        `ventilyator`,
        `A device for creating a current of air.`
    ),
    (
        2,
        `fire`,
        `ot`,
        `A rapid oxidation process producing heat and light.`
    ),
    (
        2,
        `fork`,
        `vilkalar`,
        `A utensil with two or more prongs for eating or serving food.`
    ),
    (
        2,
        `flag`,
        `bayroq`,
        `A piece of fabric with a distinctive design used as a symbol.`
    ),
    (
        2,
        `goat`,
        `echki`,
        `A domesticated ruminant animal with a beard and horns.`
    ),
    (
        2,
        `glove`,
        `qolqop`,
        `A covering for the hand with separate fingers.`
    ),
    (
        2,
        `guitar`,
        `gitara`,
        `A stringed musical instrument played by plucking or strumming.`
    ),
    (
        2,
        `grass`,
        `mushak`,
        `A common plant with narrow leaves.`
    ),
    (
        2,
        `gate`,
        `darvoza`,
        `A barrier used to close an entrance or exit.`
    ),
    (2, `gold`, `oltin`, `A yellow precious metal.`),
    (
        2,
        `game`,
        `oyin`,
        `An activity with rules played for entertainment or competition.`
    ),
    (
        2,
        `house`,
        `uy`,
        `A building for human habitation.`
    ),
    (2, `hat`, `shapka`, `A head covering.`),
    (
        2,
        `horse`,
        `ot`,
        `A large domesticated animal used for riding or work.`
    ),
    (
        2,
        `hospital`,
        `kasalxona`,
        `An institution providing medical and surgical treatment.`
    ),
    (
        2,
        `honey`,
        `asal`,
        `A sweet substance made by bees.`
    ),
    (
        2,
        `hair`,
        `soch`,
        `The strands growing from the skin of the head or body.`
    ),
    (
        2,
        `hand`,
        `qol`,
        `The prehensile extremity at the end of the arm.`
    ),
    (2, `ice`, `muz`, `Frozen water.`),
    (
        2,
        `insect`,
        `hasharot`,
        `A small arthropod animal with six legs.`
    ),
    (
        2,
        `island`,
        `orol`,
        `A piece of land surrounded by water.`
    ),
    (
        2,
        `ink`,
        `moy`,
        `A colored fluid used for writing or printing.`
    ),
    (2, `idea`, `goya`, `A thought or suggestion.`),
    (
        2,
        `instrument`,
        `asbob`,
        `A tool or device for performing a task.`
    ),
    (
        2,
        `information`,
        `malumot`,
        `Data communicated or received.`
    ),
    (
        2,
        `juice`,
        `sharbati`,
        `A liquid obtained by squeezing fruit.`
    ),
    (
        2,
        `jacket`,
        `jaket`,
        `A piece of clothing worn on the upper body.`
    ),
    (
        2,
        `jungle`,
        `jangaldan`,
        `A dense, tropical forest.`
    ),
    (
        2,
        `jewelry`,
        `zargarlik`,
        `Decorative items worn on the body.`
    ),
    (
        2,
        `jam`,
        `murabbo`,
        `A sweet spread made from fruit.`
    ),
    (
        2,
        `jump`,
        `sakrash`,
        `To propel oneself upward.`
    ),
    (
        2,
        `jar`,
        `bankka`,
        `A container with a lid used for preserving food.`
    ),
    (
        2,
        `key`,
        `kalit`,
        `A device used to open a lock.`
    ),
    (
        2,
        `king`,
        `podsho`,
        `A male ruler of a country.`
    ),
    (
        2,
        `kangaroo`,
        `kangaroo`,
        `A marsupial with powerful hind legs.`
    ),
    (
        2,
        `knife`,
        `pichoq`,
        `A cutting tool with a sharp blade.`
    ),
    (
        2,
        `kitchen`,
        `oshxona`,
        `A room where food is prepared.`
    ),
    (
        2,
        `kite`,
        `qanot`,
        `A light framework covered with paper or cloth, flown in the wind.`
    ),
    (
        2,
        `keyboard`,
        `klaviatura`,
        `A set of keys for typing or playing music.`
    ),
    (
        2,
        `lion`,
        `sher`,
        `A large, wild cat known as the king of beasts.`
    ),
    (
        2,
        `lamp`,
        `chiroq`,
        `A device for giving light.`
    ),
    (
        2,
        `letter`,
        `xat`,
        `A written or printed message.`
    ),
    (2, `laptop`, `noutbuk`, `A portable computer.`),
    (
        2,
        `lake`,
        `kol`,
        `A large body of water surrounded by land.`
    ),
    (
        2,
        `lemon`,
        `limon`,
        `A yellow citrus fruit with a sour taste.`
    ),
    (
        2,
        `light`,
        `yoruglik`,
        `The natural agent that stimulates sight and makes things visible.`
    ),
    (
        2,
        `monkey`,
        `maymun`,
        `A primate with a long tail.`
    ),
    (
        2,
        `moon`,
        `oy`,
        `The natural satellite of the Earth.`
    ),
    (
        2,
        `mountain`,
        `tog`,
        `A large landform that rises prominently above its surroundings.`
    ),
    (
        2,
        `mouse`,
        `sichqon`,
        `A small rodent or a computer input device.`
    ),
    (
        2,
        `milk`,
        `sut`,
        `A white liquid produced by mammals for feeding their young.`
    ),
    (
        2,
        `market`,
        `bozor`,
        `A place where goods are bought and sold.`
    ),
    (
        2,
        `map`,
        `xarita`,
        `A representation of an area.`
    ),
    (
        2,
        `notebook`,
        `daftar`,
        `A book for writing notes.`
    ),
    (
        2,
        `night`,
        `kecha`,
        `The period of darkness between sunset and sunrise.`
    ),
    (
        2,
        `nurse`,
        `hamshira`,
        `A person trained to care for the sick or injured.`
    ),
    (
        2,
        `nature`,
        `tabiat`,
        `The physical world and its phenomena.`
    ),
    (
        2,
        `name`,
        `ism`,
        `A word by which a person or thing is known.`
    ),
    (
        2,
        `news`,
        `yangilik`,
        `Information about recent events.`
    ),
    (
        2,
        `nut`,
        `yongoq`,
        `A hard-shelled fruit or seed.`
    ),
    (
        2,
        `orange`,
        `apelsin`,
        `A citrus fruit with a tangy taste.`
    ),
    (
        2,
        `ocean`,
        `dengiz`,
        `A vast body of saltwater that covers most of the Earth.`
    ),
    (
        2,
        `oven`,
        `pech`,
        `A kitchen appliance used for baking or roasting.`
    ),
    (
        2,
        `office`,
        `ofis`,
        `A room or building where people work.`
    ),
    (
        2,
        `octopus`,
        `ahtapot`,
        `A sea creature with eight arms.`
    ),
    (
        2,
        `oil`,
        `yog`,
        `A viscous liquid used for cooking or lubrication.`
    ),
    (
        2,
        `opera`,
        `opera`,
        `A theatrical work combining drama, music, and dance.`
    ),
    (
        2,
        `pen`,
        `rakam`,
        `A tool for writing with ink.`
    ),
    (
        2,
        `pizza`,
        `pitsa`,
        `A dish made with dough, cheese, and various toppings.`
    ),
    (
        2,
        `plant`,
        `osimlik`,
        `A living organism that typically grows in the ground.`
    ),
    (
        2,
        `pencil`,
        `qaralamach`,
        `A tool used for writing or drawing, with a graphite core.`
    ),
    (
        2,
        `pool`,
        `basseyn`,
        `A small man-made lake for swimming.`
    ),
    (
        2,
        `phone`,
        `telefon`,
        `A device used for voice communication.`
    ),
    (
        2,
        `picture`,
        `rasm`,
        `A visual representation of something.`
    ),
    (
        2,
        `queen`,
        `malika`,
        `A female ruler of a country.`
    ),
    (
        2,
        `question`,
        `savol`,
        `A sentence designed to elicit information.`
    ),
    (
        2,
        `quilt`,
        `toshak`,
        `A warm bed covering made of padding and fabric.`
    ),
    (
        2,
        `quote`,
        `iqtibos`,
        `A repetition of someones statement or thoughts.`
    ),
    (
        2,
        `quince`,
        `sina`,
        `A hard, yellow fruit used for preserves.`
    ),
    (
        2,
        `quasar`,
        `kvazar`,
        `A very energetic and distant active galactic nucleus.`
    ),
    (
        2,
        `quantity`,
        `miqdor`,
        `The amount or number of something.`
    ),
    (
        2,
        `river`,
        `daryo`,
        `A large, flowing body of water.`
    ),
    (
        2,
        `rose`,
        `gul`,
        `A type of flowering plant known for its fragrant blooms.`
    ),
    (
        2,
        `radio`,
        `radio`,
        `A device for receiving or transmitting sound signals.`
    ),
    (
        2,
        `robot`,
        `robot`,
        `A machine capable of carrying out a complex series of actions automatically.`
    ),
    (
        2,
        `rain`,
        `yomgir`,
        `Water droplets falling from the sky.`
    ),
    (
        2,
        `restaurant`,
        `restoran`,
        `A place where meals are prepared and served to customers.`
    ),
    (
        2,
        `ruler`,
        `qaydovchi`,
        `An instrument for measuring length or a leader.`
    ),
    (
        2,
        `sun`,
        `quyosh`,
        `The star around which the Earth orbits.`
    ),
    (
        2,
        `star`,
        `yulduz`,
        `A celestial body that emits light.`
    ),
    (
        2,
        `school`,
        `maktab`,
        `An institution for educating children.`
    ),
    (
        2,
        `shoe`,
        `poyabzal`,
        `A covering for the foot.`
    ),
    (
        2,
        `soap`,
        `sabun`,
        `A substance used for washing and cleaning.`
    ),
    (
        2,
        `salad`,
        `salat`,
        `A dish made from a mixture of raw vegetables.`
    ),
    (
        2,
        `sea`,
        `dengiz`,
        `A large body of saltwater smaller than an ocean.`
    ),
    (
        2,
        `tree`,
        `daraxt`,
        `A perennial plant with an elongated trunk.`
    ),
    (
        2,
        `table`,
        `stol`,
        `A piece of furniture with a flat top and legs.`
    ),
    (
        2,
        `train`,
        `poezd`,
        `A series of connected vehicles traveling on railways.`
    ),
    (
        2,
        `television`,
        `televizor`,
        `A device for receiving broadcast images and sound.`
    ),
    (
        2,
        `telephone`,
        `telefon`,
        `A device used for voice communication.`
    ),
    (
        2,
        `towel`,
        `sochiq`,
        `A piece of cloth used for drying.`
    ),
    (
        2,
        `ticket`,
        `chiptalar`,
        `A piece of paper giving access to a service or event.`
    ),
    (
        2,
        `umbrella`,
        `soya`,
        `A device used for protection from rain or sun.`
    ),
    (
        2,
        `uniform`,
        `form`,
        `A set of clothing worn by members of an organization.`
    ),
    (
        2,
        `ufo`,
        `NLO`,
        `An unidentified flying object.`
    ),
    (
        2,
        `user`,
        `foydalanuvchi`,
        `A person who uses a computer or service.`
    ),
    (
        2,
        `utensil`,
        `asbob`,
        `A tool or container used for cooking or eating.`
    ),
    (
        2,
        `unique`,
        `noloyiq`,
        `Being the only one of its kind.`
    ),
    (
        2,
        `under`,
        `ostida`,
        `In a lower position than something else.`
    ),
    (
        2,
        `violin`,
        `skrypka`,
        `A wooden stringed instrument played with a bow.`
    ),
    (
        2,
        `vase`,
        `vaza`,
        `A container used for holding flowers.`
    ),
    (
        2,
        `van`,
        `mikroavtobus`,
        `A vehicle used for transporting goods or people.`
    ),
    (
        2,
        `vacation`,
        `dam olish`,
        `A period of rest or travel away from home.`
    ),
    (
        2,
        `vegetable`,
        `sabzavot`,
        `A plant or part of a plant used for food.`
    ),
    (
        2,
        `voice`,
        `ovoza`,
        `The sound produced by the vocal cords.`
    ),
    (
        2,
        `video`,
        `video`,
        `A recording of moving visual images.`
    ),
    (
        2,
        `water`,
        `suv`,
        `A clear liquid essential for life.`
    ),
    (
        2,
        `window`,
        `deraza`,
        `An opening in a wall with glass panes.`
    ),
    (
        2,
        `watch`,
        `soat`,
        `A device worn on the wrist to tell time.`
    ),
    (
        2,
        `word`,
        `soz`,
        `A single unit of language that carries meaning.`
    ),
    (
        2,
        `wall`,
        `devor`,
        `A vertical structure enclosing or dividing an area.`
    ),
    (
        2,
        `wrist`,
        `bilak`,
        `The joint connecting the hand and forearm.`
    ),
    (
        2,
        `wind`,
        `shamol`,
        `Air in motion relative to the Earth’s surface.`
    ),
    (
        2,
        `xylophone`,
        `ksilofon`,
        `A musical instrument with wooden bars struck by mallets.`
    ),
    (
        2,
        `x-ray`,
        `rentgen`,
        `A type of radiation used for imaging bones.`
    ),
    (
        2,
        `xenon`,
        `ksenon`,
        `A chemical element used in high-performance lights.`
    ),
    (
        2,
        `xylophone`,
        `ksilofon`,
        `A musical instrument with wooden bars struck by mallets.`
    ),
    (
        2,
        `xenophobia`,
        `xenofobiya`,
        `Fear or dislike of strangers or foreigners.`
    ),
    (
        2,
        `xenon`,
        `ksenon`,
        `A chemical element used in high-performance lights.`
    ),
    (
        2,
        `xylophone`,
        `ksilofon`,
        `A musical instrument with wooden bars struck by mallets.`
    ),
    (
        2,
        `yellow`,
        `sariq`,
        `A color like that of ripe lemons or corn.`
    ),
    (
        2,
        `yogurt`,
        `qatiq`,
        `A dairy product made by fermenting milk.`
    ),
    (
        2,
        `yawn`,
        `qongir`,
        `To open the mouth wide and inhale deeply.`
    ),
    (
        2,
        `yard`,
        `yordam`,
        `A unit of measurement equal to 3 feet.`
    ),
    (
        2,
        `young`,
        `yosh`,
        `In an early stage of life or development.`
    ),
    (
        2,
        `yacht`,
        `yax`,
        `A large boat used for pleasure cruising.`
    ),
    (
        2,
        `yoga`,
        `yoga`,
        `A practice of physical and mental exercises.`
    ),
    (
        2,
        `zebra`,
        `zebralar`,
        `A large African mammal with black-and-white stripes.`
    ),
    (
        2,
        `zoo`,
        `zoo`,
        `A place where animals are kept for public viewing.`
    ),
    (
        2,
        `zip`,
        `ferma`,
        `A fastening device used for closing clothing or bags.`
    ),
    (
        2,
        `zone`,
        `zona`,
        `An area distinguished from others.`
    ),
    (
        2,
        `zero`,
        `nol`,
        `The numerical value of nothing.`
    ),
    (
        2,
        `zodiac`,
        `burj`,
        `A band of the sky divided into twelve signs.`
    ),
    (
        2,
        `zucchini`,
        `qovoq`,
        `A type of summer squash.`
    );

INSERT INTO
    sentences (word_id, user_id, sentence, translation)
VALUES
    (
        1,
        2,
        `The sun rises in the east.`,
        `Quyosh sharqdan chiqadi.`
    ),
    (
        2,
        2,
        `Water boils at 100 degrees Celsius.`,
        `Suv 100 daraja Selsiyda qaynaydi.`
    ),
    (
        3,
        2,
        `A cat is sitting on the roof.`,
        `Mushuk tomda o'tiribdi.`
    ),
    (
        4,
        2,
        `The sky is blue on a clear day.`,
        `Ochiq kunda osmon moviy bo'ladi.`
    ),
    (
        5,
        2,
        `Birds fly in the sky.`,
        `Qushlar osmondan uchadi.`
    ),
    (
        6,
        2,
        `Fish swim in the water.`,
        `Baliqlar suvda suzadi.`
    ),
    (
        7,
        2,
        `He reads books every evening.`,
        `U har oqshom kitob o'qiydi.`
    ),
    (
        8,
        2,
        `The car is parked in the garage.`,
        `Mashina garajda turibdi.`
    ),
    (
        9,
        2,
        `She likes to drink coffee in the morning.`,
        `U ertalab kofe ichishni yoqtiradi.`
    ),
    (
        10,
        2,
        `The tree is tall and strong.`,
        `Daraxt baland va mustahkam.`
    ),
    (
        11,
        2,
        `They are playing football in the park.`,
        `Ular parkda futbol o'ynayapti.`
    ),
    (
        12,
        2,
        `The computer is on the desk.`,
        `Kompyuter stol ustida turibdi.`
    ),
    (
        13,
        2,
        `He is writing a letter to his friend.`,
        `U do'stiga xat yozmoqda.`
    ),
    (
        14,
        2,
        `The stars are shining in the sky.`,
        `Yulduzlar osmondan porlayapti.`
    ),
    (
        15,
        2,
        `The flowers are blooming in the garden.`,
        `Gullar bog'da ochilmoqda.`
    ),
    (
        16,
        2,
        `She is wearing a red dress.`,
        `U qizil ko'ylak kiygan.`
    ),
    (
        17,
        2,
        `The dog is barking at the stranger.`,
        `It begona odamga hurayapti.`
    ),
    (
        18,
        2,
        `The plane is flying high in the sky.`,
        `Samolyot osmon balandida uchmoqda.`
    ),
    (
        19,
        2,
        `The teacher is explaining the lesson.`,
        `O'qituvchi darsni tushuntiryapti.`
    ),
    (
        20,
        2,
        `The students are studying in the library.`,
        `Talabalar kutubxonada o'qishyapti.`
    );