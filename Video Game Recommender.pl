/*
A program which helps you to decide which video game to purchase.
By Utkarsh Tamrakar and Ruchi Ninawe

start with ?- start.
*/

start :- write('######################################################'),nl,
write('#                                                    #'),nl,
write('#                  WELCOME TO                        #'),nl,
write('#          VIDEO GAME SUGGESTION SYSTEM              #'),nl,
write('#                    by                              #'),nl, 
write('#             Utkarsh and Ruchi                      #'),nl, 
write('#                                                    #'),nl, 
write('#                                                    #'),nl, 
write('#     This is a program to suggest video games       #'),nl,
write('#             that might suits you....               #'),nl,
write('#                                                    #'),nl,
write('#  [Answer the question followed by . before ENTER]  #'),nl,
write('#                                                    #'),nl,
write('#           Let\'s proceed to questions...            #'),nl,
write('#                                                    #'),nl,
write('######################################################'),nl,
setof(Title, game(Title), TitleX),
write('Based on your input you might want to try these games:\n'),
write(TitleX),
nl,
flushdb.

game('Noted.\n') :- action; rpg; puzzle; platformer; sandbox; strategy; 
simulation; shooter; adventure; horror; racing; sports; 

single; multiplayer;

storyline; graphics; difficulty; 

xbox; ps; pc; mobile.

game('Batman: Arkham Knight\n') :- difficulty,(action;adventure;sandbox),(pc;ps;xbox),single.
game('Devil May Cry 5\n') :- difficulty,(action;adventure),(ps;pc;xbox),(single;multiplayer).
game('God of War: 2018\n') :-difficulty,(multiplayer;single),(adventure;action),ps.
game('Dark Souls III\n') :- difficulty,(action;rpg),(single;multiplayer),(pc;xbox;ps).
game('Sekiro: Shadows Die Twice\n') :- difficulty,(action;adventure),\+(graphics),single,(ps;pc;xbox).

game('The Elder Scrolls V: Skyrim\n') :- \+(graphics),(rpg;action),single,(ps;pc;xbox).
game('The Witcher 3: Wild Hunt\n') :- difficulty,(rpg;action),single,(ps;pc;xbox).
game('Fallout 4\n') :- difficulty,(rpg;action),single,(ps;pc;xbox).
game('Mass Effect: Andromeda\n') :- (rpg;action),(single;multiplayer),(ps;pc;xbox).
game('Cyberpunk 2077\n') :- difficulty,(rpg;action),single,(ps;pc;xbox).
    
game('Portal 2\n') :- difficulty,\+(graphics),puzzle,(single;multiplayer),(ps;pc;xbox).
game('World of Goo\n') :- (puzzle;platformer),(single;multiplayer),(ps;pc;xbox;mobile),\+(graphics),\+(storyline).
game('The Room\n') :- puzzle,single,(pc;mobile),\+(graphics).
game('Opus Magnum\n') :- puzzle,single,\+(graphics),pc.

game('Fortnite\n') :- (sandbox;shooter),difficulty,\+(graphics),\+(storyline),multiplayer,(ps;pc;xbox;mobile).
game('Counter Strike GO\n') :- shooter, \+(storyline),difficulty,multiplayer,(pc;ps;xbox).
game('Destiny 2\n') :- (shooter;action;sandbox;rpg),difficulty,multiplayer,(xbox;ps;pc).
game('Overwatch\n') :- (shooter;action),difficulty,\+(graphics),\+(storyline),multiplayer,(pc;ps;xbox).
game('Dota 2\n') :- (strategy;adventure;action),multiplayer,\+(graphics),\+(storyline),pc,difficulty.
game('PlayerUnknown\'s Battlegrounds\n') :- (shooter;sandbox),multiplayer,\+(storyline),(ps;pc;xbox;mobile),difficulty.

game('Super Mario Odyssey\n') :- platformer,\+(graphics),(single;multiplayer).
game('Cuphead\n') :- platformer,\+(graphics),\+(storyline),(single;multiplayer),(pc;ps;xbox),difficulty.
game('Celeste\n') :- platformer,\+(graphics),difficulty,single,(pc;ps;xbox).
game('Undertale\n') :- (platformer;rpg),difficulty,\+(graphics),single,(pc;ps).

game('Call of Duty: Black Ops Cold War\n') :- (shooter;action;sandbox),difficulty,(single;multiplayer),(pc;ps;xbox).
game('Halo 4\n') :- (shooter;action;adventure),difficulty,(single;multiplayer),(pc;xbox).
game('Battlefield V\n') :- (shooter;action;sandbox),difficulty,(single;multiplayer),(pc;xbox;ps).
game('Tom Clancy\'s Rainbow Six Siege\n') :- \+(storyline),(shooter;action),(single;multiplayer),(pc;xbox;ps).
game('Wolfenstein II: The New Colossus\n'):- (shooter;action;adventure),difficulty,single,(pc;xbox;ps).

