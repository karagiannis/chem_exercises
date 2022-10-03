clear all
V_stam=1E-3
c_stam=0.15E-3
n_stam = c_stam*V_stam
times_diluted = [10,16,25,50,100]
Dilution_adding_volumes = (times_diluted-1)*V_stam
Slutvolymer =V_stam.*[10,16,25,50,100]

c=n_stam./Slutvolymer
ConcMilliMol=1000*c

%Koncentrationerna skall vara oavsett startvolymen från stamlösningen
%1.5000e-05   9.3750e-06   6.0000e-06   3.0000e-06   1.5000e-06
y =67*c + 0.0036
pp = polyfit(c,y,1)
%pp(1) ger lutningen k, pp(2) ger konstanten
%Y=pp(1)*X+pp(2) så om X vill tas reda på så
%(Y-pp(2))/pp(1)

%Lägg in vektor med Absorbansvärden motsvarande vektorn c
Y=4.5E-3
X=(Y-pp(2))/pp(1)
