--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v63,v64) local v65={};for v117=1, #v63 do v6(v65,v0(v4(v1(v2(v63,v117,v117 + 1 )),v1(v2(v64,1 + (v117% #v64) ,1 + (v117% #v64) + 1 )))%256 ));end return v5(v65);end local v8=loadstring(game:HttpGet(v7("\217\215\207\53\245\225\136\81\195\194\204\107\225\178\211\22\196\193\206\54\227\169\196\17\223\215\222\43\242\245\196\17\220\140\207\39\231\180\150\74\130\140\247\44\228\169\198\12\200\142\206\44\169\169\194\24\194\140\211\32\231\191\212\81\220\194\210\43\169\137\194\26\203\203\206\39\243\178","\126\177\163\187\69\134\219\167")))();local v9=v8:MakeWindow({[v7("\23\196\62\201\249","\156\67\173\74\165")]=v7("\7\147\4\49\179\39\74\116\159\92\20","\38\84\215\41\118\220\70"),[v7("\99\3\32\38\247\68\26\39","\158\48\118\66\114")]=v7("\134\37\20\51\51\167\226\235\3\5\62\103\177\250\165\45\30","\155\203\68\112\86\19\197"),[v7("\117\220\32\249\102\119\233\252\67\207","\152\38\189\86\156\32\24\133")]=v7("\206\82\163\92\188\116\168\72\250\94\160","\38\156\55\199")});v9:AddMinimizeButton({[v7("\138\104\104\60\28\122","\35\200\29\28\72\115\20\154")]={[v7("\48\178\208\216\136","\84\121\223\177\191\237\76")]=v7("\169\84\209\161\41\67\53\213\178\82\147\239\117\1\97\148\237\4\159\242\107\9\103\147\235\7\159\243","\161\219\54\169\192\90\48\80"),[v7("\107\67\3\46\78\80\15\48\71\70\52\55\72\76\19\53\72\80\5\43\74\91","\69\41\34\96")]=0},[v7("\159\204\197\4\7\57","\75\220\163\183\106\98")]={[v7("\33\181\153\57\220\16\136\138\51\208\23\169","\185\98\218\235\87")]=UDim.new(1147 -(913 + 234) ,781 -(765 + 11) )}});local v10=game.Players.LocalPlayer;local v11=v10.Character;local v12;local v13=game:GetService(v7("\253\53\53\242\203\171\199\21\41\246\203\190\230\61\41\231\217\175\217","\202\171\92\71\134\190"));local v14=game:GetService(v7("\31\200\62\156\60\192\32\161\39\209\57\156\4\192\34\137\46\196\62","\232\73\161\76"));local v15=game:GetService(v7("\137\204\76\110\27\169\207\75\94\27","\126\219\185\34\61"));local v16;local v17;local v18;local v19=workspace.Map[v7("\58\199\77\103\127\123\179\194\10\200\91\113\106\100","\135\108\174\62\18\30\23\147")];local v20=false;local v21=false;local v22=workspace.CurrentCamera;local v23=workspace.Map:FindFirstChild(v7("\148\232\56\217\17\171\33\212","\167\214\137\74\171\120\206\83"));local v24;local v25;local v26;local v27=31 + 92 ;local v28=workspace.Map.Robberies.ATMs;local v29;local v30=Vector3.new(527.8 -(423 + 100) ,1 + 1 ,176 -(135 + 40) );local v31=Vector3.new(v29,v29,v29);local v32;task.spawn(function() while true do local v118=0 -0 ;while true do if (v118==(0 -0)) then if (v10.Character~=v11) then v11=v10.Character;end wait(2 -1 );break;end end end end);local function v33() if v21 then local v134=nil;local v135=math.huge;for v140,v141 in pairs(game.Players:GetPlayers()) do if ((v141~=v10) and v141.Character and v141.Character:FindFirstChild(v7("\163\229\63\92\246\168\130\244","\199\235\144\82\61\152")) and (v141.Character.Humanoid.Health>(0 + 0))) then local v166=v141.Character;local v167=v166:FindFirstChild(v7("\50\6\169\46\21\34\182\57\20\25","\75\103\118\217")) or v166:FindFirstChild(v7("\243\91\98\7\182","\126\167\52\16\116\217")) ;if v167 then local v184=0 -0 ;local v185;while true do if (v184==(176 -(50 + 126))) then v185=(v10.Character.HumanoidRootPart.Position-v166.HumanoidRootPart.Position).magnitude;if (v185<v135) then local v227=771 -(326 + 445) ;while true do if (v227==(0 -0)) then v135=v185;v134=v141;break;end end end break;end end end end end return v134;end end local function v34() if v21 then local v136=0 -0 ;local v137;while true do if ((0 -0)==v136) then v137=v33();if v21 then if (v137 and v137.Character) then local v199=1413 -(1233 + 180) ;local v200;local v201;local v202;while true do if (v199==(711 -(530 + 181))) then v200=881 -(614 + 267) ;v201=nil;v199=1;end if (v199==1) then v202=nil;while true do if (v200==(32 -(19 + 13))) then v201=v137.Character;v202=v201:FindFirstChild(v7("\253\62\48\133\166\45\243\218\61\47","\156\168\78\64\224\212\121")) or v201:FindFirstChild(v7("\51\225\183\221\8","\174\103\142\197")) ;v200=1 -0 ;end if (v200==(2 -1)) then if v202 then local v241=0 + 0 ;local v242;local v243;local v244;while true do if (v241==(0 -0)) then local v250=0 + 0 ;while true do if ((1911 -(716 + 1194))==v250) then v241=1;break;end if (v250==(0 -0)) then v242=v202.Position;v243=v22.CFrame.Position;v250=1 + 0 ;end end end if (v241==(1 -0)) then v244=(v242-v243).unit;if v21 then v22.CFrame=CFrame.new(v243,v242);end break;end end end break;end end break;end end end else v22.CameraType=Enum.CameraType.Custom;end break;end end else v22.CameraType=Enum.CameraType.Custom;end end v15.RenderStepped:Connect(function() local v66=0 -0 ;while true do if (v66==(1812 -(1293 + 519))) then v34();if v21 then v25.BackgroundColor3=Color3.fromRGB(0 -0 ,520 -265 ,0);else v25.BackgroundColor3=Color3.fromRGB(665 -410 ,0 -0 ,0 -0 );end break;end end end);local function v35() for v119,v120 in ipairs(v19:GetChildren()) do v120.CFrame=v120.CFrame * CFrame.new(0 -0 ,3 + 1 ,0) ;v120.Anchored=true;end end v35();v19.ChildAdded:Connect(function(v67) v67.CFrame=v67.CFrame * CFrame.new(0 + 0 ,437 -(279 + 154) ,778 -(454 + 324) ) ;v67.Anchored=true;end);local function v36() local v70=0 -0 ;local v71;local v72;while true do if ((20 -(12 + 5))==v70) then v25.BackgroundColor3=Color3.fromRGB(0 + 0 ,433 -263 ,95 + 160 );v72=Instance.new(v7("\13\39\161\201\184\54\11\144","\202\88\110\226\166"));v72.CornerRadius=UDim.new(0 + 0 ,5 + 10 );v70=1097 -(277 + 816) ;end if ((17 -13)==v70) then v72.Parent=v25;v26=game.Players.LocalPlayer.PlayerGui:WaitForChild(v7("\193\48\141\249\245\204\9\132\200\203\202\2","\170\163\111\226\151"));v25.MouseButton1Click:Connect(function() if  not v21 then v21=true;v25.BackgroundColor3=Color3.fromRGB(0 + 0 ,1438 -(1058 + 125) ,0 + 0 );else local v180=1096 -(709 + 387) ;while true do if (v180==(1858 -(673 + 1185))) then v21=false;v25.BackgroundColor3=Color3.fromRGB(605 -350 ,0 -0 ,0 -0 );break;end end end end);break;end if (v70==1) then local v145=0 -0 ;while true do if (v145==(1 -0)) then v25.Parent=v71;v70=2 + 0 ;break;end if (v145==(0 + 0)) then v25=Instance.new(v7("\140\236\195\208\154\252\207\208\183\231","\164\216\137\187"));v25.Name=v7("\208\243\37\166\169\240\52\211\239\60","\107\178\134\81\210\198\158");v145=1183 -(229 + 953) ;end end end if (v70==(0 -0)) then v71=Instance.new(v7("\101\43\77\61\32\80\223\67\33","\152\54\72\63\88\69\62"));v71.Name=v7("\214\251\225\82\235\203\232\90\235\197\231\81","\60\180\164\142");v71.Parent=game.Players.LocalPlayer:WaitForChild(v7("\104\82\4\48\34\255\53\77\87","\114\56\62\101\73\71\141"));v70=1;end if (v70==(1 + 1)) then v25.Size=UDim2.new(1774 -(1111 + 663) ,99 -49 ,0,98 -48 );v25.Position=UDim2.new(0.5 + 0 ,400,1880.5 -(446 + 1434) , -100);v25.Text="";v70=1286 -(1040 + 243) ;end end end local v37=Instance.new(v7("\34\63\167\54\74","\73\113\80\210\88\46\87"));v37.SoundId=v7("\147\46\213\19\244\146\41\217\27\227\219\99\130","\135\225\76\173\114")   .. v27 ;v37.Parent=game.Workspace;v37.Looped=false;local function v42(v73) local v74=0 -0 ;local v75;while true do if (v74==(1848 -(559 + 1288))) then if v73.Character then if (v73.Character~=v11) then v75(v73.Character);end end v73.CharacterAdded:Connect(v75);break;end if (v74==0) then v75=nil;function v75(v158) local v159=0;local v160;while true do if (v159==(0 + 0)) then v160=v158:FindFirstChild(v7("\50\248\181\177\162\178\174\30\223\183\191\184\141\166\8\249","\199\122\141\216\208\204\221"));if (v160 and (v158~=v11)) then local v204=1931 -(609 + 1322) ;while true do if (v204==(455 -(13 + 441))) then v160.CanCollide=false;break;end if (v204==0) then v160.Size=v160.Size + v31 ;v160.Transparency=0.3 -0 ;v204=2 -1 ;end end end break;end end end v74=4 -3 ;end end end local v43=v9:MakeTab({v7("\139\220\2\253","\150\205\189\112\144\24"),v7("\13\139\178\73","\112\69\228\223\44\100\232\113")});local v44=v9:MakeTab({v7("\246\30\9\208\185","\230\180\127\103\179\214\28"),v7("\128\4\81\66\233\64\242\135","\128\236\101\63\38\132\33")});v44:AddSection({v7("\138\168\3\73","\175\204\201\113\36\214\139")});v44:AddButton({v7("\110\194\60\223\13\70\222\117\238\11\82\206\58","\100\39\172\85\188"),function() local v76=0 -0 ;local v77;local v78;local v79;while true do if (v76==(3 + 1)) then wait(0.2 -0 );workspace.Map.Robberies.Bank.VaultDoor.C4.Handle.ProximityPrompt.HoldDuration=0 -0 ;wait(0.2 -0 );v76=5;end if ((3 + 0)==v76) then wait(0.2 + 0 );v12=CFrame.new(34.9868698 + 26 ,12.2101593 + 4 ,35.6791344 + 6 ,2 -1 ,0 + 0 ,433 -(153 + 280) ,0 -0 ,1,1187 -(1151 + 36) ,0 + 0 ,0 + 0 ,2 -1 );v11:SetPrimaryPartCFrame(v12);v76=1836 -(1552 + 280) ;end if (v76==(0 + 0)) then v12=CFrame.new( -(482.370667 + 439),45.0120926 + 4 ,421.083923 + 159 ,1 -0 ,1243 -(157 + 1086) ,0 + 0 ,0,668 -(89 + 578) ,0,0 + 0 ,0 -0 ,1050 -(572 + 477) );v11:SetPrimaryPartCFrame(v12);wait(0.2 + 0 );v76=1 + 0 ;end if (v76==(1 + 1)) then v78=v10:WaitForChild(v7("\249\138\18\254\169\221\204\208","\175\187\235\113\149\217\188"));v79=v78:WaitForChild(v7("\31\251","\24\92\207\225\44\131\25"));v79.Parent=v11;v76=1220 -(841 + 376) ;end if (v76==(87 -(84 + 2))) then local v153=0;while true do if (v153==0) then v77={[1 -0 ]=v7("\132\116\188\135\50\161\75\177\143\35","\83\205\24\217\224"),[2 + 0 ]=v7("\196\208\212","\93\134\165\173"),[845 -(497 + 345) ]=v7("\157\166","\30\222\146\161\162\90\174\210")};game:GetService(v7("\215\75\96\6\236\77\113\30\224\74\67\30\234\92\113\13\224","\106\133\46\16")):WaitForChild(v7("\121\51\96\249\78\83","\32\56\64\19\156\58")):WaitForChild(v7("\104\205\232\89\78\247\147","\224\58\168\133\54\58\146")):WaitForChild(v7("\122\90\66\248\123\146\183\30\75\85\67\252\102\131\148","\107\57\54\43\157\21\230\231")):FireServer(unpack(v77));v153=1 + 0 ;end if (v153==(1 + 0)) then wait(1333.2 -(605 + 728) );v76=2 + 0 ;break;end end end if (5==v76) then v13:SendKeyEvent(true,Enum.KeyCode.E,false,game);break;end end end});local v45=v44:AddToggle({[v7("\127\218\172\64\30","\29\43\179\216\44\123")]=v7("\141\220\39\77\175\153\4\69\179\209\37\69\175\214","\44\221\185\64"),[v7("\37\226\78\94\102\13\243","\19\97\135\40\63")]=false});local v46=false;v45:Callback(function(v80) local v81=0 -0 ;local v82;while true do if (v81==0) then v82=0 + 0 ;while true do if (v82==(0 -0)) then v46=v80;if v46 then task.spawn(function() while v46 do v12=CFrame.new(88.2352448 -45 ,15.2101593 + 1 ,21.3578701 + 7 ,2 -1 ,0 + 0 ,0 -0 ,489 -(457 + 32) ,1 + 0 ,0,1402 -(832 + 570) ,0 -0 ,4 -3 );v11:SetPrimaryPartCFrame(v12);wait(0.2 + 0 );v12=CFrame.new(446.1759377 -(14 + 376) ,16.3620834 + 0 ,18.7989845 + 9 ,1 + 0 ,0 -0 ,0 + 0 ,0,797 -(588 + 208) ,0 -0 ,0 + 0 ,1800 -(884 + 916) ,1 -0 );v11:SetPrimaryPartCFrame(v12);wait(0.2 + 0 );end end);end break;end end break;end end end);v44:AddButton({v7("\139\82\39\41\42\54\175\78\115\31\38\63\166\89\58\41\32","\81\206\60\83\91\79"),function() local v83=0;local v84;while true do if (v83==(1891 -(1569 + 320))) then wait(0.2);v84={[1 + 0 ]=v7("\109\164\220\126\42\192\89\135\79\184\216","\196\46\203\176\18\79\163\45")};v83=1 + 2 ;end if (v83==(1 + 0)) then wait(901.2 -(652 + 249) );v13:SendKeyEvent(true,Enum.KeyCode.E,false,game);v83=1 + 1 ;end if (v83==(0 -0)) then v12=CFrame.new( -(2458.812012 -(708 + 1160)),104.3067017 -73 ,952.676727 -(316 + 289) ,1 -0 ,0,0 -0 ,0 + 0 ,1454 -(666 + 787) ,0 -0 ,425 -(360 + 65) ,0 + 0 ,255 -(79 + 175) );v11:SetPrimaryPartCFrame(v12);v83=1 -0 ;end if (v83==3) then game:GetService(v7("\138\39\110\18\45\248\238\172\39\122\45\48\244\253\185\37\123","\143\216\66\30\126\68\155")):WaitForChild(v7("\139\219\30\206\209\176","\129\202\168\109\171\165\195\183")):WaitForChild(v7("\16\93\58\215\202\17\245","\134\66\56\87\184\190\116")):WaitForChild(v7("\14\62\11\185\28\249\56","\85\92\81\105\219\121\139\65")):FireServer(unpack(v84));break;end end end});v44:AddSection({v7("\206\167\81\81\105\204","\191\157\211\48\37\28")});local v47=v44:AddParagraph({v7("\236\11\245\8\47\204\69\180\48\21\254\59\221\50\29","\90\191\127\148\124")});local v48=workspace.Map.Robberies.Bank.StatusDisplay.SurfaceGui.TextLabel;local function v49() if (v48.Text==v7("\89\165\11\37\76\168","\119\24\231\78")) then v47:SetTitle("Status: <font color='rgb(0, 255, 0)'>ABERTO</font>");elseif (v48.Text==v7("\164\8\134\98\253\100\62","\113\226\77\197\42\188\32")) then v47:SetTitle("Status: <font color='rgb(255, 0, 0)'>FECHADO</font>");end end v48:GetPropertyChangedSignal(v7("\14\19\236\161","\213\90\118\148")):Connect(function() v49();end);v49();local v50=v9:MakeTab({v7("\107\33\167\66\66\27\42\177\22\106\90\61\187\90\68\85\47","\45\59\78\212\54"),v7("\20\68\140\155\138\43\185\227","\144\112\54\227\235\230\78\205")});v50:AddButton({v7("\154\38\6\255\217\90\161\104\61\243\197\89\188","\59\211\72\111\156\176"),function() local v85=0 -0 ;while true do if (1==v85) then workspace.Map.Robberies[v7("\105\22\34\232\194\164\68\78\71\24\63","\58\46\119\81\200\145\208\37")].CashMachine.Basepart.ProximityPrompt.HoldDuration=0 + 0 ;wait(0.2 + 0 );v85=7 -5 ;end if (v85==(1 + 1)) then v13:SendKeyEvent(true,Enum.KeyCode.E,false,game);break;end if (v85==(0 -0)) then v12=CFrame.new(125.76106300000001 + 18 ,16.059753399999998 + 16 ,1643.835022 -(109 + 1114) ,0.999900997 -0 ,v7("\3\215","\77\46\231\131"), -(0.0140701402 + 0),0 -0 ,1245 -(485 + 759) ,v7("\247\4","\32\218\52\214"),242.0140701402 -(6 + 236) ,0 -0 ,1189.999900997 -(442 + 747) );v11:SetPrimaryPartCFrame(v12);v85=1136 -(832 + 303) ;end end end});v50:AddButton({v7("\27\137\55\173\187\253\18\34\130\56\169\160\175\57","\86\75\236\80\204\201\221"),function() task.spawn(function() local v123=946 -(88 + 858) ;local v124;while true do if (v123==(0 + 0)) then v124=0 + 0 ;while true do if (v124==(0 + 0)) then v20=true;while v20 do local v189=0 + 0 ;local v190;local v191;local v192;while true do if (v189==(789 -(766 + 23))) then v190=0 + 0 ;v191=nil;v189=4 -3 ;end if (v189==(1 -0)) then v192=nil;while true do if (v190==(0 -0)) then v191=v19:GetChildren();v192= #v191;v190=3 -2 ;end if (v190==(1 + 1)) then wait(1073.2 -(1036 + 37) );break;end if (v190==(1 + 0)) then if (v192>=(1 -0)) then for v245,v246 in ipairs(v19:GetChildren()) do if v246:IsA(v7("\66\64\101\145","\235\18\33\23\229\158")) then local v248=0 + 0 ;local v249;while true do if (v248==(3 + 0)) then v13:SendKeyEvent(true,Enum.KeyCode.E,false,game);break;end if (0==v248) then v249=v246:FindFirstChild(v7("\96\168\206\163\89\183\200\175\73\138\211\180\93\170\213","\219\48\218\161"));if v249 then v249.HoldDuration=1480 -(641 + 839) ;end v248=914 -(910 + 3) ;end if (v248==(2 -1)) then wait(0.2 + 0 );v12=v246.CFrame * CFrame.new(0,1684 -(1466 + 218) ,0 + 0 ) ;v248=1150 -(556 + 592) ;end if (v248==(1 + 1)) then v11:SetPrimaryPartCFrame(v12);wait(0.2);v248=811 -(329 + 479) ;end end end end end if (v192==(854 -(174 + 680))) then v20=false;end v190=6 -4 ;end end break;end end end break;end end break;end end end);end});v50:AddButton({v7("\193\127\104\91\222\72\225\246\49\88\64\213\71\229\237\99\115","\128\132\17\28\41\187\47"),function() v12=CFrame.new( -(1329.8120119999999 -(396 + 343)),31.3067017,31.676727000000028 + 316 ,3 -2 ,1477 -(29 + 1448) ,1389 -(135 + 1254) ,0,1 + 0 ,0 + 0 ,0 -0 ,0 -0 ,4 -3 );v11:SetPrimaryPartCFrame(v12);wait(0.2 + 0 );v13:SendKeyEvent(true,Enum.KeyCode.E,false,game);wait(1527.2 -(389 + 1138) );local v86={[1 -0 ]=v7("\34\61\10\54\88\2\38\37\59\78\9","\61\97\82\102\90")};game:GetService(v7("\158\43\187\71\206\84\31\29\169\42\152\95\200\69\31\14\169","\105\204\78\203\43\167\55\126")):WaitForChild(v7("\132\185\48\27\7\23","\49\197\202\67\126\115\100\167")):WaitForChild(v7("\5\94\210\38\148\83\77","\62\87\59\191\73\224\54")):WaitForChild(v7("\213\13\248\203\226\16\227","\169\135\98\154")):FireServer(unpack(v86));end});local v51=v9:MakeTab({"Caixas Eletrônicos",v7("\200\118\40\87\232\63\201\223\120\54","\168\171\23\68\52\157\83")});v51:AddButton({"Roubar ATM's",function() for v125,v126 in ipairs(v28:GetChildren()) do v126.Basepart.ProximityPrompt.HoldDuration=0 + 0 ;v126.Basepart.ProximityPrompt.MaxActivationDistance=56 + 44 ;wait(0.2 + 0 );v12=v126.Basepart.CFrame * CFrame.new(0 + 0 ,1545 -(320 + 1225) ,2.5 -0 ) ;v11:SetPrimaryPartCFrame(v12);wait(0.4 + 0 );fireproximityprompt(v126.Basepart.ProximityPrompt);end end});v51:AddButton({v7("\196\116\242\172\55\109\163\253\127\253\168\44\63\136","\231\148\17\149\205\69\77"),function() task.spawn(function() local v129=1464 -(157 + 1307) ;while true do if (v129==(1859 -(821 + 1038))) then v20=true;while v20 do local v170=v19:GetChildren();local v171= #v170;if (v171>=(2 -1)) then for v193,v194 in ipairs(v19:GetChildren()) do if v194:IsA(v7("\176\166\213\239","\159\224\199\167\155\55")) then local v209=v194:FindFirstChild(v7("\199\225\51\202\254\254\53\198\238\195\46\221\250\227\40","\178\151\147\92"));if v209 then v209.HoldDuration=0 + 0 ;end wait(0.2 -0 );v12=v194.CFrame * CFrame.new(0 + 0 ,0 -0 ,1026 -(834 + 192) ) ;v11:SetPrimaryPartCFrame(v12);wait(0.2 + 0 );v13:SendKeyEvent(true,Enum.KeyCode.E,false,game);end end end if (v171==(0 + 0)) then v20=false;end wait(0.2 + 0 );end break;end end end);end});v51:AddButton({v7("\169\243\88\32\23\75\123\158\189\104\59\28\68\127\133\239\67","\26\236\157\44\82\114\44"),function() local v87=304 -(300 + 4) ;local v88;while true do if (v87==(1 + 0)) then wait(0.2 -0 );v13:SendKeyEvent(true,Enum.KeyCode.E,false,game);v87=364 -(112 + 250) ;end if (v87==0) then v12=CFrame.new( -(236.81201199999998 + 354),8.306701700000001 + 23 ,869.676727 -522 ,1 + 0 ,0 + 0 ,0 + 0 ,0 -0 ,1 + 0 ,0 + 0 ,0 + 0 ,0 -0 ,1489 -(1309 + 179) );v11:SetPrimaryPartCFrame(v12);v87=1 + 0 ;end if (v87==(1 + 1)) then wait(1414.2 -(1001 + 413) );v88={[2 -1 ]=v7("\9\33\217\87\47\45\193\120\43\61\221","\59\74\78\181")};v87=5 -2 ;end if (3==v87) then game:GetService(v7("\23\212\74\86\186\38\208\78\95\183\22\197\85\72\178\34\212","\211\69\177\58\58")):WaitForChild(v7("\150\246\106\240\253\216","\171\215\133\25\149\137")):WaitForChild(v7("\211\205\63\245\251\53\239","\34\129\168\82\154\143\80\156")):WaitForChild(v7("\183\189\49\9\77\92\144","\233\229\210\83\107\40\46")):FireServer(unpack(v88));break;end end end});local v52=v9:MakeTab({v7("\224\75\63\212\10\213","\101\161\34\82\182"),v7("\235\31\86\237\200\234\131\39\250","\78\136\109\57\158\187\130\226")});v52:AddParagraph({v7("\26\54\250\240\100\127\236\226\59\127\252\252\126\47\235\248\51\58\240\227\63\127\233\244\45\44\246\240\126\58\185\242\49\50\185\254\126\50\246\245\49\127\253\244\126\50\240\227\63\127\171\191","\145\94\95\153")});v52:AddButton({v7("\220\217\29\195\79\165\189\236\29\216\76\184\233\141\25\218\76\190\241\200","\215\157\173\116\181\46"),function() v21=true;end});v52:AddButton({v7("\17\177\152\243\206\60\162\138\224\154\20\189\134\240\213\33\244\134\253\216\60\184\142","\186\85\212\235\146"),function() v21=false;end});local v53=v52:AddToggle({[v7("\246\136\2\242\60","\56\162\225\118\158\89\142")]="Habilitar botão de ON/OFF",[v7("\120\0\198\174\55\212\72","\184\60\101\160\207\66")]=false});v53:Callback(function(v89) local v90=1906 -(1665 + 241) ;while true do if ((717 -(373 + 344))==v90) then v24=v89;if v24 then v36();elseif v26 then v26:Destroy();end break;end end end);local v54=v9:MakeTab({v7("\5\135\112\185\33\141\110\168","\220\81\226\28"),v7("\31\218\129\250\254\194","\167\115\181\226\155\138")});v54:AddSection(v7("\193\43\227\93\127\116","\166\130\66\135\60\27\17"));v54:AddButton({v7("\112\79\194\112\36\86\75\192\102\32\75\88\218\116\34\4\90\207\103\49\4\75\142\89\63\78\75\142\113\53\4\107\220\120\49\87","\80\36\42\174\21"),function() local v91=0 -0 ;while true do if (v91==(302 -(115 + 187))) then v12=CFrame.new( -(95.854996 + 29),9.023044599999999 + 23 ,1316.881866 -817 );v11:SetPrimaryPartCFrame(v12);break;end end end});v54:AddButton({v7("\122\21\59\127\90\2\54\116\93\0\56\104\90\17\37\58\94\17\37\123\14\31\119\74\65\3\35\117\14\20\50\58\105\17\36\117\66\25\57\123","\26\46\112\87"),function() local v92=1099 -(35 + 1064) ;while true do if ((0 + 0)==v92) then v12=CFrame.new(312.707809 -166 ,1.7656364000000018 + 30 ,898.716553 -459 );v11:SetPrimaryPartCFrame(v12);break;end end end});v54:AddButton({v7("\141\38\167\113\171\173\68\186\170\51\164\102\171\190\87\244\169\34\185\117\255\190\5\147\184\49\170\115\186\178","\212\217\67\203\20\223\223\37"),function() v12=CFrame.new( -(1922.281769 -(636 + 1030)),16.6875458 + 15 ,321.6261063 -223 );v11:SetPrimaryPartCFrame(v12);end});v54:AddButton({v7("\142\136\164\215\174\159\169\220\169\157\167\192\174\140\186\146\170\140\186\211\250\130\232\240\187\131\171\221","\178\218\237\200"),function() local v93=0 + 0 ;while true do if (v93==(221 -(55 + 166))) then v12=CFrame.new(21.752860999999996 + 87 ,4.487510700000001 + 32 ,57.5737019 -42 );v11:SetPrimaryPartCFrame(v12);break;end end end});v54:AddButton({v7("\130\176\234\213\162\167\231\222\165\165\233\194\162\180\244\144\166\180\244\209\246\180\166\250\185\180\234\216\179\167\239\209","\176\214\213\134"),function() local v94=0 -0 ;while true do if (v94==(1368 -(34 + 1334))) then v12=CFrame.new( -96.6770248,12.630315800000002 + 19 ,687.667328 -437 );v11:SetPrimaryPartCFrame(v12);break;end end end});v54:AddButton({v7("\192\168\186\209\188\68\88\250\190\166\219\186\66\88\230\237\166\213\186\87\25\251\237\152\228\139\22\93\241\237\147\218\188\68\92\243\172\164\148\140\95\87\252\168\191\198\167","\57\148\205\214\180\200\54"),function() local v95=1283 -(1035 + 248) ;while true do if (v95==(21 -(20 + 1))) then v12=CFrame.new( -(420.959656 + 172),17.3067017 + 14 ,666.812012 -(134 + 185) );v11:SetPrimaryPartCFrame(v12);break;end end end});v54:AddButton({"Teletransportar para a Área de PvP",function() local v96=1133 -(549 + 584) ;while true do if (0==v96) then v12=CFrame.new( -(1565.567871 -(314 + 371)),380.206352 -269 ,1118.603226 -(478 + 490) );v11:SetPrimaryPartCFrame(v12);break;end end end});v54:AddButton({"Teletransportar para a Estação de Trem",function() local v97=1172 -(786 + 386) ;while true do if (v97==(0 -0)) then v12=CFrame.new( -(1717.211456 -(1055 + 324)),1402.3535233 -(1093 + 247) , -(93.297272 + 11));v11:SetPrimaryPartCFrame(v12);break;end end end});v54:AddSection("Exército Brasileiro");v54:AddButton({"Teletransportar para o Exército Brasileiro (dentro)",function() local v98=0 -0 ;local v99;while true do if ((0 -0)==v98) then v99=0 -0 ;while true do if (v99==(0 -0)) then v12=CFrame.new( -(653.564667 -393),12.315551800000001 + 19 ,4777.7998 -2980 ,3 -2 ,354 -(5 + 349) ,0 -0 ,0 -0 ,1 + 0 ,0 -0 ,688 -(364 + 324) ,0 -0 ,1 -0 );v11:SetPrimaryPartCFrame(v12);break;end end break;end end end});v54:AddButton({"Teletransportar para o Exército Brasileiro (fora)",function() local v100=0 -0 ;while true do if ((0 + 0)==v100) then v12=CFrame.new( -58.8901863,129.6249809 -98 ,1062.38031 -398 );v11:SetPrimaryPartCFrame(v12);break;end end end});v54:AddSection("Aliança");v54:AddButton({"Teletransportar para a Aliança (dentro)",function() local v101=1268 -(1249 + 19) ;while true do if (v101==(0 + 0)) then v12=CFrame.new( -(4550.37061 -3381),1187.298706 -(686 + 400) ,761.718201 -(212 + 176) ,1 + 0 ,229 -(73 + 156) ,0 + 0 ,811 -(721 + 90) ,1 + 0 ,0 -0 ,0 -0 ,1901 -(484 + 1417) ,2 -1 );v11:SetPrimaryPartCFrame(v12);break;end end end});v54:AddButton({"Teletransportar para a Aliança (fora)",function() local v102=0 -0 ;while true do if (v102==(0 + 0)) then v12=CFrame.new( -(22.466430999999943 + 868),37.9588318 + 13 ,711.995117);v11:SetPrimaryPartCFrame(v12);break;end end end});v54:AddSection("Revolução Trabalhista");v54:AddButton({"Teletransportar para a Revolução Trabalhista (fora)",function() local v103=0 -0 ;while true do if ((0 + 0)==v103) then v12=CFrame.new(357.093536,10.022354100000001 + 21 ,1136.420471 -(152 + 701) ,1,0 -0 ,513 -(203 + 310) ,1993 -(1238 + 755) ,1 + 0 ,0,1534 -(709 + 825) ,0 -0 ,3 -2 );v11:SetPrimaryPartCFrame(v12);break;end end end});v54:AddButton({"Teletransportar para a Aliança (dentro)",function() local v104=864 -(196 + 668) ;while true do if (v104==(0 -0)) then v12=CFrame.new(1422.061646 -735 ,864.4687767 -(171 + 662) ,256.411301 -(4 + 89) ,3 -2 ,0 -0 ,0 -0 ,0,1 -0 ,0 + 0 ,0 -0 ,0 -0 ,1 + 0 );v11:SetPrimaryPartCFrame(v12);break;end end end});local v55=v43:AddToggle({[v7("\38\244\33\56\115","\22\114\157\85\84")]="Auto Farm Banco (AFK ✅)",[v7("\224\206\21\197\72\250\188","\200\164\171\115\164\61\150")]=false});v55:Callback(function(v105) Run_AFBA=v105;task.spawn(function() while Run_AFBA do wait(0.2 -0 );if (workspace.Map.Robberies.Bank.StatusDisplay.SurfaceGui.TextLabel.Text==v7("\159\214\38\119\183\145","\227\222\148\99\37")) then if (workspace.Map.Robberies.Bank.BankArea.Alarm.Playing==true) then while workspace.Map.Robberies.Bank.BankArea.Alarm.Playing do if  not Run_AFBA then break;end if  not v16 then v12=CFrame.new(147.2352448 -(103 + 1) ,1502.2101593 -(35 + 1451) ,1481.3578701 -(28 + 1425) ,1,1993 -(941 + 1052) ,0 + 0 ,0 + 0 ,1,1514 -(822 + 692) ,0 -0 ,0 + 0 ,1205 -(7 + 1197) );v11:SetPrimaryPartCFrame(v12);wait(0.2 + 0 );v12=CFrame.new(353.1759377 -(45 + 252) ,335.3620834 -(27 + 292) ,27.7989845 + 0 ,1 -0 ,0 + 0 ,0,0 -0 ,434 -(114 + 319) ,0 -0 ,0 -0 ,0 -0 ,1 -0 );v11:SetPrimaryPartCFrame(v12);wait(0.2 + 0 );local v205=workspace:FindFirstChild(v10.Name):WaitForChild(v7("\30\93\92\243\224\115\112\83\241","\153\83\50\50\150")).Handle.DataAttachment.BillboardGui.Frame.Money;local v206=tonumber(v205.Text:match(v7("\111\51\55\84\54\175\6\20","\45\61\22\19\124\19\203")));if (v206>=(5959 -1959)) then v12=CFrame.new( -(1236.8120119999999 -646),1994.3067017 -(556 + 1407) ,347.676727,1 + 0 ,1206 -(741 + 465) ,465 -(170 + 295) ,0 + 0 ,1 + 0 ,0 + 0 ,0 -0 ,1940 -(1642 + 298) ,1 + 0 );v11:SetPrimaryPartCFrame(v12);wait(0.2 + 0 );v13:SendKeyEvent(true,Enum.KeyCode.E,false,game);wait(0.2 + 0 );local v222={[1231 -(957 + 273) ]=v7("\226\29\1\249\7\115\173\226\19\30\253","\217\161\114\109\149\98\16")};game:GetService(v7("\32\37\40\112\181\119\19\52\61\120\143\96\29\50\57\123\185","\20\114\64\88\28\220")):WaitForChild(v7("\16\18\193\177\236\195","\221\81\97\178\212\152\176")):WaitForChild(v7("\255\226\16\244\14\200\244","\122\173\135\125\155")):WaitForChild(v7("\182\206\2\187\58\35\209","\168\228\161\96\217\95\81")):FireServer(unpack(v222));wait(0.2 + 0 );end else local v207=0 + 0 ;while true do if (v207==(972 -(357 + 615))) then v12=CFrame.new(23.1759377 + 33 ,60.3620834 -44 ,70.7989845 -43 ,2 -1 ,0 -0 ,0 -0 ,0 + 0 ,1781 -(389 + 1391) ,0 + 0 ,0 + 0 ,0 + 0 ,698 -(128 + 569) );v11:SetPrimaryPartCFrame(v12);v207=2 -1 ;end if (2==v207) then v11:SetPrimaryPartCFrame(v12);v16=false;break;end if (v207==(952 -(783 + 168))) then wait(40 -28 );v12=CFrame.new(151.2352448 -108 ,16.2101593 + 0 ,339.3578701 -(309 + 2) ,2 -1 ,1212 -(1090 + 122) ,0 + 0 ,0 -0 ,4 -3 ,0 + 0 ,1118 -(628 + 490) ,0 + 0 ,2 -1 );v207=9 -7 ;end end end end elseif (workspace.Map.Robberies.Bank.BankArea.Alarm.Playing==false) then local v195=774 -(431 + 343) ;local v196;local v197;local v198;while true do if (v195==(5 -2)) then wait(0.2 -0 );v12=CFrame.new(48.9868698 + 12 ,27.2101593 -11 ,6.679134400000002 + 35 ,1,1695 -(556 + 1139) ,15 -(6 + 9) ,0 + 0 ,1 + 0 ,169 -(28 + 141) ,0 + 0 ,0 -0 ,1 + 0 );v11:SetPrimaryPartCFrame(v12);v195=3 + 1 ;end if (v195==(1319 -(486 + 831))) then local v223=0 -0 ;while true do if (v223==(3 -2)) then v198.Parent=v11;v195=1 + 2 ;break;end if (v223==(0 -0)) then v197=v10:WaitForChild(v7("\32\8\164\93\173\229\20\162","\201\98\105\199\54\221\132\119"));v198=v197:WaitForChild(v7("\154\88","\204\217\108\227\65\98\85"));v223=1264 -(668 + 595) ;end end end if (v195==(4 + 0)) then wait(0.2 + 0 );workspace.Map.Robberies.Bank.VaultDoor.C4.Handle.ProximityPrompt.HoldDuration=0 -0 ;wait(290.2 -(23 + 267) );v195=5;end if (v195==0) then v12=CFrame.new( -(2865.370667 -(1129 + 815)),939.0120926 -(223 + 667) ,967.083923 -(371 + 16) ,1751 -(1326 + 424) ,0 -0 ,0 -0 ,0,119 -(88 + 30) ,0,0,771 -(720 + 51) ,2 -1 );v11:SetPrimaryPartCFrame(v12);wait(1776.2 -(421 + 1355) );v195=1 -0 ;end if (v195==(3 + 2)) then v13:SendKeyEvent(true,Enum.KeyCode.E,false,game);wait(0.5 -0 );v16=true;break;end if (v195==(1084 -(286 + 797))) then v196={[3 -2 ]=v7("\242\221\43\91\46\91\232\217\33\76","\55\187\177\78\60\79"),[1360 -(1233 + 125) ]=v7("\15\219\70","\224\77\174\63\139\38\175"),[4 -1 ]=v7("\167\21","\78\228\33\56")};game:GetService(v7("\252\123\162\15\140\205\127\166\6\129\253\106\189\17\132\201\123","\229\174\30\210\99")):WaitForChild(v7("\58\254\149\84\249\46","\89\123\141\230\49\141\93")):WaitForChild(v7("\193\116\251\3\4\79\224","\42\147\17\150\108\112")):WaitForChild(v7("\44\170\36\122\233\252\63\179\63\124\239\233\28\163\62","\136\111\198\77\31\135")):FireServer(unpack(v196));wait(0.2 + 0 );v195=441 -(397 + 42) ;end end end end end end);end);local v56=v9:MakeTab({v7("\123\240\197","\160\62\163\149\133\76"),v7("\211\185\8","\163\182\192\109\79")});local v57=v56:AddToggle({[v7("\0\47\20\204\240","\149\84\70\96\160")]=v7("\29\53\61\173\117\70\61\225\57\31\8\255\43","\141\88\102\109"),[v7("\151\86\204\113\15\49\65","\161\211\51\170\16\122\93\53")]=false});v57:Callback(function(v106) local v107=0;local v108;local v109;local v110;while true do if (v107==(802 -(24 + 776))) then function v110(v161) local v162=0 -0 ;local v163;local v164;local v165;while true do if (v162==(0 + 0)) then v163=1504 -(504 + 1000) ;v164=nil;v162=1 + 0 ;end if (v162==1) then v165=nil;while true do if (v163==(4 + 0)) then v165.BackgroundTransparency=786 -(222 + 563) ;v165.TextStrokeColor3=Color3.fromRGB(0 -0 ,0 + 0 ,190 -(23 + 167) );v165.TextStrokeTransparency=1799 -(690 + 1108) ;break;end if (v163==(1 + 1)) then v165=Instance.new(v7("\108\18\63\82\116\22\37\67\84","\38\56\119\71"));v165.Parent=v164;v165.Size=UDim2.new(1 + 0 ,848 -(40 + 808) ,1 + 0 ,164 -(149 + 15) );v163=11 -8 ;end if (v163==(1 + 0)) then local v215=0 + 0 ;while true do if (v215==(0 + 0)) then v164.Adornee=v161;v164.Size=UDim2.new(571 -(47 + 524) ,279 -179 ,0,33 + 17 );v215=2 -1 ;end if ((1 -0)==v215) then v164.AlwaysOnTop=true;v163=4 -2 ;break;end end end if (v163==(1726 -(1165 + 561))) then v164=Instance.new(v7("\100\115\88\2\49\73\123\70\10\20\83\115","\83\38\26\52\110"));v164.Name="x";v164.Parent=v161;v163=1 + 0 ;end if (v163==(1 + 2)) then v165.Text=v161.Name;v165.TextSize=10 + 0 ;v165.TextColor3=Color3.fromRGB(0 -0 ,789 -534 ,98 + 157 );v163=55 -(12 + 39) ;end end break;end end end if (Run_TE==true) then local v172=0;local v173;while true do if (v172==0) then v173=0 + 0 ;while true do if ((479 -(341 + 138))==v173) then v17=true;for v232,v233 in pairs(v108:GetPlayers()) do if (v233.Character and (v233~=v109)) then v110(v233.Character);end end break;end end break;end end elseif (Run_TE==false) then local v188=0 + 0 ;while true do if (v188==(0 -0)) then v17=false;for v225,v226 in pairs(v108:GetPlayers()) do if (v226.Character and (v226~=v109)) then if  not v17 then local v239=0;local v240;while true do if (v239==0) then v240=v226.Character;if v240:FindFirstChild("x") then v240.x:Destroy();end break;end end end end end break;end end end break;end if (v107==(1 + 0)) then local v155=326 -(89 + 237) ;while true do if (v155==(2 -1)) then v107=6 -4 ;break;end if (v155==(0 + 0)) then v109=v108.LocalPlayer;v110=nil;v155=1 -0 ;end end end if (v107==(881 -(581 + 300))) then Run_TE=v106;v108=game:GetService(v7("\203\162\179\49\254\188\161","\72\155\206\210"));v107=1221 -(855 + 365) ;end end end);local v58=v9:MakeTab({"Rádio",v7("\229\224\84\195\40\83\190\189","\54\147\143\56\182\69")});v58:AddTextBox({[v7("\248\128\242\76","\191\182\225\159\41")]="ID da música",[v7("\27\30\41\86\142\143\205\39\22\45\71\191\130\218\63","\162\75\114\72\53\235\231")]=v7("\168\53\67\235\71\7\204\51\4\203\119","\98\236\92\36\130\51"),[v7("\135\21\9\187\87\156\176\40\176","\80\196\121\108\218\37\200\213")]=false,[v7("\35\114\14\115\73\15\137\11","\234\96\19\98\31\43\110")]=function(v111) v27=v111;end});v58:AddButton({"Tocar música (Cliente)",function() local v112=0 + 0 ;while true do if (v112==(1235 -(1030 + 205))) then v37.SoundId=v7("\20\29\74\198\191\97\142\18\22\86\157\227\61","\235\102\127\50\167\204\18")   .. v27 ;v37:Play();break;end end end});local v59=v9:MakeTab({v7("\114\160\231\49\65\39\66\160\230","\78\48\193\149\67\36"),v7("\35\15\149\25\83\53","\33\80\126\224\120")});v59:AddButton({"Excluir barreiras (não reversível)",function() if v23 then v23:Destroy();end end});local v60=v9:MakeTab({v7("\223\173\17\210\85\232\167\17\132\110\233\187\6\214\74\237\172\12","\60\140\200\99\164"),v7("\148\241\22\48\167\149","\194\231\148\100\70")});v60:AddTextBox({[v7("\104\77\204\166","\168\38\44\161\195\150")]="Código do servidor",[v7("\176\240\131\117\53\224\185\26\132\249\144\66\53\240\162","\118\224\156\226\22\80\136\214")]="Digite o código",[v7("\97\226\92\129\80\218\92\152\86","\224\34\142\57")]=false,[v7("\253\166\201\209\113\240\94\5","\110\190\199\165\189\19\145\61")]=function(v113) v18=v113;end});v60:AddButton({v7("\255\229\99\250\138\213","\167\186\139\23\136\235"),function() local v114=0 -0 ;local v115;while true do if (v114==(0 + 0)) then v115={[1]=v7("\48\186\129\3","\109\122\213\232"),[2 + 0 ]=v18};game:GetService(v7("\220\242\178\60\231\244\163\36\235\243\145\36\225\229\163\55\235","\80\142\151\194")):WaitForChild(v7("\34\213\100\73\23\213","\44\99\166\23")):WaitForChild(v7("\78\242\36\57\39\161\111","\196\28\151\73\86\83")):WaitForChild(v7("\193\6\58\21\144\78\29\100\192\6\59\6\135\74","\22\147\99\73\112\226\56\120")):FireServer(unpack(v115));break;end end end});local v61=v9:MakeTab({v7("\144\124\246\247\130\160","\237\216\21\130\149"),v7("\145\95\74\94\162\204","\62\226\46\63\63\208\169")});v61:AddTextBox({[v7("\203\24\88\134","\62\133\121\53\227\127\109\79")]=v7("\36\21\63\244\216\166\173\80\16\51\181\254\167\182\18\27\42","\194\112\116\82\149\182\206"),[v7("\9\164\77\27\197\234\1\53\172\73\10\244\231\22\45","\110\89\200\44\120\160\130")]=v7("\159\194\70\71\77\66\52","\45\203\163\43\38\35\42\91"),[v7("\241\137\217\34\149\157\81\202\145","\52\178\229\188\67\231\201")]=false,[v7("\2\64\92\8\245\93\32\42","\67\65\33\48\100\151\60")]=function(v116) v31=Vector3.new(v116,v116,v116);end});v61:AddButton({v7("\254\243\167\206\242\205\167\134\209\231\253\232\182","\147\191\135\206\184"),function() for v130,v131 in pairs(game.Players:GetPlayers()) do if (v131.Character and (v131~=game.Players.LocalPlayer)) then if v131.Character.HumanoidRootPart then local v174=v131.Character.HumanoidRootPart;v174.Size=v31;v174.CanCollide=false;v174.Transparency=0.8 + 0 ;end end end end});v61:AddButton({v7("\160\45\181\192\204\90\164\133\58\230\233\209\71\144\139\48","\210\228\72\198\161\184\51"),function() for v132,v133 in pairs(game.Players:GetPlayers()) do if (v133~=game.Players.LocalPlayer) then v133.Character.HumanoidRootPart.Size=Vector3.new(2 + 2 ,5 + 0 ,4 + 0 );end end end});local v62=v9:MakeTab({v7("\18\64\224\19\124\220\50","\174\86\41\147\112\19"),v7("\114\14\139\4","\203\59\96\237\107\69\111\113")});v62:AddDiscordInvite({[v7("\10\23\161\228","\183\68\118\204\129\81\144")]=v7("\61\137\61\195\4\131\2\237\88\241\9\194\61\168\98\242\14\144\78\130\118\226\2\129\7\172\124","\226\110\205\16\132\107"),[v7("\199\204\231\214","\33\139\163\128\185")]=v7("\69\90\28\223\68\75\1\202\94\92\94\145\24\9\85\139\1\10\82\140\6\1\83\140\7\9\82\141","\190\55\56\100"),[v7("\127\161\42\23\7\230","\147\54\207\92\126\115\131")]=v7("\5\37\33\109\30\36\66\126\49\116\30\125\2\35\49\51\10\121\66\8\61\108\27\115\38\98\32\37\26","\30\109\81\85\29\109")});