game('Minecraft\n') :- sandbox,(single;multiplayer),(pc;xbox;ps),\+(storyline),\+(graphics).
game('Grand Theft Auto V\n') :- (sandbox;action;adventure),difficulty,(single;multiplayer),(pc;xbox;ps).
game('Assassin\'s Creed Valhalla\n') :- (sandbox;action;rpg),difficulty,single,(pc;xbox;ps).
game('Red Dead Redemption 2\n') :- (sandbox;action;adventure;rpg),difficulty,(single;multiplayer),(pc;xbox;ps).
game('Saints Row IV\n') :- (sandbox;action;adventure),difficulty,(single;multiplayer),(pc;xbox;ps).

game('Age of Empires III\n') :-strategy,difficulty,(single;multiplayer),pc,\+(graphics).
game('Civilization V\n') :- strategy,difficulty,(single;multiplayer),pc.
game('XCOM 2\n') :- (strategy;rpg),difficulty,(single;multiplayer),(pc;xbox;ps;mobile).
game('World of Warcraft: Shadowlands\n') :- (strategy;rpg),difficulty,multiplayer,pc.
game('Company of Heroes 2\n') :- strategy,\+(graphics),difficulty,(single;multiplayer),pc.

game('The Sims 4\n') :- simulation,\+(graphics),\+(storyline),single,(pc;xbox;ps).
game('Euro Truck Simulator 2\n') :- simulation,\+(storyline),single,pc.
game('Car Mechanic Simulator\n') :- simulation,\+(storyline),single,(pc;xbox;ps).
game('Cities: Skylines\n') :- simulation,\+(storyline),single,(pc;xbox;ps).

game('Life Is Strange 2\n')   :- adventure,\+(graphics),single,(pc;xbox;ps).
game('The Walking Dead\n') :- adventure,\+(graphics),single,(pc;xbox;ps;mobile).
game('Shadow of the Tomb Raider\n') :- (adventure;action;sandbox),difficulty,single,(pc;xbox;ps).
game('The Last of Us\n') :- (adventure;action;horror),difficulty,(single;multiplayer),ps.
game('Uncharted: The Lost Legacy\n') :- (adventure;action;shooter;platformer;sandbox),difficulty,(single;multiplayer),ps.

game('Resident Evil 7: Biohazard\n'):-  (horror;action),difficulty,single,(pc;xbox;ps).
game('Dead Space 3\n'):-  (horror;shooter;action;adventure),difficulty,(single;multiplayer),(pc;xbox;ps).
game('Silent Hill\n') :- horror,single,(pc;xbox;ps),\+(graphics),\+(storyline).
game('Outlast\n') :- horror,single,(pc;xbox;ps).
game('Metro Exodus\n'):- (horror;shooter),difficulty,single,(pc;xbox;ps).

game('Need for Speed Heat\n') :- (racing;sandbox),(single;multiplayer),(pc;xbox;ps),\+(storyline).
game('Forza Horizon 4\n') :- (racing;sandbox),\+(storyline),difficulty,(single;multiplayer),(pc;xbox).
game('Burnout Paradise\n') :- (racing;sandbox),\+(storyline),difficulty,(single;multiplayer),(pc;xbox;ps).

game('FIFA 20\n') :- sports,\+(storyline),(single;multiplayer),(pc;xbox;ps).
game('Rocket League\n') :- sports,\+(storyline),(single;multiplayer),(pc;xbox;ps).
game('NBA 2K20\n') :- sports,\+(storyline),(single;multiplayer),(pc;xbox;ps;mobile).

game('Mobile Legends: Bang Bang\n') :- (strategy;platformer), \+(graphics), multiplayer, mobile.

action :- asktype('Would you like to play action games? ').

rpg :- asktype('How about role playing games? ').

puzzle :- asktype('Umm, who doesnt like puzzles! What about you?').

multiplayer :- asktype('Want to play with friends or other people? ').

platformer :-  asktype('Do you like to play light games on your phone? ').

sandbox :- asktype('Do you like to play games where you can explore freely in the game world? ').

strategy :- asktype('Figure out thieves and murderers in strategy based games! Are you in? ').

simulation :- asktype('Do you like simulation based games? ').

shooter :- asktype('Are you interested in playing shooting games too? ').

adventure :- asktype('Up for an adventure game where you can become a prince or a hero or a villain to save or destroy the day? ').

horror :- asktype('Can you deal with horror?  ').

racing :- asktype('Are you interested in playing racing games? ').

sports :- asktype('In for some sports?').

storyline :-asktype('Is storyline crucial for you in the game? ').

graphics :- asktype('Do you need the feel of realistic graphics in the game you are playing? ').

difficulty :- asktype('Can you deal with challenging games? ').

xbox :- asktype('Do you like to play on Xbox? ').

ps :- asktype('Do you like to play on PlayStation? ').

pc :- asktype('Are you a PC gamer? ').

mobile :- asktype('Do you want games for mobile phones? ').

single :- asktype('Do you want single player games? ').


ques(Q) :- write(Q),
write('Respond with y/n: '),
read(Reply),
nl,
( (Reply == y) -> asserta(y(Q));
(Reply == n) -> asserta(n(Q)),fail;
( (Reply \= y , Reply \= n) -> write('Wrong input! Try again: '), ques(Q) )
).
:- dynamic(y/1,n/1).

asktype(X) :- (y(X) -> true;
(n(X) -> fail;
ques(X))).

flushdb :- retractall(y(_)),retractall(n(_)),fail.
flushdb.