function [Y,Xf,Af] = SS10(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Auto-generated by MATLAB, 01-Mar-2019 14:46:07.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timesteps
%   Each X{1,ts} = Qx10 matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = Qx1 matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1.xoffset = [0.00279595827039172;-76.44;0;0.198515243345873;1.1657;0;1.61538461538462;0;25765000000;0.484122918275927];
x1_step1.gain = [6.05469648797198;0.0231642344220524;0.0588456417471217;1.00064574972844;1.51941046873813;4.00249121426347;0.196969696969696;0.369863360727655;7.26043023634097e-12;0.0144813358040795];
x1_step1.ymin = -1;

% Layer 1
b1 = [2.3222606500988574041;1.7302067033710974986;1.8524021177515026526;1.0614788395911585184;1.9676714613539945109;1.1919957380621553078;0.53374039626555536131;-1.2300310588687359825;-0.1889952527775478619;1.089652941146358911;0.21647327805489627317;-0.074849485277371050063;1.8412899458804292685;-0.017827954245553577495;2.5830599090882304658;1.9236376103599803766;3.6543503181088539122;-1.5744676509775297202;-1.204309309589978616;-2.5341013012583610831];
IW1_1 = [-0.84358880805621527799 -0.39789308201936912646 -0.53933423994090168296 0.53537964185309394605 -0.35953230787051160267 0.23539324823776841544 -0.17179286941730947946 0.32191381270977975637 0.49290954098669848005 -0.37995617133296366585;-0.35431764239325896915 0.7895494993517322424 -0.26089535206225139552 -0.12879928890485753401 -0.53603244636715707827 0.69533350321149234308 0.52582826633337886868 -1.0374749566694012604 -0.51174929787560607952 -0.49698557598866655027;-0.41682412587547923444 1.0632974123076905926 -0.011266181667350372991 0.14958571345042684375 -0.33171761565696161744 0.13227898168897736508 -0.38679657110160198252 -0.32146729908999427394 0.73761342225584758392 0.6006389038079720244;-0.87799739471439774974 -0.32500724041009998455 -1.4698594108052451812 2.0443797862005328447 0.42386149795354755021 0.45362337060939961209 -0.70589449805551673922 0.82502991588117402522 -1.8546288875007723718 0.92263066814183658515;-0.46363546657408194474 -0.38021121455242795628 0.13542352831393117407 -0.52660723782643070745 -0.34919998765903409454 1.1832898076614604133 -0.61927089839753834966 1.7145549122736116754 0.42032050057442904567 0.96048230619170837929;-0.85516687919815814745 0.10784654173539727495 1.3026620530767598627 -0.64368893945888516761 0.019405878044398510579 -0.017382795146299145905 0.65172192214203350513 0.80014257627792439997 -0.13896518499532531377 0.26480929114599244256;-1.0910825032224769071 -0.83174849434751518817 1.3808082596886623872 0.085390839378756369649 -1.0188407283379474766 -1.4632387611501358471 0.33113321208025303655 -1.0131285791374216032 -0.85377473359350286586 -0.48993963450027377959;-1.6450512011407105728 -0.24472540358692812523 1.2897291089813180953 4.5525222036121668623 0.15402586240771901083 -1.1271338098251650894 0.135611335644519021 -1.9892241662395915291 0.47503330626160561456 0.98028252994894149452;0.94092699202887486454 0.013379710501100428033 0.054977810904305264572 -0.51511627748980970409 -0.73152919025700247069 -0.66395065326115476623 -1.411359152882235346 0.22918914222446026829 0.50019696528494861365 1.1426768375126497013;1.2641648992746108426 1.1199087039917996478 -1.4009507940892713673 -0.37726103038188513183 1.7164402355146373136 2.1861911862264977735 -1.1769470905217604972 2.7265860310374701037 1.3248200505657694581 0.92025761068288347566;1.3257520499776209721 2.6300939603699107217 -2.038123435396809402 -0.15958433115371595257 -0.35354917906785227055 -0.92008073129186629391 0.58090110263297445314 1.0032628630982103335 2.4944693284010348577 3.4797307514791970817;-1.6707350448566977708 -0.54725016160511474883 -0.80399880537573453765 -1.8342249457773742716 2.3028979554702431187 -0.23593000815371381607 0.16209062704747631556 1.7979507294186454214 2.1531985762820586849 1.1248958586076849286;0.67633920060201402347 -1.3472385349553497313 -0.06913430641742482341 2.0106751974825902707 -0.24444664258250056732 -0.44615877061811620719 -0.1908301689413053337 2.7114196246856185901 -1.1442572604431662242 1.2889426279643978468;1.0822982796996591937 -0.87636647646762477759 -1.0593056149767334784 -4.8428723463633218671 0.65513409890159235438 0.39267128989572852582 0.33201340720805488926 1.0203403363960146244 0.40648988433038213408 -0.023493101058008229037;2.6132388034995641668 1.845888948656749351 -0.31130994772366576973 -2.0957879717381922013 0.25008360948607843977 -0.23856162147568726883 0.3210557180351486517 -3.3110878655378499502 0.41662321824575587748 -1.0200919501523992849;2.1944824044374398042 0.96076314155755693225 0.12467983850834402082 -2.8124976688979823614 1.0162043355434375869 1.2848304745967886742 0.15220317994284232599 -0.69688769294423558165 -0.35470082205924968743 -0.40895064206326819933;2.6526458338746157217 -0.068389168754300400099 2.0883676740012750983 0.99468891530338054974 -2.2752155794505255493 -0.065441807631514498089 0.038886337081728623855 -1.0791069726140711804 1.9458664585158873539 -0.059282551884885202609;-0.61152343971701461633 -1.1551449298966429691 0.40928406776417175506 0.12767168533159631294 -0.53051472697127799449 0.78700326538132203691 0.29366601822462867766 0.33522749590480915849 0.7596790074280291849 0.13444958338533760656;-0.94206690490259270554 -0.97970996306686863875 -1.3056795490386983172 0.08119295817242100366 0.71807342149714603607 0.64703471636512921439 -0.58720047604427672017 -1.109819774493750355 0.9998280350458145227 -0.20458266752108808517;-2.4995763116515474778 3.5942966516255965281 -0.62926766092163721744 -4.2569215245181588614 -0.37580893208213733692 1.7263014648064030077 1.270747751004711823 -2.1921326187787522066 -0.25235767199828057494 -0.044657496723100389979];

% Layer 2
b2 = -0.6818849088866895114;
LW2_1 = [-1.0910934484526340071 -0.897303071124226026 -0.89882904818452813434 -2.2236733462583933019 2.3029076763813542961 1.3468868982481894125 2.1455556679164713429 4.6824254459059337918 -0.98475022710915083302 -3.6970641310376120003 4.0862427977236617238 3.2605730051064134578 -2.5632127567600910822 -3.568885064939795182 -3.6191354799940791409 -2.6681845467674691896 4.0874236263266778835 1.1963904846403805582 -1.3186746504317066186 5.0432717047437947144];

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