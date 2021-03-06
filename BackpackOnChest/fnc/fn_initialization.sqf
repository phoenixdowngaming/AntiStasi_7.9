/*
 * Author: DerZade
 * Description: Initalize the BOC-Mod
 *
 * Arguments:
 * NONE
 *
 * Return Value:
 * NONE
 *
 * Example:
 *  call ZADE_BOC_fnc_Initialization;
 *
 * Public: No
 */
_action = ["Zade_Backpack_onChest", "Obie Backpack on chest", "", {[_this select 0] call Zade_BOC_fnc_BackpackOnChest;}, {(_this select 0) getVariable ["Zade_ChestBackpack",""] == "" and backpack (_this select 0) != ""}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "ACE_Equipment"], _action] call ace_interact_menu_fnc_addActionToObject;
_action = ["Zade_Backpack_onBack", "Obie Backpack on back", "", {[_this select 0] call Zade_BOC_fnc_BackpackOnBack;}, {(_this select 0) getVariable ["Zade_ChestBackpack",""] != "" and backpack (_this select 0) == ""}] call ace_interact_menu_fnc_createAction;
[player, 1, ["ACE_SelfActions", "ACE_Equipment"], _action] call ace_interact_menu_fnc_addActionToObject;
