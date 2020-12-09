function [Y,Xf,Af] = AM6(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 05-Mar-2019 10:56:57.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = Qx6 matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = Qx1 matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [437.535;0;0;1.61538461538462;0;25765000000];
x1_step1.gain = [0.000699024104098669;0.0588456417471217;4.00249121426347;0.196969696969696;0.369863360727655;7.26043023634097e-12];
x1_step1.ymin = -1;

% Layer 1
b1 = [2.1903958901717093255;0.9613753140001382036;-0.61554586860349069788;-2.229508483097853766;1.345523630900154366;1.1795336636957114429;-0.20137634612038982085;-0.82929986819564671663;-0.54947257544484440217;0.031123966075344171311;-1.4872891356104300797;1.1344821558345774548;1.07601276101077592;1.517230100802109849;0.43721329081113768922;-1.4074192964295033637;-2.0225237008138559069;2.530643523148597307;1.6878311195475588224;2.6201173919789475519];
IW1_1 = [-1.4110028853426483941 -1.529366003375027816 -0.054479753811837290656 -0.9662489610851939803 0.51827631673444163329 -0.3462581585326208744;-1.5312787943634118548 -0.06283865586533698977 -1.9875051963031531432 2.0801345232556340825 1.863031383279198927 -0.47822045069484869773;1.1452791237701525073 -0.60992324372465933635 -1.0594230641402258009 -2.5107033394330380283 1.2975958746470064309 -0.92111535691086943167;0.27778394194165739739 1.1052413071681759238 0.93906948235554554838 -0.55635397869206038024 -0.10387809553457719169 0.27299938555597674794;-0.93403314514725788165 -0.37276335723481857087 -1.0014883902323150622 0.27122692855178026639 -1.1150112382872008343 -1.4382456544693325018;-0.74880569457435752767 -1.8658234074292250337 -1.6876203060266679046 -0.8871960205371810515 0.087615693372519690141 -0.58217381818869595733;3.3322726245564040504 0.19617643177154669987 0.6341885045755176753 2.546807271261211536 -1.0569636139111735496 0.16436647113732816283;1.1544040114898244109 1.4011398425564220993 -0.3981931489969191551 1.1054594617867257167 -0.99925316846822409556 0.269847484303364471;2.1515341387647266558 -1.0648284968696235531 -1.2008753191331675847 -2.6100455765445027545 1.5314077657995506243 -0.44967051566293503306;0.98168236349665149998 0.1146296285564810391 -4.3984906125137852584 1.0651864286610459587 -0.056815063130261918289 2.2602492179923934223;-2.0276327439597205959 -1.0504218678438450585 -0.35540060897591962963 -0.10047944886802508135 2.7133379428752255613 1.1506103000073095721;1.1218241946722666835 -0.55110641878003829852 0.14878074881164113363 -2.0216288058713627329 -0.91341599959859087754 -1.0707353473557073009;0.041059792402215238016 -0.6635639515488012119 -1.5024668082870906716 1.4869058418477172356 2.3226511604984212411 -1.6686056005483427267;1.9500711403827628576 2.0527205485929700401 -0.07914613308511894707 0.97745921408010927323 1.3172312599806768052 -1.1680752297212138036;-1.5182577869906064283 0.14534946291670186591 -0.15097685418736372931 -1.9784810242953552173 -0.25291328541186791634 -0.35130568931494893237;0.17656976946892649627 1.0479306346411960682 0.8823331659640717417 1.179255442117899122 -0.43474719640309844593 -0.64206271282596238947;-2.2257870662096994607 1.578155247222138069 -1.329858488833143948 1.2933823064354195154 2.6293447301981820452 -0.60945647256463220121;0.39483469657050029866 3.8894445865469977619 -0.39766546834241295327 0.093137709148643832435 0.94096094522636275492 -1.5311726334825559448;1.2829395257199309732 -0.39528466205097834152 -0.22715828722634717751 -1.5611885030712393529 -0.543334310459203218 -1.5994429464026280741;-0.42990066583149094681 -0.28193954055502479239 -0.044912494701712199485 -0.40068934036776959751 -0.63349730331306908226 1.3936470961723774753];

% Layer 2
b2 = -1.6638391515627655171;
LW2_1 = [-0.66458947055250816582 1.7877757195384302857 2.4898492607524742581 0.04806671959070907274 0.024968478543408133274 0.7894703286133326614 3.6120834014912905907 0.91819632380137283789 2.5644442184227043136 -3.2250188621026536495 -1.9542606188192368499 -1.5659606904643694758 2.3288834024600797434 1.676735846519080475 -1.6751604288455717029 -0.12325149526909719155 -2.5877732317397490469 3.1547789528899552458 -2.4660444294255556841 -0.72279304584476256057];

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