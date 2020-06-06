-- Angra_Mainyu_Lua
-- Author: HaoJun0823
-- DateCreated: 6/6/2020 10:02:44 AM
--------------------------------------------------------------
print("Angra Mainyu Ability Activited!");

local AttackerRan = 1431908133;
local DefenderRan = -1632097141;
local IDRan = 1472654640;
local DamageRan = -958805242;
local AttackDamageMul:number = 0.5;


function Angra_Mainyu_Attack(UnitTable)
	
	local AttackerPlayerID = UnitTable[AttackerRan][IDRan]["player"];
    local DefenderPlayerID = UnitTable[DefenderRan][IDRan]["player"];
	
	local AttackerUnitID = UnitTable[AttackerRan][IDRan]["id"];
	local DefenderUnitID = UnitTable[DefenderRan][IDRan]["id"];

	--print("Attacker:"..AttackerPlayerID);
	--print("Defender:"..DefenderPlayerID);
	local aPlayerConfig = PlayerConfigurations[AttackerPlayerID];
	local dPlayerConfig = PlayerConfigurations[DefenderPlayerID];
	if checkLeader(dPlayerConfig:GetLeaderTypeName()) then
	
		    local PlayerDefender = Players[DefenderPlayerID];
			local dUnits = PlayerDefender:GetUnits();
			local PlayerAttacker = Players[AttackerPlayerID];
			local aUnits = PlayerAttacker:GetUnits();
			local DamageAmountX:number = UnitTable[AttackerRan][DamageRan] * AttackDamageMul;
			local DamageAmount:number = UnitTable[DefenderRan][DamageRan] + DamageAmountX;
			for ii, aUnit in aUnits:Members() do
				if aUnit:GetID() == AttackerUnitID then
							for ii, dUnit in dUnits:Members() do
			            	if dUnit:GetID() == DefenderUnitID then
				                local remaining = (100 - aUnit:GetDamage());
									if (remaining - DamageAmount < 0) then
							     	UnitManager.Kill(aUnit, false);
									else
									aUnit:ChangeDamage(DamageAmount);										
									end
								return
								end					
							end								
				end
				
			end


	end
	
end

Events.Combat.Add(Angra_Mainyu_Attack);



function checkLeader(str)

	  if str == "LEADER_FHA_ANGRA_MAINYU" then
	  return true
	  else
	  return false
	  end

end


