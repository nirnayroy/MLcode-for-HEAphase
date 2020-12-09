function [Y,Xf,Af] = AM9(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 04-Mar-2019 20:02:44.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = Qx9 matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = Qx1 matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.867076923076923;437.535;0;1.1657;0;1.61538461538462;0;25765000000;0.484122918275927];
x1_step1.gain = [2.08211997670356;0.000699024104098669;0.0588456417471217;1.51941046873813;4.00249121426347;0.196969696969696;0.369863360727655;7.26043023634097e-12;0.0144813358040795];
x1_step1.ymin = -1;

% Layer 1
b1 = [3.6226485332170934583;-1.4478696479390191776;-0.47550393223361192563;2.1585510350555674464;0.88649896951669593381;1.6865131152181107588;0.50861350567879104467;-0.90323059757431078953;-1.3695386812005179156;-2.8794331968162993896;2.5391677655878348574;0.37359253840923134504;0.6142549794154321674;-2.4353223026081023406;0.49169711663527171375;0.31820369617792593209;-1.9070398941668844639;-1.5869929897070114144;-2.6072180260657309425;-2.7581072974667280029];
IW1_1 = [-0.86140372569356138399 3.4925721335577391002 2.7066196350790434622 -1.6370603466855446761 1.3220144718208746148 1.3002149273598195833 3.7988396380401208141 0.15149826529559295984 2.8291266524501672563;0.38789386140266274294 -0.60510099485082569082 0.041963836647209977471 0.61747021891643516511 1.2259764181721082288 0.38733326778832677384 -0.80045035701647626603 0.59756243604374847944 0.798788498013590198;0.066518456632087136216 -0.24829300384455646467 0.37914448230856390154 0.27679029660605092289 0.94447206305107112012 -2.0026052168989325608 -0.59248281005088865303 0.61183734237425613234 -1.481901746911005624;-1.5701688749279234525 -2.1838472489635387674 0.14824813697469163554 -0.74900193347826671264 0.52848019379256505612 1.2010638055666693624 0.63863248340060163599 -2.281581256810007563 -1.1339279897100025263;0.20557541077952395936 -0.41678254659503177759 -0.73134096699192929769 -1.4619361264995598404 0.61162685947010808629 -1.0913482106123399973 0.21290339671681152156 0.16260388623636548577 0.79424557447524868348;0.003456623019458460698 -0.10240760962290482161 -1.2051465034826491785 -0.63012156664894281022 0.91078699012182884331 0.84222862484701110919 -0.29879939248710934985 0.29404399918355395016 -0.65197043331847326364;-1.1694369055266868873 1.0833956379755700361 -0.037802646934813277646 0.51294659368075445904 -0.71605691108879798712 0.97538754522700765737 -0.58888887231596898086 -0.58824253363440637266 0.76458395592799177631;-0.010309859843180144839 0.35914893880675818894 0.10348907139496807406 -0.31529892498542377854 1.1432911218041337253 0.25835712974410046661 0.65433873866214564696 1.8162848535570221831 1.0444049934898107512;-3.4744405595991110225 0.2207084927007448294 -1.944913943524637201 -4.9069535119313609783 0.99050789428668706282 -4.7679705649147576807 -0.33851089708304488157 -0.024302742703535464702 4.0307899790431811482;1.1512478159757648655 4.0112069195803199406 1.0257938929764485181 3.5021650220093185624 1.0065000786472459993 3.344412342232762736 2.8224043090319290705 1.2161331449392576154 -4.1618248336953698185;1.4952937825526173565 3.8953110674313529138 3.1633623614019503734 -0.2043997250124952314 0.41986162221310996401 0.016564602845007627557 -3.1646590055938621511 -1.3866391714846875161 -2.879276406674282196;-0.32195091596415548185 0.031478439971329402747 -0.52481629973527732513 -1.3629977752677278069 -1.1701171073749376816 2.336750562622639027 -0.8453824654283421669 -0.71550974634770070359 -1.3776142876792956127;1.1084605299157952452 1.2737302800618144349 -4.6927637899358183304 1.7195797822914908881 -0.71272789321863028178 -2.8668880191741106245 -2.3679212292135622953 0.75250608059390833304 2.2558193409994280465;-0.13309694092649398955 1.4027008579330193516 0.64071741296446815817 -0.17745747869353620252 0.61679411661794547594 -0.70846833884758275701 -3.7144166207960673809 -0.94943131845894546128 -1.7973743463932474462;-3.2989428755217975464 -0.077743040957781728295 -0.85331817770441287241 0.65456305236442235973 -5.334767215219812897 1.3110380051975027982 -0.29934059595535333909 2.840418245983764578 2.7202204883724951934;0.62039963983646972956 -1.3155755022272495047 -1.728161406919317189 4.2912351489819382522 5.6647487634896105391 -2.7482914237608229158 -2.2553495341911093952 1.3096030946969272613 1.4269685608762654461;-0.4725012185270617282 1.0679591845061544575 0.58837181063709154127 0.31391313817178090328 -0.36338726626026562894 0.66261285587092189076 0.49204558613407373135 -0.70582879837791123734 0.59274818920046901116;-0.66304895341920477847 -0.34563511787369494144 -0.60720740930278405134 -0.7136213258167325435 -1.1720015687912892499 0.96695308680130609424 0.61128204268442010161 -0.10520449159077534251 0.42446458044354457018;-1.0954231473862086066 0.030605358149284250802 0.40486172768831041324 0.28138836798572886 0.61440007006915897669 -0.23786294012800096587 0.31560547590735504864 0.54380858739677817582 -0.03171207242931899789;0.17830890574468072352 1.1197727075912904393 -3.175798141670705288 0.39147946889801465975 -0.6465165338969220965 0.059280761736495726777 -0.7572612680748093128 0.22805044932903734134 -1.5446029575638080544];

% Layer 2
b2 = -2.0203958116682811941;
LW2_1 = [4.6236291774257374243 0.44262712549245147864 -1.9455398005183737187 2.4612922609414944475 -1.6491483866091263266 -1.712972325565039533 1.7031730882060083232 -0.89420155358461783646 6.0231618626505492031 8.3868977034494456291 4.1183028750616124114 2.4798406000403421245 5.3032847115575245667 -2.4740385146153158757 -4.0136180543335546744 -4.9437451409502157773 2.5123588177524092124 0.18467932172919276912 2.5263514624367253703 -3.1552791768943198036];

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX
    X = {X};
end

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
    Q = size(X{1},1); % samples/series
else
    Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS
    
    % Input 1
    X{1,ts} = X{1,ts}';
    Xp1 = mapminmax_apply(X{1,ts},x1_step1);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = logsig_apply(repmat(b2,1,Q) + LW2_1*a1);
    
    % Output 1
    Y{1,ts} = a2;
    Y{1,ts} = Y{1,ts}';
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX
    Y = cell2mat(Y);
end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings)
y = bsxfun(@minus,x,settings.xoffset);
y = bsxfun(@times,y,settings.gain);
y = bsxfun(@plus,y,settings.ymin);
end

% Sigmoid Positive Transfer Function
function a = logsig_apply(n,~)
a = 1 ./ (1 + exp(-n));
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n,~)
a = 2 ./ (1 + exp(-2*n)) - 1;
end
