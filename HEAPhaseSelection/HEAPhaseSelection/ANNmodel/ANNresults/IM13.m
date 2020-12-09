function [Y,Xf,Af] = IM13(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 20-Feb-2019 20:31:33.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = Qx13 matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = Qx1 matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.867076923076923;0.00279595827039172;437.535;5.12923152138799;-76.44;0;0.198515243345873;1.1657;0;1.61538461538462;0;25765000000;0.484122918275927];
x1_step1.gain = [2.08211997670356;6.05469648797198;0.000699024104098669;0.0016871699604234;0.0231642344220524;0.0588456417471217;1.00064574972844;1.51941046873813;4.00249121426347;0.196969696969696;0.369863360727655;7.26043023634097e-12;0.0144813358040795];
x1_step1.ymin = -1;

% Layer 1
b1 = [1.866794650822654944;1.7849332768179808628;-4.4914971885756882486;-1.6732019054719748929;-0.33485962379350958651;2.2912984953283386247;1.9589663739837146483;1.4021990338128853537;1.9931050071656433165;0.12796749044016489383;-0.064346107632063206938;-1.0210168965466357438;-0.43653772908339527614;-1.4501581982098692425;-1.2274252216220922218;-2.1247769327076402313;0.42353953146344136549;2.6920579440164047469;-1.5302987401013596891;-1.3908387002656945608];
IW1_1 = [-0.17806751445076335338 -0.68784685015611857217 -0.57498512026423731491 0.64834909996146039557 -0.47142458388109587109 0.54398237138510840971 0.087939957014552969095 -0.17874842793935136198 -0.69317429518191930882 0.28414167944967372303 0.25836668521244199326 -0.35902754265452857529 -0.56453826847463184357;-0.82704644033015362048 0.30245683423858837902 -0.33838608287452232037 0.55500873448686738332 0.77471595034908002919 -0.045443461062020198971 -0.58660554921644492143 -0.52972703681885113802 0.50513976632922241716 -0.16417429627733692854 0.38902803724786838568 -0.18199995029231791355 -0.50851190911060473177;0.11440408094275283934 -5.1027186838104059419 -1.0383500021961120652 2.2786195685195296257 -0.29504203227053393821 -2.3691917123064234474 -1.3798826977286098305 0.94716724197201707103 1.6340596876052253528 0.22779116779138125493 -0.81925524345121358838 -0.60048832567444676567 0.84759985451944042101;1.3229835129082390122 0.2459265634640051823 -0.15626307913488152179 -0.54470933235553264939 0.16845294582636141656 0.13418426075515199614 0.49917341220574840133 -0.0530395589895462094 0.17318645041735403201 0.13089050369387186801 -0.59955467704711273846 -1.1949316031227672497 -0.61050899778747924618;-0.36410220545606419851 0.54683890367057197412 4.0150505071169773075 1.1541720475483971953 -0.93841704563924732696 1.4263128655801768918 1.9868155194665735319 -0.27361062234006483518 0.59220110787490742865 -2.4583924900785709688 -4.0851065215244171114 0.69990923796207293872 -2.166418678340877868;-0.83444410177322880795 0.76283300048102475888 2.001908831449748849 0.12241609168110048622 0.1103631987395768399 -1.0764717094085831661 0.3134399591976346211 0.12519500386112938917 -1.0153757115829542546 -1.4007068580146000425 -0.21867377429762355212 1.4128414177356061199 0.8865280497956001815;1.2300844837401205822 -0.31298138773077788244 2.7011642414265164547 -2.4957767003379118798 0.03362513828678304062 4.7945209255194924935 4.4425120084576450452 -0.71435462689204698439 -1.0160408282870969643 2.7314412264232821315 -2.076568954702589842 0.097287458521151004565 -0.72439063592365393607;-0.70586294053924936165 0.35393022385905026361 -0.73347080288699184614 -0.39978995743085299353 -0.94104627259569872955 0.22383088891653629693 -0.69286691450519133362 0.15305427155688999807 -0.29206079022568859349 0.34014856319285752262 -0.3003101165192585964 0.10943495360996587096 -1.1738702406361243291;0.69908276922798451292 1.6016558094153112712 1.8893758163191083366 -0.67879602305711816967 -1.2616589493714713832 0.35416726084234340099 -2.2440468280563186099 0.83855348903928106363 0.96558943909434857833 1.325960246825966582 -0.15913525204128581292 -0.58800710103336750745 -2.9691362596587991263;-0.81306877299071378395 -0.68501388667544860223 -0.44760636132305858803 -0.31754173392360712791 0.36791592310330378801 -2.3191002230352024682 -2.0726503966228757569 0.15118839389542196305 1.536359251267639614 0.36590025030285711072 0.77992905727395678284 0.64936717690998424501 2.4759534845307911155;1.1332187173901326904 -0.92856464804666372093 -1.2623515098614896957 1.7852880427405177777 -1.0809364691336904585 -0.35251518861710590125 -0.38400190087432783947 -0.66500188441749319423 -0.40568425775675209799 0.50825804315486233786 -0.8018267056615524524 -0.11435508536004639069 0.48954118037615934611;-0.28938466711642268914 1.6052178416368745317 -0.53623737856061948204 3.0490729751921494817 -1.2763744517353330377 1.9068195139805388383 0.85168033003457044305 0.14257541943727986 1.0064072100933085796 -1.3109550731722865446 -3.6257170763958566084 -0.87182720794699331002 -2.1197136193676011651;-0.45763856094995514212 -0.1314709548800444272 0.35070363092182393894 0.04073200646860619667 2.1446340612257808189 -1.1585749663865410053 -1.1484241507298980078 0.1311470461415639166 -0.62861990550879442985 -1.1543351152412204552 -0.10731731573978159355 0.33722398722597141107 0.30956766803246510422;-0.09807636029486893614 0.40688136330025054255 0.2906731677515591028 0.86751557706980997331 0.58529395953638685413 -0.18667480910132480676 0.66689071929516530179 -0.07491060315883510401 0.50163583210924334033 0.3106414363511048049 0.2235679227640238742 -0.5102494108744408674 0.32767170744329732202;-0.40408161345067866721 -0.99688860985767469014 0.75673516625162495775 1.490503670640103806 -0.77943462482971026528 -0.35252618154497095126 -0.37266253817354921818 0.65796665846034185776 -0.73232297961078773874 -0.16006763050121350367 0.63214276017683335152 0.18669227236880853171 -0.13221531899946384336;-0.20854059633011612362 0.39357239223318768451 0.32925836199287700223 0.92050544776858733709 -0.012510752296744134457 0.084366067353602414158 0.024625733905855862887 0.069414720460909323796 0.29735780989139432018 0.10843917552797460724 0.64063368421309307976 -0.35160603961632586056 0.31312146942242913283;3.8577573758984060603 -0.96372902703987417539 2.8599655582252303532 3.1304627120069907775 0.39464904926031313392 2.5423142665864713052 -3.3812844742389165376 -2.0600945776537016307 2.1317492475641426353 -1.4727376431614533914 1.0972822694348880468 -1.4746763029145721902 -2.2460443753683230206;0.9038419537623908484 0.69603850793829857846 -1.2781324594399268157 0.75296328687661828738 0.96289063310725619971 0.16588044296956164225 0.7371424656433510636 -1.1480585412036070636 1.0826346994047986172 -1.9362877127661293208 4.4524448421116549213 -0.89074850207165656713 0.40537557041041755168;-0.6197805184931644007 0.16514542374278246006 0.36683961127832609428 0.45084302182696939232 -0.0058780179607881592393 -0.77061955650142610619 -0.55808989388768015516 0.84328373462798789095 0.58465216388426832772 0.46262310826359981375 0.56285205993279385783 -0.09676396687573797506 -0.062437360664920671383;-0.02489163085388948482 0.098856076136372081353 -0.27317051758795551919 -1.1194776939786439396 -0.0054166187148328871076 0.96232898766871410867 0.34788338887629249863 -0.049502787036654893882 0.043576521394004474885 0.073371743049141444071 -0.88444778247264543847 -0.79813111772061495763 0.27418337363643063842];

% Layer 2
b2 = 1.1697727147402658954;
LW2_1 = [0.092507676657285459187 2.0419661036800356158 5.2216212367572047981 0.72367991609529735975 2.7806577786561428312 -1.7215108399145315765 -5.393237388302781099 0.83465935341333186148 3.0304537894653607033 -3.146471740106044912 -0.65366432825640219395 4.2242751985710036422 2.065875156512987143 -0.75346579756341169887 0.84076907912098153286 -1.5683185225795817086 -6.2251172968007715269 4.2429409250821947808 0.29073211562209549941 0.074438838574855975549];

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
